class PaymentNotification < ActiveRecord::Base  
  serialize :params   
  after_create :activate_user   
     
private   
  def activate_user
    if params[:secret] == "foobar"   
      if status == "Completed"   
        User.find(params[:user_id].to_i).activate   
      elsif status == "Pending"
        User.find(params[:user_id].to_i).pend
      end
    end  
  end  
end
