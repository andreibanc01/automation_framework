class CheckoutPage
  def initialize(browser)
    @browser = browser
  end

  def checkout_button
    @browser.find_element(:css, '.btn-default.button.button-medium')
  end

  def availability
    @browser.find_element(:css, '.label')
  end

  def total_price
    @browser.find_element(:css, '#total_price')
  end
end
