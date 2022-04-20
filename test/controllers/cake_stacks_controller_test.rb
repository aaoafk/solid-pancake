require "test_helper"

class CakeStacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cake_stack = cake_stacks(:one)
  end

  test "should get index" do
    get cake_stacks_url
    assert_response :success
  end

  test "should get new" do
    get new_cake_stack_url
    assert_response :success
  end

  test "should create cake_stack" do
    assert_difference("CakeStack.count") do
      post cake_stacks_url, params: { cake_stack: { msg: @cake_stack.msg, script: @cake_stack.script } }
    end

    assert_redirected_to cake_stack_url(CakeStack.last)
  end

  test "should show cake_stack" do
    get cake_stack_url(@cake_stack)
    assert_response :success
  end

  test "should get edit" do
    get edit_cake_stack_url(@cake_stack)
    assert_response :success
  end

  test "should update cake_stack" do
    patch cake_stack_url(@cake_stack), params: { cake_stack: { msg: @cake_stack.msg, script: @cake_stack.script } }
    assert_redirected_to cake_stack_url(@cake_stack)
  end

  test "should destroy cake_stack" do
    assert_difference("CakeStack.count", -1) do
      delete cake_stack_url(@cake_stack)
    end

    assert_redirected_to cake_stacks_url
  end
end
