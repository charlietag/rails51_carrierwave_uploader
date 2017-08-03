require 'test_helper'

class DollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doll = dolls(:one)
  end

  test "should get index" do
    get dolls_url
    assert_response :success
  end

  test "should get new" do
    get new_doll_url
    assert_response :success
  end

  test "should create doll" do
    assert_difference('Doll.count') do
      post dolls_url, params: { doll: { avatar: @doll.avatar, name: @doll.name } }
    end

    assert_redirected_to doll_url(Doll.last)
  end

  test "should show doll" do
    get doll_url(@doll)
    assert_response :success
  end

  test "should get edit" do
    get edit_doll_url(@doll)
    assert_response :success
  end

  test "should update doll" do
    patch doll_url(@doll), params: { doll: { avatar: @doll.avatar, name: @doll.name } }
    assert_redirected_to doll_url(@doll)
  end

  test "should destroy doll" do
    assert_difference('Doll.count', -1) do
      delete doll_url(@doll)
    end

    assert_redirected_to dolls_url
  end
end
