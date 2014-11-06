require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get blog" do
    get :blog
    assert_response :success
  end

end
