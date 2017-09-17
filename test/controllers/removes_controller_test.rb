require 'test_helper'

class RemovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @remove = removes(:one)
  end

  test "should get index" do
    get removes_url
    assert_response :success
  end

  test "should get new" do
    get new_remove_url
    assert_response :success
  end

  test "should create remove" do
    assert_difference('Remove.count') do
      post removes_url, params: { remove: { organization: @remove.organization } }
    end

    assert_redirected_to remove_url(Remove.last)
  end

  test "should show remove" do
    get remove_url(@remove)
    assert_response :success
  end

  test "should get edit" do
    get edit_remove_url(@remove)
    assert_response :success
  end

  test "should update remove" do
    patch remove_url(@remove), params: { remove: { organization: @remove.organization } }
    assert_redirected_to remove_url(@remove)
  end

  test "should destroy remove" do
    assert_difference('Remove.count', -1) do
      delete remove_url(@remove)
    end

    assert_redirected_to removes_url
  end
end
