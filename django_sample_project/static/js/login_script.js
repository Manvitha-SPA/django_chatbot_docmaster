document.addEventListener("DOMContentLoaded", function () {
    const dataFromDjango = JSON.parse(document.getElementById("data").textContent);
    const django_data = dataFromDjango.map(item => item.fields);
    // console.log(django_data)
    // const input = document.getElementById("input");
    // const message = input.value;
    // if (message != '') {
    //     message.addEventListener('keydown', myFunction);
    // }
});
function sendLoginData() {
    const dataFromDjango = JSON.parse(document.getElementById("data").textContent);
    const django_data = dataFromDjango.map(item => item.fields);
    const names = django_data.map(name => name.user_name);
    const input = document.getElementById("user_name");
    const user_name = input.value;
    console.log(user_name)
    console.log(names)
    const messageExists = django_data.some(itm => itm.user_name === user_name)
    if (messageExists && user_name !== '') {
        console.log(names.indexOf(user_name) + 1)
        sessionStorage.setItem('user_name', JSON.stringify(user_name));
        sessionStorage.setItem('user_id', names.indexOf(user_name) + 1);
    }
    window.location.href = 'bot'

}