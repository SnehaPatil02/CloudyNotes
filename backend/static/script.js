const API_URL = "http://localhost:3000";
let currentFile = "";
let debounceTimer;

var easyMDE;

function set_editor(value, toolbar) {
    document.querySelectorAll('.EasyMDEContainer').forEach(el => el.remove());
    if (toolbar) {
        easyMDE = new EasyMDE({
            autofocus: false, element: document.getElementById('editor')
        });
    } else {
        easyMDE = new EasyMDE({
            toolbar: false,
            
            autofocus: false, element: document.getElementById('editor')
            
        });
    easyMDE.codemirror.setOption('readOnly', true);
    }

   
    easyMDE.codemirror.on("change", () => {
        clearTimeout(debounceTimer); // Clear the previous timer
        debounceTimer = setTimeout(() => {
            content = easyMDE.value();
            console.log("content: '" + content + "'");

            if (content !== "") {
                toggleSaveChangesButton(true);
                edit_file(); // Call your function after 10 seconds of no changes
            }
            else {

                toggleSaveChangesButton(false);
            }

        }, 1000); // 10000 ms = 10 seconds
    });
    if (value != null) {
        easyMDE.value(value)
    }

}
set_editor(null, true);

function toggle_button_edit(){
    var edit = document.getElementById('edit-read-toggle').checked;
    if(edit){
        content = easyMDE.value();
        set_editor(content, false);
        console.log("Toggle button read");
    }else {
        content = easyMDE.value();
        set_editor(content, true);
        console.log("Toggle button edit");
    }
   
}
 document.getElementById("edit-read-toggle").addEventListener("click", toggle_button_edit);

function toggleSaveChangesButton(makeVisible) {
    //input 
    if (makeVisible) {
        document.getElementById("saveChanges").style.display = 'block';
        document.getElementById("generateContentByTemplateId").style.display = 'none';
    } else {
        document.getElementById("saveChanges").style.display = 'none';
        document.getElementById("generateContentByTemplateId").style.display = 'block';
    }
}

function rsplit(str) {
    let parts = str.split(" ");
    return parts.slice(0, -1).join(" ");
}



// Update emoji
async function updateEmoji(title, emojiSpan) {
    let newEmoji = prompt("Enter new emoji:", emojiSpan.textContent);
    if (newEmoji) {
        emojiSpan.textContent = newEmoji;
        await fetch(`${API_URL}/update-emoji`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ title: title.replace(".md", ""), emoji: newEmoji })
        });
    }
}

async function deleteNotes(title) {
    console.log(`deleted ${title}`);
    response = confirm(`Do you want to delete this file?\n  ${title}`);

    if (response) {
        console.log(`deleting ${title}`);
        // - add code here to send http request
        // - console log response

        const response = await fetch(`${API_URL}/delete_file?title=${encodeURIComponent(title)}`, {
            method: "DELETE"
        });
        console.log(`deleted ${title}`);
    }
    loadFiles();

}

async function deleteFolder(name) {
    response = confirm(`Do you want to delete this folder?\n ${name}`);

    if (response) {
        console.log(`deleting ${name}`);

        const response = await fetch(`${API_URL}/delete_folder?name=${encodeURIComponent(name)}`, {
            method: "DELETE"
        });
        console.log(`deleted`);
    }
    loadFiles();
}

// Load file list
async function loadFiles() {
    // return

    const response = await fetch(`${API_URL}/get_data`);
    const data = await response.json();

    data.notes.reverse();

    console.log("Response: ", data)
    if (!Array.isArray(data.notes)) {
        console.error("Error: Expected an array but got:", data);
        return; // Stop execution if the format is incorrect
    }

    const sidebar = document.getElementById("sidebar");
    sidebar.innerHTML = "";

    sidebar.style.width = "13vw";

    let folders = {};

    // Create folders and assign buttons/contents
    data.notes.forEach(fileObj => {
        if (fileObj.folder_id == 1) {
            return; // Skip folder_id 1
        }
        if (fileObj.folder_id in folders) {
            return; // Skip if folder is already added
        }

        const folderButton = document.createElement("button");
        folderButton.className = "collapsible";
        folderButton.innerHTML = fileObj.folder_name;

        const folderContent = document.createElement("div");
        folderContent.style.display = "none";
        const folder_items = [folderButton, folderContent];
        folders[fileObj.folder_id] = folder_items;
    });

    for (const [key, value] of Object.entries(data.folders)) {

        if (key == 1) {
            continue; // Skip folder_id 1
        }
        if (key in folders) {
            continue; // Skip if folder is already added
        }

        const folderButton = document.createElement("button");
        folderButton.className = "collapsible";
        folderButton.innerHTML = value;

        const folderContent = document.createElement("div");
        folderContent.style.display = "none";
        const folder_items = [folderButton, folderContent];
        folders[key] = folder_items;
    };
    console.log("basic done");

    // Create file entries and add them to their folders
    data.notes.forEach(fileObj => {
        if (fileObj.folder_id == 1) {
            return; // Skip folder_id 1
        }

        // Create container for file
        const fileContainer = document.createElement("div");
        fileContainer.className = "flex items-center p-2 hover:bg-gray-300 cursor-pointer";
        fileContainer.style = "border-radius: 10px";

        // Emoji element
        // const emojiSpan = document.createElement("span");
        // emojiSpan.textContent = fileObj.emoji;
        // emojiSpan.className = "text-xl cursor-pointer";
        // emojiSpan.onclick = () => updateEmoji(fileObj.title, emojiSpan);

        // File title
        const titleSpan = document.createElement("span");
        titleSpan.textContent = fileObj.title;
        titleSpan.onclick = () => loadFile(fileObj.title);

        // Delete button
        const delbut = document.createElement("button");
        delbut.innerHTML = `<i class="fa fa-trash-o"></i>`;  // Trash icon
        delbut.className = "text-red-500 cursor-pointer p-1";  // Styling
        delbut.onclick = () => deleteNotes(fileObj.title);

        // Append file elements to the container
        // fileContainer.appendChild(emojiSpan);
        fileContainer.appendChild(titleSpan);
        fileContainer.appendChild(delbut);

        // Add the file container to the appropriate folder's content
        folders[fileObj.folder_id][1].appendChild(fileContainer);
    });

    // Append folders and their contents to the sidebar
    Object.values(folders).forEach(folder_items => {
        sidebar.appendChild(folder_items[0]); // Append folder button
        sidebar.appendChild(folder_items[1]); // Append folder content
    });


    data.notes.forEach(fileObj => {
        if (fileObj.folder_id != 1) {
            return;
        }
        // Create container for file
        let fileContainer = document.createElement("div");
        fileContainer.className = "flex items-center p-2 hover:bg-gray-300 cursor-pointer";

        // Emoji element
        // let emojiSpan = document.createElement("span");
        // emojiSpan.textContent = fileObj.emoji;
        // emojiSpan.className = "text-xl cursor-pointer";
        // emojiSpan.onclick = () => updateEmoji(fileObj.title, emojiSpan);

        // File title
        let titleSpan = document.createElement("span");
        titleSpan.textContent = fileObj.title;
        titleSpan.onclick = () => loadFile(fileObj.title);

        // Delete button
        let delbut = document.createElement("button");
        delbut.innerHTML = `<i class="fa fa-trash-o"></i>`;  // Trash icon
        delbut.className = "text-red-500 cursor-pointer p-1";  // Styling
        delbut.onclick = () => deleteNotes(fileObj.title);

        // fileContainer.appendChild(emojiSpan);
        fileContainer.appendChild(titleSpan);
        fileContainer.appendChild(delbut);
        sidebar.appendChild(fileContainer);
    });

    var coll = document.getElementsByClassName("collapsible");
    var i;

    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function () {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.display === "block") {
                content.style.display = "none";
            } else {
                content.style.display = "block";
            }
        });
    }
}

async function loadFileByID(id) {
    // endpoint to get path based on id
    response = await fetch(`${API_URL}/get_path?chunk_id=${id}`);
    data = await response.json();
    path = data[0];
    await loadFile(path);
    chunk_part = id.split("-")[2];
    console.log(chunk_part);
    moveCursorByCharacterOffset(512 * chunk_part - (chunk_part * 20));
    easyMDE.codemirror.focus();
}
function moveCursorByCharacterOffset(charOffset) {
    // Get the CodeMirror instance
    const cm = easyMDE.codemirror;

    // Get all text in the editor
    const text = cm.getValue();

    // Make sure the character offset is within bounds
    charOffset = Math.max(0, Math.min(text.length, charOffset));

    // Walk through the text line by line to find the position
    let currentLine = 0;
    let currentChar = 0;

    const lines = text.split('\n');
    for (const line of lines) {
        if (charOffset <= line.length) {
            currentChar = charOffset;
            break;
        }
        charOffset -= (line.length + 1); // +1 for the newline character
        currentLine++;
    }

    // Move the cursor to the desired character offset
    cm.setCursor({ line: currentLine, ch: currentChar });
}

// Load file content
async function loadFile(path) {
    try {
        const response = await fetch(`${API_URL}/read?path=${path}`);
        const data = await response.json();

        console.log("API Response:", data); // Debugging output
        console.log("Type of data.content:", typeof data.content);

        if (!data || typeof data !== "object" || data.content == null) {
            console.error("Error: No content found in response", data);
            easyMDE.value(""); // Show empty editor
            toggleSaveChangesButton(false);
            currentFile = path;
            return;
        } else {
            toggleSaveChangesButton(true);
        }

        let markdownContent = String(data.content);  // Ensure it's a string

        if (markdownContent.trim() === "") {
            toggleSaveChangesButton(false);

        }
        else {
            toggleSaveChangesButton(true);
        }

        easyMDE.value(markdownContent);
        currentFile = path;

    } catch (error) {
        console.error("Error loading file:", error);
    }

    loadFiles();
}

async function generatedContent() {
    console.log("generate");
    inputText = document.getElementById("inputText").value;
    templateId = document.getElementById("optionSelect").value;
    const response = await fetch(`${API_URL}/generateContent`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ text: inputText, template_id: templateId })
    });

    const data = await response.json();
    console.log("API Response: ", data)
    easyMDE.value(data);

}
document.getElementById("generateBtn").addEventListener("click", generatedContent);

async function edit_file() {
    console.log("inside edit");

    content = easyMDE.value();


    await fetch(`${API_URL}/update`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ title: currentFile, content: content })
    });
}
document.getElementById("saveChanges").addEventListener("click", edit_file);


// Create a new note
async function createNewNote() {
    let noteTitle = prompt("Enter note title:");
    if (!noteTitle) return; // Cancel if user didn't enter anything

    // let fileName = noteTitle.replace(/\s+/g, "_") +" "+ Math.floor(Date.now() / 1000) + ".md"; // Convert spaces to underscores
    // let filePath = fileName; // Assuming we save directly in ./data

    // Send request to backend to create file
    await fetch(`${API_URL}/save`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ title: noteTitle, content: "" })
    });

    loadFiles(); // Refresh sidebar
}

// Attach event listener to "New Note" button
document.getElementById("newNoteBtn").addEventListener("click", createNewNote);

async function addFolder() {
    let folderName = prompt("Enter folder name:");
    if (!folderName) return;

    await fetch(`${API_URL}/addFolder`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ name: folderName })
    });

    console.log("folder created")
    loadFiles();

}
document.getElementById("addFldBtn").addEventListener("click", addFolder);

// Auto-save on edit
document.getElementById("editor").addEventListener("input", async () => {
    console.log("giving input");
    if (!currentFile) return;
    const content = document.getElementById("editor").value;

    await fetch(`${API_URL}/save`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ path: currentFile, content }),
    });

});



function updateRightSidebar(content) {
    document.getElementById("right-sidebar-content").innerHTML = marked.parse(`${content}`);
    loadFiles();
}

document.querySelectorAll("textarea").forEach(function (textarea) {
    textarea.style.height = textarea.scrollHeight + "px";
    textarea.style.overflowY = "hidden";

    textarea.addEventListener("input", function () {
        this.style.height = "auto";
        this.style.height = this.scrollHeight + "px";
    });
});

// Initial load
loadFiles();
