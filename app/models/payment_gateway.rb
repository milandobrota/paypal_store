class PaymentGateway

  def PaymentGateway.paypal_encrypted(return_url, notify_url)   
    values = {   
      :business => PAYPAL_ADDRESS,   
      :cmd => '_xclick',  
      :upload => 1,   
      :return => return_url,
      "no_shipping" => "1",   
      #:invoice => 1,   
      :notify_url => notify_url,   
      :cert_id => CERT_ID, 
      :amount => "10.00",   
      :item_name => 'name',   
      #:item_number => "123",   
      :quantity => "1"  
    }     
    PaymentGateway.encrypt_for_paypal(values)   
  end   
  
  
#  PAYPAL_CERT_PEM = File.read("#{Rails.root}/certs/paypal_cert.pem")   
#  APP_CERT_PEM = File.read("#{Rails.root}/certs/app_cert.pem")   
#  APP_KEY_PEM = File.read("#{Rails.root}/certs/app_key.pem")   
  
  def PaymentGateway.encrypt_for_paypal(values)   
#    signed = OpenSSL::PKCS7::sign(OpenSSL::X509::Certificate.new(APP_CERT_PEM), OpenSSL::PKey::RSA.new(APP_KEY_PEM, ''), values.map { |k, v| "#{k}=#{v}" }.join("\n"), [], OpenSSL::PKCS7::BINARY)   
#    OpenSSL::PKCS7::encrypt([OpenSSL::X509::Certificate.new(PAYPAL_CERT_PEM)], signed.to_der, OpenSSL::Cipher::Cipher::new("DES3"), OpenSSL::PKCS7::BINARY).to_s.gsub("\n", "")   
  end
     
end
