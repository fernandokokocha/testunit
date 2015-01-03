require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "should not create product with no name" do
    product = Product.new(:description => "Opis", :price => 100, :category_id => 1)
    assert_not product.save
  end

  test "should not create product with no description" do
    product = Product.new(:name => "Towar", :price => 100, :category_id => 1)
    assert_not product.save
  end

  test "should not create product with no price" do
    product = Product.new(:name => "Towar", :description => "Opis", :category_id => 1)
    assert_not product.save
  end

  test "should not create product with no category_id" do
    product = Product.new(:name => "Towar", :description => "Opis", :price => 100)
    assert_not product.save
  end

  test "should not create product with negative price" do
    product = Product.new(:name => "Towar", :description => "Opis", :price => -100, :category_id => 1)
    assert_not product.save
  end
end