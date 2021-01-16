RSpec.configure do |config|
  config.after(:each) do
    I18n.locale = I18n.default_locale
  end
end
