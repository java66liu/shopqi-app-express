class WebhookController < ShopQiAppWebhook::WebhookController

  def orders_fulfilled
    order = JSON(request.body.read)['order']
    shop.orders.with json
    render nothing: true
  end

end
