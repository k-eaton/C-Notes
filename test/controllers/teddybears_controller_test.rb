require 'test_helper'

class TeddybearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teddybear = teddybears(:one)
  end

  test "should get index" do
    get teddybears_url
    assert_response :success
  end

  test "should get new" do
    get new_teddybear_url
    assert_response :success
  end

  test "should create teddybear" do
    assert_difference('Teddybear.count') do
      post teddybears_url, params: { teddybear: { email: @teddybear.email, name: @teddybear.name } }
    end

    assert_redirected_to teddybear_url(Teddybear.last)
  end

  test "should show teddybear" do
    get teddybear_url(@teddybear)
    assert_response :success
  end

  test "should get edit" do
    get edit_teddybear_url(@teddybear)
    assert_response :success
  end

  test "should update teddybear" do
    patch teddybear_url(@teddybear), params: { teddybear: { email: @teddybear.email, name: @teddybear.name } }
    assert_redirected_to teddybear_url(@teddybear)
  end

  test "should destroy teddybear" do
    assert_difference('Teddybear.count', -1) do
      delete teddybear_url(@teddybear)
    end

    assert_redirected_to teddybears_url
  end
end
