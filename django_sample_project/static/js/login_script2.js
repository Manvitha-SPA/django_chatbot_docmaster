document.addEventListener("DOMContentLoaded", function () {
    const dataFromDjango = JSON.parse(document.getElementById("data").textContent);
    const django_data = dataFromDjango.map(item => item.fields);
    console.log(django_data)
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
    console.log(names[0])
    if (user_name in names) {
        if (user_name === names[0]) {
            const user_id = 1;
            console.log(user_id)
            console.log(user_name)
        }
        // sessionStorage.setItem('user_name', JSON.stringify(user_name));
        // sessionStorage.setItem('user_id', 1);

    }

}