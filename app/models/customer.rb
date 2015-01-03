class Customer < ActiveRecord::Base
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :address, :presence => true

  def to_s
    firstname + " " + lastname
  end
end
