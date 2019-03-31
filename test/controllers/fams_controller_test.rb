require 'test_helper'

class FamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get fams_new_url
    assert_response :success
  end

  test "should get create" do
    get fams_create_url
    assert_response :success
  end

end
