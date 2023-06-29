class GetDataJob < ApplicationJob
  queue_as :default

  def perform()
    Selenium::Usdrates.run
    Selenium::Mercari.run
    Selenium::Yahoo.run
  end
end
