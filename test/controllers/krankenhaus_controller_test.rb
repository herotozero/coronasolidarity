require 'test_helper'

class KrankenhausControllerTest < ActionDispatch::IntegrationTest
  setup do
    @krankenhau = krankenhaus(:one)
  end

  test "should get index" do
    get krankenhaus_url
    assert_response :success
  end

  test "should get new" do
    get new_krankenhau_url
    assert_response :success
  end

  test "should create krankenhau" do
    assert_difference('Krankenhau.count') do
      post krankenhaus_url, params: { krankenhau: {  } }
    end

    assert_redirected_to krankenhau_url(Krankenhau.last)
  end

  test "should show krankenhau" do
    get krankenhau_url(@krankenhau)
    assert_response :success
  end

  test "should get edit" do
    get edit_krankenhau_url(@krankenhau)
    assert_response :success
  end

  test "should update krankenhau" do
    patch krankenhau_url(@krankenhau), params: { krankenhau: {  } }
    assert_redirected_to krankenhau_url(@krankenhau)
  end

  test "should destroy krankenhau" do
    assert_difference('Krankenhau.count', -1) do
      delete krankenhau_url(@krankenhau)
    end

    assert_redirected_to krankenhaus_url
  end
end
