class SigninPage
  def initialize(browser)
    @browser = browser
  end

  def wait_to_load
    signin_button.displayed?
    self
  end

  def email_address
    @browser.find_element(:css, '#email')
  end

  def password
    @browser.find_element(:css, '#passwd')
  end

  def signin_button
    @browser.find_element(:css, '#SubmitLogin')
  end

  def alert_danger
    @browser.find_element(:css, '.alert.alert-danger')
  end

  def fill_form(email,pass)
    email_address.send_keys(email)
    password.send_keys(pass)
    self
  end

  def submit
    signin_button.click
    self
  end
end
