class Order < ApplicationRecord
  PAYMENT_TYPES = [ "Cash on delivery", "Ngân lượng", "Bảo Kim", "Bank Card" ]

  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES
end
