document.addEventListener("DOMContentLoaded", function () {
    const dataFromDjango = JSON.parse(document.getElementById("data").textContent);
    const django_data = dataFromDjango.map(item => item.fields);
    console.log(django_data)
    console.log(sessionStorage.getItem('user_id'))
    const input = document.getElementById("input");
    const message = input.value;
    if (message != '') {
        message.addEventListener('keydown', myFunction);
    }
});
let userMessg = [];
function myFunction(event) {
    if (event.key === 'Enter') {
        sendMessage();
    }
}
async function sendMessage() {
    const dataFromDjango = JSON.parse(document.getElementById("data").textContent);
    const django_data = dataFromDjango.map(item => item.fields);
    const input = document.getElementById("input");
    const message = input.value;
    if (message !== '') {
        displayData(message, django_data);
        input.value = ''
    }
}
function findValue(out) {
    const output_list = out.map(outpt_list => outpt_list.content);
    const max = output_list.length
    if (max > 1) {
        const randomIndex = Math.floor(Math.random() * max);
        responseText = output_list[randomIndex];
    }
    else {
        responseText = output_list
    }
    return responseText

}
function displayData(message, django_data) {
    const output = document.getElementById('output');
    const messageContainer = document.createElement('div');
    messageContainer.className = 'message-container';
    const userMessageDiv = document.createElement('div');
    userMessageDiv.className = 'user-message';
    userMessageDiv.textContent = message;
    messageContainer.appendChild(userMessageDiv);
    let responseText = '';
    const messageExists = django_data.some(itm => itm.content === message);
    if (message !== '') {
        if (messageExists) {
            const filtered_data = django_data.filter(itm => itm.content === message)
            const outpt = django_data.filter(data => data.parent_id == filtered_data[0].sl_no);
            responseText = findValue(outpt)
        }
        else {
            responseText = "No response found"
        }
    }
    if (responseText !== '') {
        const botResponseDiv = document.createElement('div');
        botResponseDiv.className = 'bot-response';
        botResponseDiv.textContent = responseText;
        messageContainer.appendChild(botResponseDiv);
    }
    output.appendChild(messageContainer);
}
