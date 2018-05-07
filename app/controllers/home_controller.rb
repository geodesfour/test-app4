class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10000 })
    @webhooks = ShopifyAPI::Webhook.find(:all)   
    @shop = ShopifyAPI::Shop.current
    
  end
end
