const API_URL = "http://localhost:3000";
let currentFile = "";
const easyMDE = new EasyMDE({
    autofocus: false,element: document.getElementById('editor')});


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

async function deleteNotes(title){
    console.log(`deleted ${title}`);
    response = confirm(`Do you want to delete this file?\n  ${title}`);
    
    if (response){
        console.log(`deleting ${title}`);
        // - add code here to send http request
    // - console log response

    const response = await fetch(`${API_URL}/delete_file?title=${encodeURIComponent(title)}`, {
        method: "DELETE"
    });
    console.log(`deleted ${title}`);
    }

}

async function deleteFolder(name){
    response = confirm(`Do you want to delete this folder?\n ${name}`);

    if(response){
        console.log(`deleting ${name}`);

    const response = await fetch(`${API_URL}/delete_folder?name=${encodeURIComponent(name)}`, {
        method: "DELETE"
    });
    console.log(`deleted`);
    }
}

// Load file list
async function loadFiles() {
    
        const response = await fetch(`${API_URL}/get_data`);
        const data = await response.json();


        console.log("Response: ", data)
        if (!Array.isArray(data.notes)) {
            console.error("Error: Expected an array but got:", data);
            return; // Stop execution if the format is incorrect
        }

        const sidebar = document.getElementById("sidebar");
        sidebar.innerHTML = "";

        sidebar.style.width="13vw";
        
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
            if (fileObj.folder_id !=1){
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
          coll[i].addEventListener("click", function() {
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

    

// Load file content
async function loadFile(path) {
    try {
        const response = await fetch(`${API_URL}/read?path=${path}`);
        const data = await response.json();

        console.log("API Response:", data); // Debugging output
        console.log("Type of data.content:", typeof data.content);

        if (!data || typeof data !== "object" || !data.content) {
            console.error("Error: No content found in response", data);
            return;
        }
        let markdownContent = String(data.content);  // Ensure it's a string

        easyMDE.value(markdownContent);
        currentFile = path;

    } catch (error) {
        console.error("Error loading file:", error);
    }
}


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
        body: JSON.stringify({ title: noteTitle, content:""})
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
        body: JSON.stringify({ name: folderName})
    });

    console.log("folder created")
    
}
document.getElementById("addFldBtn").addEventListener("click", addFolder);

// Auto-save on edit
document.getElementById("editor").addEventListener("input", async () => {
    if (!currentFile) return;
    const content = document.getElementById("editor").value;
    await fetch(`${API_URL}/save`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ path: currentFile, content }),
    });
});

// Handle search queries
// document.getElementById("searchBox").addEventListener("keypress", async (event) => {
//     if (event.key === "Enter") {
//         const query = event.target.value;
//         event.target.value = ""; // Clear input

//         const response = await fetch(`${API_URL}/question`, {
//             method: "POST",
//             headers: { "Content-Type": "application/json" },
//             body: JSON.stringify({ query })
//         });

//         const data = await response.json();
//         console.log("Search Results:", data);
//     }
// });

function updateRightSidebar(content) {
    document.getElementById("right-sidebar-content").innerHTML = marked.parse(`${content}`);
}

document.querySelectorAll("textarea").forEach(function(textarea) {
    textarea.style.height = textarea.scrollHeight + "px";
    textarea.style.overflowY = "hidden";
  
    textarea.addEventListener("input", function() {
      this.style.height = "auto";
      this.style.height = this.scrollHeight + "px";
    });
  });  

// document.getElementById("searchBox").addEventListener("keypress", async (event) => {
//     if (event.key === "Enter") {
//         const query = event.target.value.trim(); // Get search text
//         if (!query) return; // Ignore empty searches
//         event.target.value = ""; // Clear input
//         // console.log(query)
//         // Show loading state
//         updateRightSidebar(query, "⏳ Fetching answer...");

//         try {
//             const response = await fetch(`${API_URL}/question`, {
//                 method: "POST",
//                 headers: { "Content-Type": "application/json" },
//                 body: JSON.stringify({ query })
//             });

//             const data = await response.json();
//             updateRightSidebar(`${data.response}`);
//         } catch (error) {
//             console.error("Error fetching answer:", error);
//             updateRightSidebar(query, " Error fetching response.");
//         }
//     }
// });


// Initial load
loadFiles();
