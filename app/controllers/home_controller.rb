class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all) 
    @orders2 = ShopifyAPI::Order.find(:all, :params => {:limit => 5, :order => "created_at DESC" })      
    @shop = ShopifyAPI::Shop.current    
  end 
end
