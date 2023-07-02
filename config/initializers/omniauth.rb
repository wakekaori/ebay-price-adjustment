Rails.application.config.middleware.use OmniAuth::Builder do
  provider :ebay_oauth,
    # 入力フォームから取得した値
    # provider :ebay_oauth, ENV['EBAY_CLIENT_ID'], ENV['EBAY_CLIENT_SECRET'],callback_url: ENV['EBAY_RU_NAME'], name: 'ebay'
    
    ENV['wake-DevID-PRD-c8760e13a-534fa6b0'], 
    ENV['PRD-8760e13a4603-e7b7-4a56-9762-0a99'], 
    callback_url: ENV['kaori_moriwake-wake-DevID-PRD--xdehtw'], 
    name: 'ebay'
end