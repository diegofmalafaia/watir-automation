#language:pt

  Funcionalidade: Cadastro
    Como usuario que poder realizar meu cadastro para posteriormente efetuar minhas compras.


    Cenário: Não será possivel criar uma conta utilizando um email já cadastrado
      Dado que estou na pagina de login
      Quando informo um email já cadastrado
      Então devo visualizar uma mensagem de erro informando que o email já esta em uso
