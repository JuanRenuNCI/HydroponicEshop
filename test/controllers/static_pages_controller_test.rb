require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Hydroponic Project"
  end
  
    test "should get root" do
    get '/'
    assert_response :success
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get info" do
    get static_pages_info_url
    assert_response :success
   assert_select "title", "Documents | #{@base_title}"
  end

  test "should get eshop" do
    get static_pages_eshop_url
    assert_response :success
     assert_select "title", "Shop | #{@base_title}"
  end

  test "should get login" do
    get static_pages_login_url
    assert_response :success
     assert_select "title", "User corner | #{@base_title}"
  end

  test "should get cart" do
    get static_pages_cart_url
    assert_response :success
     assert_select "title", "Cart | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
     assert_select "title", "Contact | #{@base_title}"
  end

end
