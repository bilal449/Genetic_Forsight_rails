require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get product" do
    get :product
    assert_response :success
  end

  test "should get science" do
    get :science
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get careers" do
    get :careers
    assert_response :success
  end

end
