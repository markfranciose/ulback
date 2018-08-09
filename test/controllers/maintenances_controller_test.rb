require 'test_helper'

class MaintenancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maintenance = maintenances(:one)
  end

  test "should get index" do
    get maintenances_url, as: :json
    assert_response :success
  end

  test "should create maintenance" do
    assert_difference('Maintenance.count') do
      post maintenances_url, params: { maintenance: { file_url: @maintenance.file_url, machine: @maintenance.machine, maintenance_date: @maintenance.maintenance_date } }, as: :json
    end

    assert_response 201
  end

  test "should show maintenance" do
    get maintenance_url(@maintenance), as: :json
    assert_response :success
  end

  test "should update maintenance" do
    patch maintenance_url(@maintenance), params: { maintenance: { file_url: @maintenance.file_url, machine: @maintenance.machine, maintenance_date: @maintenance.maintenance_date } }, as: :json
    assert_response 200
  end

  test "should destroy maintenance" do
    assert_difference('Maintenance.count', -1) do
      delete maintenance_url(@maintenance), as: :json
    end

    assert_response 204
  end
end
