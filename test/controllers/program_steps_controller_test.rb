require 'test_helper'

class ProgramStepsControllerTest < ActionDispatch::IntegrationTest
  test "should get fetch_program_steps" do
    get program_steps_fetch_program_steps_url
    assert_response :success
  end

end
