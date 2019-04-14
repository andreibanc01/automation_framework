require 'spec_helper'
require "selenium-webdriver"
require_relative '../lib/page_objects/main_page'

describe 'Testing query', :query do
  it 'Check T-shirt search' do
    browser = Selenium::WebDriver.for :chrome
    url = 'http://automationpractice.com/index.php'

    query_page = MainPage.new(browser)
      .navigate_to(url)
      .query_search

    expect(query_page.product_name.text).to match("Faded Short Sleeve T-shirts")
  end
end
