class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)      
    @shop = ShopifyAPI::Shop.current 
    @asset = ShopifyAPI::Asset.find('layout/theme.liquid')   
    @addasset = ShopifyAPI::Asset.new(:key => 'assets/test-special.css')   
  end   
end