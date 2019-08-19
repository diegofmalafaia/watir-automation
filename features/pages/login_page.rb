class LoginPage < BrowserContainer

  def open
    @browser.goto 'http://www.google.com'
    self
  end

end