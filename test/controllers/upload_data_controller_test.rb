require 'test_helper'

class UploadDataControllerTest < ActionDispatch::IntegrationTest
  test "should get upload_file" do
    get upload_data_upload_file_url
    assert_response :success
  end

  test "should get load_data" do
    get upload_data_load_data_url
    assert_response :success
  end

end
