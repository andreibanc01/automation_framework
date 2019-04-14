require_relative './checkout_page'

class QueryPage
  def initialize(browser)
    @browser = browser
  end

  def product_name
    product = @browser.find_element(:xpath, '//*[@id="center_column"]/ul/li/div/div[2]/h5/a')
  end

  def addtocart_button
    @browser.find_element(:css, '.ajax_add_to_cart_button')
  end

  def checkout_button
    @browser.find_element(:css, '.btn-default.button.button-medium')
  end

  def click_addtocart
    addtocart_button.click
    self
  end

  def click_checkout
    sleep 3
    checkout_button.click
    CheckoutPage.new(@browser)
  end
end
