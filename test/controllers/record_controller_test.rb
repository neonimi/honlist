require "test_helper"

class RecordControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get record_new_url
    assert_response :success
  end
end
