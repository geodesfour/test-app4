class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all) 
    @orders2 = ShopifyAPI::Order.find(:all)      
    @shop = ShopifyAPI::Shop.current    
  end 
end
