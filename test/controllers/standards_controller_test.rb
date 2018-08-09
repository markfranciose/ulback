require 'test_helper'

class StandardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standard = standards(:one)
  end

  test "should get index" do
    get standards_url, as: :json
    assert_response :success
  end

  test "should create standard" do
    assert_difference('Standard.count') do
      post standards_url, params: { standard: { file_url: @standard.file_url, standard_number: @standard.standard_number, title: @standard.title } }, as: :json
    end

    assert_response 201
  end

  test "should show standard" do
    get standard_url(@standard), as: :json
    assert_response :success
  end

  test "should update standard" do
    patch standard_url(@standard), params: { standard: { file_url: @standard.file_url, standard_number: @standard.standard_number, title: @standard.title } }, as: :json
    assert_response 200
  end

  test "should destroy standard" do
    assert_difference('Standard.count', -1) do
      delete standard_url(@standard), as: :json
    end

    assert_response 204
  end
end
