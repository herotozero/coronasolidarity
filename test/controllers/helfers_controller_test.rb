require 'test_helper'

class HelfersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @helfer = helfers(:one)
  end

  test "should get index" do
    get helfers_url
    assert_response :success
  end

  test "should get new" do
    get new_helfer_url
    assert_response :success
  end

  test "should create helfer" do
    assert_difference('Helfer.count') do
      post helfers_url, params: { helfer: {  } }
    end

    assert_redirected_to helfer_url(Helfer.last)
  end

  test "should show helfer" do
    get helfer_url(@helfer)
    assert_response :success
  end

  test "should get edit" do
    get edit_helfer_url(@helfer)
    assert_response :success
  end

  test "should update helfer" do
    patch helfer_url(@helfer), params: { helfer: {  } }
    assert_redirected_to helfer_url(@helfer)
  end

  test "should destroy helfer" do
    assert_difference('Helfer.count', -1) do
      delete helfer_url(@helfer)
    end

    assert_redirected_to helfers_url
  end
end
