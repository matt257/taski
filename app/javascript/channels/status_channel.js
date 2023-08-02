import consumer from "channels/consumer"

let channel = consumer.subscriptions.create("StatusChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) { 
    console.log(data.message); 
    const logElement = document.querySelector("#status-log");
    const newMessage = document.createElement("p");
    newMessage.innerText = data.message;
    logElement.appendChild(newMessage);
  },

  speak(message) {
    this.perform('speak', { message: message });
  }
});

document.getElementById('new_message').addEventListener('submit', function(e) {
  e.preventDefault();
  const messageInput = document.getElementById('message_content');
  const message = messageInput.value;
  channel.speak(message);
  messageInput.value = '';
});
