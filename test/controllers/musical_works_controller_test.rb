require 'test_helper'

class MusicalWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get musical_works_index_url
    assert_response :success
  end

  test "should get show" do
    get musical_works_show_url
    assert_response :success
  end

end
