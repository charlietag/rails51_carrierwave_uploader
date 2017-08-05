require 'test_helper'

class DzonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dzone = dzones(:one)
  end

  test "should get index" do
    get dzones_url
    assert_response :success
  end

  test "should get new" do
    get new_dzone_url
    assert_response :success
  end

  test "should create dzone" do
    assert_difference('Dzone.count') do
      post dzones_url, params: { dzone: { picture: @dzone.picture, title: @dzone.title } }
    end

    assert_redirected_to dzone_url(Dzone.last)
  end

  test "should show dzone" do
    get dzone_url(@dzone)
    assert_response :success
  end

  test "should get edit" do
    get edit_dzone_url(@dzone)
    assert_response :success
  end

  test "should update dzone" do
    patch dzone_url(@dzone), params: { dzone: { picture: @dzone.picture, title: @dzone.title } }
    assert_redirected_to dzone_url(@dzone)
  end

  test "should destroy dzone" do
    assert_difference('Dzone.count', -1) do
      delete dzone_url(@dzone)
    end

    assert_redirected_to dzones_url
  end
end
