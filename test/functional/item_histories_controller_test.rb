require 'test_helper'

class ItemHistoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_history" do
    assert_difference('ItemHistory.count') do
      post :create, :item_history => { }
    end

    assert_redirected_to item_history_path(assigns(:item_history))
  end

  test "should show item_history" do
    get :show, :id => item_histories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => item_histories(:one).to_param
    assert_response :success
  end

  test "should update item_history" do
    put :update, :id => item_histories(:one).to_param, :item_history => { }
    assert_redirected_to item_history_path(assigns(:item_history))
  end

  test "should destroy item_history" do
    assert_difference('ItemHistory.count', -1) do
      delete :destroy, :id => item_histories(:one).to_param
    end

    assert_redirected_to item_histories_path
  end
end
