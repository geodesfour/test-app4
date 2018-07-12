ShopifyApp.configure do |config|
  config.application_name = "Speedfly - Boite à outils"
  config.api_key = "5ec482eb67546ab3b00b5b624be3f1a7"
  config.secret = "f5abdbbb32aa7132153677838f8d7226"
  config.scope = "read_products, read_orders, read_themes, write_themes"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end


def create_recurring_application_charge
  unless ShopifyAPI::RecurringApplicationCharge.current
    recurring_application_charge = ShopifyAPI::RecurringApplicationCharge.new(
            name: "Speedfly Plan",
            price: 3.99,
            return_url: "https:\/\/#{APP_URL}\/activatecharge",
            test: true,
            trial_days: 7,
            capped_amount: 100,
            terms: "$0.99 for every order created")

    if recurring_application_charge.save
      @tokens[:confirmation_url] = recurring_application_charge.confirmation_url
      redirect recurring_application_charge.confirmation_url
    end
  end
end