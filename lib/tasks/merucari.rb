require 'selenium-webdriver'

module Selenium

  class Mercari
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
      driver.navigate.to 'https://jp.mercari.com/item/m33043003316'
      
      sleep 10
      # driver.save_screenshot('./1.png')
      element = driver.find_element(:css, '[data-testid="checkout-button-container"]')
      puts element.text
      
      if element == '購入手続きへ'
        puts '在庫ありM'
      else
        puts '在庫なしM'
      end
      
      driver.quit
    end
  end
end

# Selenium::Mercari.run