require 'test_helper'

class YesnoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yesno_index_url
    assert_response :success
  end

end
