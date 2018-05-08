class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
    
    @shop = ShopifyAPI::Shop.current     
  end   
end