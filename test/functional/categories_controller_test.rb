require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post :create, :category => { :nome => "HAHA" }
    end

    assert_redirected_to category_path(assigns(:category))
  end

  test "should show category" do
    get :show, :id => categories(:rede).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => categories(:os).to_param
    assert_response :success
  end

  test "should update category" do
    put :update, :id => categories(:os).to_param, :category => { :nome => "hahaha" }
    assert_redirected_to category_path(assigns(:category))
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, :id => categories(:os).to_param
    end

    assert_redirected_to categories_path
  end
end
