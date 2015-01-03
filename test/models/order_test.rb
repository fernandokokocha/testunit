require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "should not create product with no quantity" do
    order = Order.new(:product_id => 1, :customer_id => 1)
    assert_not order.save
  end

  test "should not create product with no product_id" do
    order = Order.new(:quantity => 1, :customer_id => 1)
    assert_not order.save
  end

  test "should not create product with no customer_id" do
    order = Order.new(:product_id => 1, :quantity => 1)
    assert_not order.save
  end

  test "should not create product with negative quantity" do
    order = Order.new(:product_id => 1, :customer_id => 1, :quantity => -1)
    assert_not order.save
  end
end
