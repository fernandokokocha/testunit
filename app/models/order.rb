class Order < ActiveRecord::Base
  validates :quantity, :presence => true
  validates :quantity, :numericality => { greater_than: 0}

  belongs_to :product
  belongs_to :customer
end
