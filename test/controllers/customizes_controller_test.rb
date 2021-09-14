require 'test_helper'

class CustomizesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customizes_index_url
    assert_response :success
  end

end
