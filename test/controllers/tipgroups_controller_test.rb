require 'test_helper'

class TipgroupsControllerTest < ActionController::TestCase
  setup do
    @tipgroup = tipgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipgroup" do
    assert_difference('Tipgroup.count') do
      post :create, tipgroup: { name: @tipgroup.name, owner: @tipgroup.owner }
    end

    assert_redirected_to tipgroup_path(assigns(:tipgroup))
  end

  test "should show tipgroup" do
    get :show, id: @tipgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipgroup
    assert_response :success
  end

  test "should update tipgroup" do
    patch :update, id: @tipgroup, tipgroup: { name: @tipgroup.name, owner: @tipgroup.owner }
    assert_redirected_to tipgroup_path(assigns(:tipgroup))
  end

  test "should destroy tipgroup" do
    assert_difference('Tipgroup.count', -1) do
      delete :destroy, id: @tipgroup
    end

    assert_redirected_to tipgroups_path
  end
end
