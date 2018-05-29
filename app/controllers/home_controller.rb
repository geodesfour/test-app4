class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)      
    @shop = ShopifyAPI::Shop.current    
    @asset = ShopifyAPI::Asset.new(:key => 'assets/test-special.css', :theme_id => 32311083050)   
  end   
end