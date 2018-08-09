require 'test_helper'

class OperatingProceduresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operating_procedure = operating_procedures(:one)
  end

  test "should get index" do
    get operating_procedures_url, as: :json
    assert_response :success
  end

  test "should create operating_procedure" do
    assert_difference('OperatingProcedure.count') do
      post operating_procedures_url, params: { operating_procedure: { file_url: @operating_procedure.file_url, op_number: @operating_procedure.op_number, title: @operating_procedure.title } }, as: :json
    end

    assert_response 201
  end

  test "should show operating_procedure" do
    get operating_procedure_url(@operating_procedure), as: :json
    assert_response :success
  end

  test "should update operating_procedure" do
    patch operating_procedure_url(@operating_procedure), params: { operating_procedure: { file_url: @operating_procedure.file_url, op_number: @operating_procedure.op_number, title: @operating_procedure.title } }, as: :json
    assert_response 200
  end

  test "should destroy operating_procedure" do
    assert_difference('OperatingProcedure.count', -1) do
      delete operating_procedure_url(@operating_procedure), as: :json
    end

    assert_response 204
  end
end
