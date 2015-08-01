require 'test_helper'

class TeamsControllerTest < ActionController::TestCase
  test "should get idnex" do
    get :idnex
    assert_response :success
  end

end
