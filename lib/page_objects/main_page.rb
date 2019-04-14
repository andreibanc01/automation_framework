require_relative './signin_page'
require_relative './query_page'

class MainPage
  def initialize(browser)
    @browser = browser
  end

  def navigate_to(url)
    @browser.navigate.to url
    self
  end

  def wait_to_load
    signin_button.displayed?
  end

  def signin_button
    @browser.find_element(:css, '.login')
  end

  def click_signin
    signin_button.click
    SigninPage.new(@browser).wait_to_load
  end

  def query_search
    @browser.find_element(name: 'search_query').send_keys "t-shirt"
    @browser.find_element(name: 'submit_search').click
    QueryPage.new(@browser)
  end
end
