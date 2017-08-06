require 'test_helper'

class MultidzonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multidzone = multidzones(:one)
  end

  test "should get index" do
    get multidzones_url
    assert_response :success
  end

  test "should get new" do
    get new_multidzone_url
    assert_response :success
  end

  test "should create multidzone" do
    assert_difference('Multidzone.count') do
      post multidzones_url, params: { multidzone: { pictures: @multidzone.pictures, title: @multidzone.title } }
    end

    assert_redirected_to multidzone_url(Multidzone.last)
  end

  test "should show multidzone" do
    get multidzone_url(@multidzone)
    assert_response :success
  end

  test "should get edit" do
    get edit_multidzone_url(@multidzone)
    assert_response :success
  end

  test "should update multidzone" do
    patch multidzone_url(@multidzone), params: { multidzone: { pictures: @multidzone.pictures, title: @multidzone.title } }
    assert_redirected_to multidzone_url(@multidzone)
  end

  test "should destroy multidzone" do
    assert_difference('Multidzone.count', -1) do
      delete multidzone_url(@multidzone)
    end

    assert_redirected_to multidzones_url
  end
end
