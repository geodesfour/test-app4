ShopifyApp.configure do |config|
  config.application_name = "Speedfly - Boite à outils"
  config.api_key = "5ec482eb67546ab3b00b5b624be3f1a7"
  config.secret = "f5abdbbb32aa7132153677838f8d7226"
  config.scope = "read_products, read_orders, read_themes, write_themes"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
