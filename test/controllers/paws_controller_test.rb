require 'test_helper'

class PawsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paw = paws(:one)
  end

  test "should get index" do
    get paws_url
    assert_response :success
  end

  test "should get new" do
    get new_paw_url
    assert_response :success
  end

  test "should create paw" do
    assert @paw.save
    assert_difference('Paw.count') do
      post paws_url, params: { paw: { } }
    end

    assert_redirected_to paw_url(Paw.last)
  end

  test "should show paw" do
    get paw_url(@paw)
    assert_response :success
  end

  test "should get edit" do
    get edit_paw_url(@paw)
    assert_response :success
  end

  test "should update paw" do
    patch paw_url(@paw), params: { paw: {  } }
    assert_redirected_to paw_url(@paw)
  end

  test "should destroy paw" do
    assert_difference('Paw.count', -1) do
      delete paw_url(@paw)
    end

    assert_redirected_to paws_url
  end
end
