class Product < ApplicationRecord
  validates :title, :description, :image_url, :presence => true #validate khong duoc de rong
  validates :price, :numericality => {:greater_than_or_equal_to => 1.0} #price phai la so va lon hon 1
  validates :title, :uniqueness => true # khong cho phep title trung nhau

  has_many :line_items
  before_destroy :check_if_has_line_item

  private

  def check_if_has_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'This product has a LineItem')
      return false
    end
  end
end
