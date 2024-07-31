
document.addEventListener("DOMContentLoaded", function () {
    const dataFromDjango = JSON.parse(document.getElementById("data").textContent);
    console.log(dataFromDjango)
    const django_data = dataFromDjango.map(item => item.fields);
    // console.log('django_data', django_data)

});
let userMessg = [];
async function sendMessage() {
    const dataFromDjango = JSON.parse(document.getElementById("data").textContent);
    const django_data = dataFromDjango.map(item => item.fields);
    const input = document.getElementById("input");
    const message = input.value;
    if (message !== '') {
        displayData(message, django_data)
    }
}

function getRandomIndex(max) {
    return Math.floor(Math.random() * max);
}


function displayData(message, django_data) {
    const output = document.getElementById('output')
    output.append(message)
    if (message === 'hello' || message === 'hi') {
        const outpt = django_data.filter(data => data.parent_id == 1)
        const output_list = outpt.map(o => o.content)
        const randomIndex = getRandomIndex(output_list.length);
        const randomString = output_list[randomIndex];
        console.log(randomString);
        const botResponse = document.getElementById('bot-response')
        botResponse.append(randomString)
    }
    else if (message === 'How are you?') {
        const outpt = django_data.filter(data => data.parent_id == 5)
        const output_list = outpt.map(o => o.content)
        const randomIndex = getRandomIndex(output_list.length);
        const randomString = output_list[randomIndex];
        console.log(randomString);
        const botResponse = document.getElementById('bot-response')
        botResponse.append(randomString)
    }
    else if (message === 'I am fine') {
        const outpt = django_data.filter(data => data.parent_id == 7)
        const output_list = outpt.map(o => o.content)
        const randomIndex = getRandomIndex(output_list.length);
        const randomString = output_list[randomIndex];
        console.log(randomString);
        const botResponse = document.getElementById('bot-response')
        botResponse.append(randomString)
    }
}