require "application_system_test_case"

class CakeStacksTest < ApplicationSystemTestCase
  setup do
    @cake_stack = cake_stacks(:one)
  end

  test "visiting the index" do
    visit cake_stacks_url
    assert_selector "h1", text: "Cake stacks"
  end

  test "should create cake stack" do
    visit cake_stacks_url
    click_on "New cake stack"

    fill_in "Msg", with: @cake_stack.msg
    fill_in "Script", with: @cake_stack.script
    click_on "Create Cake stack"

    assert_text "Cake stack was successfully created"
    click_on "Back"
  end

  test "should update Cake stack" do
    visit cake_stack_url(@cake_stack)
    click_on "Edit this cake stack", match: :first

    fill_in "Msg", with: @cake_stack.msg
    fill_in "Script", with: @cake_stack.script
    click_on "Update Cake stack"

    assert_text "Cake stack was successfully updated"
    click_on "Back"
  end

  test "should destroy Cake stack" do
    visit cake_stack_url(@cake_stack)
    click_on "Destroy this cake stack", match: :first

    assert_text "Cake stack was successfully destroyed"
  end
end
