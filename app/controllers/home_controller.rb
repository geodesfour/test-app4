class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)    
    @customers = ShopifyAPI::Customer.find(:all)        
    @shop = ShopifyAPI::Shop.current    
  end 
end