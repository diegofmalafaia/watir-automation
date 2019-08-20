class HomePage < BrowserContainer

  def open_sign_in
    @browser.goto 'http://automationpractice.com/index.php'
    btn_sign_in.click
    self
  end

  def btn_sign_in
    @browser.a(:class_name => 'login')
  end

end