
var input = document.getElementById("input-box");
var arrow = document.getElementById("fill-arrow");
var sendButton = document.getElementById("send-button");


sendButton.disabled = true;

function adjustTextareaHeight() {
  const textarea = document.getElementById("input-box");

}

async function sendButtonDisable() {
  if (input.value.trim() === "") {
    arrow.style.fill = "#9e9e9e"
    sendButton.disabled = true;
  } else {
    arrow.style.fill = "rgb(120, 179, 191)"
    sendButton.disabled = false;
  }
}

input.addEventListener("input", sendButtonDisable)

document.getElementById("input-box").addEventListener("keypress", function (event) {
  if (event.key === "Enter" && !event.shiftKey) {
    event.preventDefault(); // Prevent newline
    document.getElementById("send-button").click(); // Trigger send
  }
});


class chat {
  constructor(text, isBot, chunk_id=null) {
    this.text = text;
    this.isBot = isBot;
    this.chunk_id = chunk_id;
  }
}
var conversation = [
  // new chat("Hello :)", isBot = true),
  // new chat("Hi!", isBot = false),
  // new chat("How are you?", isBot = true),
];

var llm_history = null
var send_context = false;
var web_search = false;
var db_Search = false;

async function sendChat() {
  if (input.value.trim() === "") {
    return;
  }
  conversation.push(new chat(input.value.trim(), isBot = false));
  text = input.value.trim();
  input.value = null;

  if (send_context) {
    body = JSON.stringify({ chat: [{ text: text }], llm_history: llm_history, context: easyMDE.value(), web_search :false });
  }
  else if(web_search){
    body = JSON.stringify({chat: [{ text: text }], llm_history:llm_history, web_search: web_search})
  }else if(db_Search){
    
    body = JSON.stringify({chat: [{text: text }], llm_history: llm_history, db_search: db_Search })
  }
  else {
    body = JSON.stringify({ chat: [{ text: text }], llm_history: llm_history });
  }
  response = await fetch(`${API_URL}/chat`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: body
  });
  const data = await response.json();
  llm_history = data.llm_history;
 
  if (db_Search ) {
    data.forEach(d => {
      conversation.push(new chat(d.bot_message, isBot = true, chunk_id=d.chunk_id));
    });
  } else {
    conversation.push(new chat(data.bot_message, isBot = true));
  }

  const conversationData = [];
  const conversationBox = document.getElementById("conversation-box");
  conversation.forEach(message => {
    if (message.isBot == true) {
      botHtml = `<div class="bubble bot">
                                <div class="image"></div>
                                <p> 
                            `
      
      if(message.chunk_id != null){
        botHtml += `<button onclick="loadFileByID('${message.chunk_id}')">Open</button>`;
      }
      botHtml = botHtml + `${message.text}</p></div>`;
              
      conversationData.push(botHtml);
    } else {
      conversationData.push(`<div class="bubble user">
        <p>${message.text}</p>
    </div>`)

    }
  })
  conversationBox.innerHTML = conversationData.join('');


}
arrow.addEventListener("click", sendChat)

async function toggleFunction() {

  let toggleButton = document.getElementById("toggle-button");

  let isOn = toggleButton.classList.toggle("light-on"); // Toggle class

  // Change button background based on state
  toggleButton.style.background = isOn ? "gold" : "lightgray";
  send_context = isOn;

  console.log("toggle button click");
}
async function resetTextArea(){
  document.getElementById("input-box").value="";
  llm_history = [];
  conversation = [];
  document.getElementById("conversation-box").innerHTML = "";
}

async function webSearch(){
  let searchButton = document.getElementById("search-button");
  let isOn = searchButton.classList.toggle("light-on");
  searchButton.style.background = isOn ? "gold" : "lightgray";
  web_search = isOn;

  console.log("Searching.....!");
}

async function dbSearch(){
  let dbSearchButton = document.getElementById("dbSearch-button");
  let isOn = dbSearchButton.classList.toggle("light-on");
  dbSearchButton.style.background = isOn ? "gold" : "lightgray";
  db_Search = isOn;

  console.log("DB Search is ...."+ db_Search)
}
