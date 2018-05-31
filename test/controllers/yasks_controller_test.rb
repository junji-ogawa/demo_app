require 'test_helper'

class YasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yask = yasks(:one)
  end

  test "should get index" do
    get yasks_url
    assert_response :success
  end

  test "should get new" do
    get new_yask_url
    assert_response :success
  end

  test "should create yask" do
    assert_difference('Yask.count') do
      post yasks_url, params: { yask: { detail: @yask.detail, title: @yask.title } }
    end

    assert_redirected_to yask_url(Yask.last)
  end

  test "should show yask" do
    get yask_url(@yask)
    assert_response :success
  end

  test "should get edit" do
    get edit_yask_url(@yask)
    assert_response :success
  end

  test "should update yask" do
    patch yask_url(@yask), params: { yask: { detail: @yask.detail, title: @yask.title } }
    assert_redirected_to yask_url(@yask)
  end

  test "should destroy yask" do
    assert_difference('Yask.count', -1) do
      delete yask_url(@yask)
    end

    assert_redirected_to yasks_url
  end
end
