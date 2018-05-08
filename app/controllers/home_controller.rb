class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)
    @collections = ShopifyAPI::CollectionListing.find(:all)    
    @shop = ShopifyAPI::Shop.current     
  end   
end