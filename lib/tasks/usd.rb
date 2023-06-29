require 'selenium-webdriver'

module Selenium

  class Usdrates
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
      driver.navigate.to 'https://kabutan.jp/stock/?code=0950'
      
      sleep 5
      # driver.save_screenshot('./1.png')
      element = driver.find_element(:css, '.kabuka')
      puts element.text.to_f
      
      driver.quit
    end
  end
end

# Selenium::Usdrates.run