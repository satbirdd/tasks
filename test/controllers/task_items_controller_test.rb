require 'test_helper'

class TaskItemsControllerTest < ActionController::TestCase
  setup do
    @task_item = task_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_item" do
    assert_difference('TaskItem.count') do
      post :create, task_item: { plan_time: @task_item.plan_time, state: @task_item.state, time: @task_item.time, title: @task_item.title }
    end

    assert_redirected_to task_item_path(assigns(:task_item))
  end

  test "should show task_item" do
    get :show, id: @task_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_item
    assert_response :success
  end

  test "should update task_item" do
    patch :update, id: @task_item, task_item: { plan_time: @task_item.plan_time, state: @task_item.state, time: @task_item.time, title: @task_item.title }
    assert_redirected_to task_item_path(assigns(:task_item))
  end

  test "should destroy task_item" do
    assert_difference('TaskItem.count', -1) do
      delete :destroy, id: @task_item
    end

    assert_redirected_to task_items_path
  end
end
