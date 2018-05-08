class Product < ApplicationRecord
  validates :title, :description, :image_url, :presence => true #validate khong duoc de rong
  validates :price, :numericality => {:greater_than_or_equal_to => 1.0} #price phai la so va lon hon 1
  validates :title, :uniqueness => true # khong cho phep title trung nhau
end
