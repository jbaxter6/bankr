require 'test_helper'

class LoansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get loans_index_url
    assert_response :success
  end

  test "should get show" do
    get loans_show_url
    assert_response :success
  end

  test "should get new" do
    get loans_new_url
    assert_response :success
  end

  test "should get create" do
    get loans_create_url
    assert_response :success
  end

  test "should get edit" do
    get loans_edit_url
    assert_response :success
  end

  test "should get update" do
    get loans_update_url
    assert_response :success
  end

  test "should get destroy" do
    get loans_destroy_url
    assert_response :success
  end

end
