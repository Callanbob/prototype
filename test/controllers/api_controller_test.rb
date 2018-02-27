require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get json_attribute" do
    get api_json_attribute_url
    assert_response :success
  end

end
