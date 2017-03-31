require 'test_helper'

class TaxesControllerTest < ActionController::TestCase
  setup do
    @tax = taxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tax" do
    assert_difference('Tax.count') do
      post :create, tax: { description: @tax.description, name: @tax.name, periods: @tax.periods, start_date: @tax.start_date, tax_number: @tax.tax_number }
    end

    assert_redirected_to tax_path(assigns(:tax))
  end

  test "should show tax" do
    get :show, id: @tax
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tax
    assert_response :success
  end

  test "should update tax" do
    patch :update, id: @tax, tax: { description: @tax.description, name: @tax.name, periods: @tax.periods, start_date: @tax.start_date, tax_number: @tax.tax_number }
    assert_redirected_to tax_path(assigns(:tax))
  end

  test "should destroy tax" do
    assert_difference('Tax.count', -1) do
      delete :destroy, id: @tax
    end

    assert_redirected_to taxes_path
  end
end
