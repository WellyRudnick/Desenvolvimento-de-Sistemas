document.addEventListener('DOMContentLoaded', function() {
    const suscessmgs = document.getElementById('success-message');
    const errormgs = document.getElementById('error-message');
    const form = document.getElementById('contact-form');

    form.addEventListener('submit', function(event) {
        event.preventDefault();
    });

    const formdata = new FormData(form);
    
    fetch('https://jsonplaceholder.typicode.com/posts', {
        method: 'POST',
        body: formdata
    })
    .then(response=> {
        if (!response.ok) {
            throw new Error('Erro ao enviar mensagem');
        }
        return response.json();
    })
    .then(data => {
        console.log("Resposta do servidor: ", data);

        suscessmgs.classList.remove("d-none");
        errormgs.classList.add("d-none");

        form.reset();
    })
    .catch(error => {
        console.error('Erro:', error);

        suscessmgs.classList.add("d-none");
        errormgs.classList.remove("d-none");
    });
});