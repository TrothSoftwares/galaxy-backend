require 'test_helper'

class InstallmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @installment = installments(:one)
  end

  test "should get index" do
    get installments_url
    assert_response :success
  end

  test "should create installment" do
    assert_difference('Installment.count') do
      post installments_url, params: { installment: {  } }
    end

    assert_response 201
  end

  test "should show installment" do
    get installment_url(@installment)
    assert_response :success
  end

  test "should update installment" do
    patch installment_url(@installment), params: { installment: {  } }
    assert_response 200
  end

  test "should destroy installment" do
    assert_difference('Installment.count', -1) do
      delete installment_url(@installment)
    end

    assert_response 204
  end
end
