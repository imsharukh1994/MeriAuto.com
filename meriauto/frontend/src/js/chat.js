const chatContainer = document.getElementById('chat-container');
const messageInput = document.getElementById('message-input');
const sendButton = document.getElementById('send-button');
const messagesList = document.getElementById('messages-list');

// Function to send a message
function sendMessage() {
    const message = messageInput.value.trim();
    if (message) {
        const messageData = {
            senderId: currentUser.id,
            receiverId: currentChatUser.id,
            message: message,
            timestamp: new Date().toISOString()
        };

        // Call API to send message
        fetch('/api/messages', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': `Bearer ${currentUser.token}`
            },
            body: JSON.stringify(messageData)
        })
        .then(response => response.json())
        .then(data => {
            displayMessage(data);
            messageInput.value = '';
        })
        .catch(error => console.error('Error sending message:', error));
    }
}

// Function to display a message
function displayMessage(message) {
    const messageElement = document.createElement('li');
    messageElement.textContent = `${message.sender.name}: ${message.message}`;
    messagesList.appendChild(messageElement);
}

// Event listener for send button
sendButton.addEventListener('click', sendMessage);

// Function to load chat messages
function loadMessages() {
    fetch(`/api/messages/${currentChatUser.id}`, {
        headers: {
            'Authorization': `Bearer ${currentUser.token}`
        }
    })
    .then(response => response.json())
    .then(messages => {
        messages.forEach(displayMessage);
    })
    .catch(error => console.error('Error loading messages:', error));
}

// Load messages on page load
loadMessages();