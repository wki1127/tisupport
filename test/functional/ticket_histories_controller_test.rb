require 'test_helper'

class TicketHistoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_history" do
    assert_difference('TicketHistory.count') do
      post :create, :ticket_history => { }
    end

    assert_redirected_to ticket_history_path(assigns(:ticket_history))
  end

  test "should show ticket_history" do
    get :show, :id => ticket_histories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ticket_histories(:one).to_param
    assert_response :success
  end

  test "should update ticket_history" do
    put :update, :id => ticket_histories(:one).to_param, :ticket_history => { }
    assert_redirected_to ticket_history_path(assigns(:ticket_history))
  end

  test "should destroy ticket_history" do
    assert_difference('TicketHistory.count', -1) do
      delete :destroy, :id => ticket_histories(:one).to_param
    end

    assert_redirected_to ticket_histories_path
  end
end
