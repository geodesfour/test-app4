class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)      
    @shop = ShopifyAPI::Shop.current 
    @asset = ShopifyAPI::Asset.find('layout/theme.liquid')   
    asset = ShopifyAPI::Asset.find('layout/theme.liquid')
  # Grab a cache of the pre-installed layout
  self.theme_layout = asset.value
  snippet = DripSnippet.new(self.drip_account)
  if asset.value.match(/#{snippet.start_wrapper}/i)
    asset.value.sub!(/#{snippet.start_wrapper}.*#{snippet.end_wrapper}/im, snippet.snippet)
  else
    asset.value.sub!(/<\/body>/, "#{snippet.snippet}</body>")
  end
  return asset.save 
  end   
end