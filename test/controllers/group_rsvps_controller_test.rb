require 'test_helper'

class GroupRsvpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_rsvp = group_rsvps(:one)
  end

  test "should get index" do
    get group_rsvps_url
    assert_response :success
  end

  test "should get new" do
    get new_group_rsvp_url
    assert_response :success
  end

  test "should create group_rsvp" do
    assert_difference('GroupRsvp.count') do
      post group_rsvps_url, params: { group_rsvp: { accecpted: @group_rsvp.accecpted, group_id: @group_rsvp.group_id, user_id: @group_rsvp.user_id } }
    end

    assert_redirected_to group_rsvp_url(GroupRsvp.last)
  end

  test "should show group_rsvp" do
    get group_rsvp_url(@group_rsvp)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_rsvp_url(@group_rsvp)
    assert_response :success
  end

  test "should update group_rsvp" do
    patch group_rsvp_url(@group_rsvp), params: { group_rsvp: { accecpted: @group_rsvp.accecpted, group_id: @group_rsvp.group_id, user_id: @group_rsvp.user_id } }
    assert_redirected_to group_rsvp_url(@group_rsvp)
  end

  test "should destroy group_rsvp" do
    assert_difference('GroupRsvp.count', -1) do
      delete group_rsvp_url(@group_rsvp)
    end

    assert_redirected_to group_rsvps_url
  end
end
