class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)      
    @shop = ShopifyAPI::Shop.current 
    @asset = ShopifyAPI::Asset.find('layout/theme.liquid', :params => {:theme_id => 32311083050})      
  end   
end