require 'test_helper'

class EnquiriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enquiry = enquiries(:one)
  end

  test "should get index" do
    get enquiries_url
    assert_response :success
  end

  test "should create enquiry" do
    assert_difference('Enquiry.count') do
      post enquiries_url, params: { enquiry: { name: @enquiry.name } }
    end

    assert_response 201
  end

  test "should show enquiry" do
    get enquiry_url(@enquiry)
    assert_response :success
  end

  test "should update enquiry" do
    patch enquiry_url(@enquiry), params: { enquiry: { name: @enquiry.name } }
    assert_response 200
  end

  test "should destroy enquiry" do
    assert_difference('Enquiry.count', -1) do
      delete enquiry_url(@enquiry)
    end

    assert_response 204
  end
end
