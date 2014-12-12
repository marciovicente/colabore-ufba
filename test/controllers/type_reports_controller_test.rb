require 'test_helper'

class TypeReportsControllerTest < ActionController::TestCase
  setup do
    @type_report = type_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_report" do
    assert_difference('TypeReport.count') do
      post :create, type_report: { description: @type_report.description, label: @type_report.label }
    end

    assert_redirected_to type_report_path(assigns(:type_report))
  end

  test "should show type_report" do
    get :show, id: @type_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_report
    assert_response :success
  end

  test "should update type_report" do
    patch :update, id: @type_report, type_report: { description: @type_report.description, label: @type_report.label }
    assert_redirected_to type_report_path(assigns(:type_report))
  end

  test "should destroy type_report" do
    assert_difference('TypeReport.count', -1) do
      delete :destroy, id: @type_report
    end

    assert_redirected_to type_reports_path
  end
end
