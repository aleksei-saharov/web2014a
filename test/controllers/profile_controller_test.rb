require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get offer" do
    get :offer
    assert_response :success
  end

  test "should get checkAnswer" do
    get :checkAnswer
    assert_response :success
  end

  test "should get checkTheOwn" do
    get :checkTheOwn
    assert_response :success
  end

  test "should get outButton" do
    get :outButton
    assert_response :success
  end

  test "should get comeButton" do
    get :comeButton
    assert_response :success
  end

  test "should get logOut" do
    get :logOut
    assert_response :success
  end

  test "should get checkPartner" do
    get :checkPartner
    assert_response :success
  end

end
