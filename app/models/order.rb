class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  before_create :calculate_total

  private
  def calculate_total
    product = Product.find(self.product_id)
    self.total = quantity * product.price
  end
end
