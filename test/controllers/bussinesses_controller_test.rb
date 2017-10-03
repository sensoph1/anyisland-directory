require 'test_helper'

class BussinessesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bussinesses_index_url
    assert_response :success
  end

end
