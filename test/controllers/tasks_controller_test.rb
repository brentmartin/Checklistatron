require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "should get controller" do
    get :controller
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
