const API_URL = "http://127.0.0.1:8000";
let currentFile = "";

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

async function deleteNotes(path){
    console.log(`deleted ${path}`);
    response = confirm(`Do you want to delete this file?\n  ${path}`);
    
    if (response){
        console.log(`deleting ${path}`);
        // - add code here to send http request
    // - console log response

    const response = await fetch(`${API_URL}/delete_file?path=${encodeURIComponent(path)}`, {
        method: "DELETE"
    });
    console.log(`deleted ${path}`);
    }

}

// Load file list
async function loadFiles() {
    const response = await fetch(`${API_URL}/files`);
    const data = await response.json();
    const sidebar = document.getElementById("sidebar");
    sidebar.innerHTML = "";

    data.forEach(folder => {
        folder.files.forEach(fileObj => {
            let path = folder.path === "." ? fileObj.name : `${folder.path}/${fileObj.name}`;

            // Create container for file
            let fileContainer = document.createElement("div");
            fileContainer.className = "flex items-center p-2 hover:bg-gray-300 cursor-pointer";

            // Emoji element
            let emojiSpan = document.createElement("span");
            emojiSpan.textContent = fileObj.emoji;
            emojiSpan.className = "text-xl cursor-pointer";
            emojiSpan.onclick = () => updateEmoji(fileObj.name, emojiSpan);

            // File title
            let titleSpan = document.createElement("span");
            titleSpan.textContent = rsplit(fileObj.name);
            titleSpan.onclick = () => loadFile(path);

            // File title
            let delbut = document.createElement("button");
            delbut.innerHTML = `<i class="fa fa-trash-o"></i>`;  // Add trash icon
            delbut.className = "text-red-500 cursor-pointer p-1";  // Add styling
            delbut.onclick = () => deleteNotes(path);

            fileContainer.appendChild(emojiSpan);
            fileContainer.appendChild(titleSpan);
            fileContainer.appendChild(delbut);
            sidebar.appendChild(fileContainer);
        });
    });
}

// Load file content
async function loadFile(path) {
    const response = await fetch(`${API_URL}/read?path=${path}`);
    const data = await response.json();
    document.getElementById("editor").innerHTML =marked.parse( data.content);
    currentFile = path;
}


// Create a new note
async function createNewNote() {
    let noteTitle = prompt("Enter note title:");
    if (!noteTitle) return; // Cancel if user didn't enter anything

    let fileName = noteTitle.replace(/\s+/g, "_") +" "+ Math.floor(Date.now() / 1000) + ".md"; // Convert spaces to underscores
    let filePath = fileName; // Assuming we save directly in ./data

    // Send request to backend to create file
    await fetch(`${API_URL}/save`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ path: filePath, content:""})
    });

    loadFiles(); // Refresh sidebar
}

// Attach event listener to "New Note" button
document.getElementById("newNoteBtn").addEventListener("click", createNewNote);


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

document.getElementById("searchBox").addEventListener("keypress", async (event) => {
    if (event.key === "Enter") {
        const query = event.target.value.trim(); // Get search text
        if (!query) return; // Ignore empty searches
        event.target.value = ""; // Clear input
        // console.log(query)
        // Show loading state
        updateRightSidebar(query, "⏳ Fetching answer...");

        try {
            const response = await fetch(`${API_URL}/question`, {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({ query })
            });

            const data = await response.json();
            updateRightSidebar(`${data.response}`);
        } catch (error) {
            console.error("Error fetching answer:", error);
            updateRightSidebar(query, " Error fetching response.");
        }
    }
});


// Initial load
loadFiles();
