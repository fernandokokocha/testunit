class Customer < ActiveRecord::Base
  def to_s
    firstname + " " + lastname
  end
end
