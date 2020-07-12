require 'test_helper'

class GroupCzarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_czar = group_czars(:one)
  end

  test "should get index" do
    get group_czars_url
    assert_response :success
  end

  test "should get new" do
    get new_group_czar_url
    assert_response :success
  end

  test "should create group_czar" do
    assert_difference('GroupCzar.count') do
      post group_czars_url, params: { group_czar: { czar_count: @group_czar.czar_count, group_id: @group_czar.group_id, user_id: @group_czar.user_id } }
    end

    assert_redirected_to group_czar_url(GroupCzar.last)
  end

  test "should show group_czar" do
    get group_czar_url(@group_czar)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_czar_url(@group_czar)
    assert_response :success
  end

  test "should update group_czar" do
    patch group_czar_url(@group_czar), params: { group_czar: { czar_count: @group_czar.czar_count, group_id: @group_czar.group_id, user_id: @group_czar.user_id } }
    assert_redirected_to group_czar_url(@group_czar)
  end

  test "should destroy group_czar" do
    assert_difference('GroupCzar.count', -1) do
      delete group_czar_url(@group_czar)
    end

    assert_redirected_to group_czars_url
  end
end
