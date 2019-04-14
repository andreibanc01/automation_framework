require 'spec_helper'
require "selenium-webdriver"
require_relative '../lib/page_objects/main_page'

describe 'Testing main sign-in functionality', :login do
  it 'Test registration unsuccessful' do
    browser = Selenium::WebDriver.for :chrome
    url = 'http://automationpractice.com/index.php'

    signin_page = MainPage.new(browser)
      .navigate_to(url)
      .click_signin
      .fill_form('123','password')
      .submit

    expect(signin_page.alert_danger.displayed?).to be_truthy
  end
end
