Dado("que estou na pagina de login") do
  site.homepage.open_sign_in
end

Quando("informo um email já cadastrado") do
  site.loginpage.send_already_registered_email
end

Então("devo visualizar uma mensagem de erro informando que o email já esta em uso") do
  site.loginpage.email_alredy_created_error
end
