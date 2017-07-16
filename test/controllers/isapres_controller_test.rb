require 'test_helper'

class IsapresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @isapre = isapres(:one)
  end

  test "should get index" do
    get isapres_url
    assert_response :success
  end

  test "should get new" do
    get new_isapre_url
    assert_response :success
  end

  test "should create isapre" do
    assert_difference('Isapre.count') do
      post isapres_url, params: { isapre: { description: @isapre.description, name: @isapre.name, other: @isapre.other } }
    end

    assert_redirected_to isapre_url(Isapre.last)
  end

  test "should show isapre" do
    get isapre_url(@isapre)
    assert_response :success
  end

  test "should get edit" do
    get edit_isapre_url(@isapre)
    assert_response :success
  end

  test "should update isapre" do
    patch isapre_url(@isapre), params: { isapre: { description: @isapre.description, name: @isapre.name, other: @isapre.other } }
    assert_redirected_to isapre_url(@isapre)
  end

  test "should destroy isapre" do
    assert_difference('Isapre.count', -1) do
      delete isapre_url(@isapre)
    end

    assert_redirected_to isapres_url
  end
end
