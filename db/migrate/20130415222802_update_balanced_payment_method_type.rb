class UpdateBalancedPaymentMethodType < SolidusSupport::Migration[4.2]
  def up
    Spree::PaymentMethod.where(:type => "Spree::Gateway::Balanced").update_all(:type => "Spree::Gateway::BalancedGateway")
  end
  
  def down
    Spree::PaymentMethod.where(:type => "Spree::Gateway::BalancedGateway").update_all(:type => "Spree::Gateway::Balanced")
  end
end