require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test "create order" do
    get "/"
    assert_response :success
    assert_select 'h1', 'Listing orders'
    assert_select 'tr', 3

    get "orders/new"
    assert_select 'h1', 'New order'
    post_via_redirect orders_path, order_without_quantity
    assert_response :success

    assert_select 'h1', 'New order'
    assert_select 'div#error_explanation', /2 errors prohibited this order from being saved/
    post_via_redirect orders_path, correct_order
    assert_response :success

    assert_select 'h1', 0
    assert_equal 'Order was successfully created.', flash[:notice]

    get "/"
    assert_response :success
    assert_select 'h1', 'Listing orders'
    assert_select 'tr', 4
  end

  private
    def correct_order
      return :order => {:quantity => "5",
                        :paid => "false",
                        :sent => "false",
                        :product_id => "1",
                        :customer_id => "1"}
    end

    def order_without_quantity
      return :order => {:quantity => "",
                        :paid => "false",
                        :sent => "false",
                        :product_id => "1",
                        :customer_id => "1"}
    end
end