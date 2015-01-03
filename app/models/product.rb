class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  validates :price, :numericality => { greater_than: 0}
  validates :category_id, :presence => true

  belongs_to :category

  def to_s
    name
  end
end
