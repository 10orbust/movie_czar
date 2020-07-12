require "application_system_test_case"

class GroupInvitesTest < ApplicationSystemTestCase
  setup do
    @group_invite = group_invites(:one)
  end

  test "visiting the index" do
    visit group_invites_url
    assert_selector "h1", text: "Group Invites"
  end

  test "creating a Group invite" do
    visit group_invites_url
    click_on "New Group Invite"

    check "Accecpted" if @group_invite.accecpted
    fill_in "Group", with: @group_invite.group_id
    fill_in "Receiver", with: @group_invite.receiver_id
    fill_in "Sender", with: @group_invite.sender_id
    click_on "Create Group invite"

    assert_text "Group invite was successfully created"
    click_on "Back"
  end

  test "updating a Group invite" do
    visit group_invites_url
    click_on "Edit", match: :first

    check "Accecpted" if @group_invite.accecpted
    fill_in "Group", with: @group_invite.group_id
    fill_in "Receiver", with: @group_invite.receiver_id
    fill_in "Sender", with: @group_invite.sender_id
    click_on "Update Group invite"

    assert_text "Group invite was successfully updated"
    click_on "Back"
  end

  test "destroying a Group invite" do
    visit group_invites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group invite was successfully destroyed"
  end
end
