class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  validates :category_id, :presence => true

  belongs_to :category

  def to_s
    name
  end
end
