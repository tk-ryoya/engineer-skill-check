RSpec.configure do |config|
  config.before(:each, type: :system) do
    # ブラウザON
    # driven_by :selenium_chrome

    # ブラウザOFF
    driven_by :selenium, using: :headless_chrome
  end
end
