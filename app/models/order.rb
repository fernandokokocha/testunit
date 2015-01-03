class Order < ActiveRecord::Base
  validates :product_id, :presence => true
  validates :customer_id, :presence => true
  validates :quantity, :presence => true
  validates :quantity, :numericality => { greater_than: 0}

  belongs_to :product
  belongs_to :customer
end
