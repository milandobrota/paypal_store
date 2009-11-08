# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def paypal_button
    '<input type="image" src="https://www.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">'
  end
  
  def notify_url
    #NOTIFY_URL_BASE + "&user_id=#{current_user.id}"
    NOTIFY_URL_BASE
  end

end
