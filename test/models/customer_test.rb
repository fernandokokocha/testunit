require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  test "should not create customer with no data" do
    customer = Customer.new(:lastname => "Kowalski", :address => "Wroclaw")
    assert_not customer.save
  end

  test "should not create customer with no lastname" do
    customer = Customer.new(:firstname => "Jan", :address => "Wroclaw")
    assert_not customer.save
  end

  test "should not create customer with no address" do
    customer = Customer.new(:firstname => "Jan", :lastname => "Kowalski")
    assert_not customer.save
  end

  test "to_s mathod should print full name" do
    customer = Customer.new(:firstname => "Jan", :lastname => "Kowalski", :address => "Wroclaw")
    assert_equal "Jan Kowalski", customer.to_s
  end
end
