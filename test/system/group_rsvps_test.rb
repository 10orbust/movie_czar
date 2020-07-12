require "application_system_test_case"

class GroupRsvpsTest < ApplicationSystemTestCase
  setup do
    @group_rsvp = group_rsvps(:one)
  end

  test "visiting the index" do
    visit group_rsvps_url
    assert_selector "h1", text: "Group Rsvps"
  end

  test "creating a Group rsvp" do
    visit group_rsvps_url
    click_on "New Group Rsvp"

    check "Accecpted" if @group_rsvp.accecpted
    fill_in "Group", with: @group_rsvp.group_id
    fill_in "User", with: @group_rsvp.user_id
    click_on "Create Group rsvp"

    assert_text "Group rsvp was successfully created"
    click_on "Back"
  end

  test "updating a Group rsvp" do
    visit group_rsvps_url
    click_on "Edit", match: :first

    check "Accecpted" if @group_rsvp.accecpted
    fill_in "Group", with: @group_rsvp.group_id
    fill_in "User", with: @group_rsvp.user_id
    click_on "Update Group rsvp"

    assert_text "Group rsvp was successfully updated"
    click_on "Back"
  end

  test "destroying a Group rsvp" do
    visit group_rsvps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group rsvp was successfully destroyed"
  end
end
