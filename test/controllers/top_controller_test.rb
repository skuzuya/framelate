require "test_helper"

class TopControllerTest < ActionDispatch::IntegrationTest
  setup do
    @template = templates(:one)
  end

  test "should get index" do
    get root_url
    assert_response :success
  end
end
