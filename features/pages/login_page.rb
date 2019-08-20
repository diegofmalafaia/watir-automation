class LoginPage < BrowserContainer

  def txt_erro
    @browser.div(:id => 'create_account_error').li.text
  end

  def txt_email_adress
    @browser.text_field(:id => 'email_create')
  end

  def btn_create_account
    @browser.button(:id => 'SubmitCreate')
  end

  def register_account
    txt_email_adress.send_keys 'teste@teste.com'
    btn_create_account.click
    sleep 10
  end

  def send_already_registered_email
    txt_email_adress.send_keys 'teste@teste.com'
    btn_create_account.click
  end

  def email_alredy_created_error
    expect(txt_erro).to eql $messages['email_already_created_error']
  end

end