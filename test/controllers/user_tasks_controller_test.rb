require 'test_helper'

class UserTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_tasks_create_url
    assert_response :success
  end

end
