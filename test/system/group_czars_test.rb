require "application_system_test_case"

class GroupCzarsTest < ApplicationSystemTestCase
  setup do
    @group_czar = group_czars(:one)
  end

  test "visiting the index" do
    visit group_czars_url
    assert_selector "h1", text: "Group Czars"
  end

  test "creating a Group czar" do
    visit group_czars_url
    click_on "New Group Czar"

    fill_in "Czar count", with: @group_czar.czar_count
    fill_in "Group", with: @group_czar.group_id
    fill_in "User", with: @group_czar.user_id
    click_on "Create Group czar"

    assert_text "Group czar was successfully created"
    click_on "Back"
  end

  test "updating a Group czar" do
    visit group_czars_url
    click_on "Edit", match: :first

    fill_in "Czar count", with: @group_czar.czar_count
    fill_in "Group", with: @group_czar.group_id
    fill_in "User", with: @group_czar.user_id
    click_on "Update Group czar"

    assert_text "Group czar was successfully updated"
    click_on "Back"
  end

  test "destroying a Group czar" do
    visit group_czars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group czar was successfully destroyed"
  end
end
