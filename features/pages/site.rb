class BrowserContainer
  def initialize(browser)
    @browser = browser
  end
end

class Site < BrowserContainer
  def loginpage
    @loginpage = LoginPage.new(@browser)
  end

  def homepage
    @homepage = HomePage.new(@browser)
  end

  def close
    @browser.close
  end
end