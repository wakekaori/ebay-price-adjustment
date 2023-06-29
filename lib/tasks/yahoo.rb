require 'selenium-webdriver'

module Selenium

  class Yahoo
    # chromedriverのパス
    CHROMEDRIVER = '../../chromedriver'

    def self.run
      # ヘッドレスオプションとエラー回避オプション
      options = Selenium::WebDriver::Chrome::Options.new
      options.add_argument('--headless')
      # options.add_argument('--no-sandbox')
      
      # ドライバー指定でChromeブラウザを開く 
      Selenium::WebDriver::Chrome::Service.driver_path = CHROMEDRIVER
      driver = Selenium::WebDriver.for :chrome, options: options
      driver.navigate.to 'https://page.auctions.yahoo.co.jp/jp/auction/j1096508151'
      
      sleep 10
      # driver.save_screenshot('./1.png')
      # element = driver.find_element(:css, '[data-testid="checkout-button-container"]')
      if driver.find_elements(:css, '.Price__button').size > 0
        puts '在庫ありY'
      else
        puts '在庫なしY'
      end
      
      driver.quit
    end
  end
end

# Selenium::Yahoo.run