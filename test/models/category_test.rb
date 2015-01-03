require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "should not create category with no title" do
    category = Category.new
    assert_not category.save
  end
end
