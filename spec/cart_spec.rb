require 'spec_helper'
require "selenium-webdriver"
require_relative '../lib/page_objects/main_page'

describe 'Testing cart', :cart do
  it 'Verify checkout parameters' do
    browser = Selenium::WebDriver.for :chrome
    url = 'http://automationpractice.com/index.php'

    checkout_page = MainPage.new(browser)
      .navigate_to(url)
      .query_search
      .click_addtocart
      .click_checkout

    expect(checkout_page.availability.text).to match('In stock')
    expect(checkout_page.total_price.text).to match('$18.51')
  end
end
