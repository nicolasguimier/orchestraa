require 'test_helper'

class InvitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get invitations_index_url
    assert_response :success
  end

  test "should get create" do
    get invitations_create_url
    assert_response :success
  end

  test "should get accept" do
    get invitations_accept_url
    assert_response :success
  end

  test "should get decline" do
    get invitations_decline_url
    assert_response :success
  end

end
