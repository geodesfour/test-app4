class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)
    @shop = ShopifyAPI::Shop.current    
    @customers = ShopifyAPI::Customer.find(:all)
    @orders = ShopifyAPI::Order.find(:all)
  end 
  def others    

  end 
end