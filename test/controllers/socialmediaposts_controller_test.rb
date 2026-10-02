require "test_helper"

class SocialmediapostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @socialmediapost = socialmediaposts(:one)
  end

  test "should get index" do
    get socialmediaposts_url
    assert_response :success
  end

  test "should get new" do
    get new_socialmediapost_url
    assert_response :success
  end

  test "should create socialmediapost" do
    assert_difference("Socialmediapost.count") do
      post socialmediaposts_url, params: { socialmediapost: { content: @socialmediapost.content, description_pic: @socialmediapost.description_pic, description_story: @socialmediapost.description_story, pic: @socialmediapost.pic, scene_id: @socialmediapost.scene_id, socialmedia_name: @socialmediapost.socialmedia_name } }
    end

    assert_redirected_to socialmediapost_url(Socialmediapost.last)
  end

  test "should show socialmediapost" do
    get socialmediapost_url(@socialmediapost)
    assert_response :success
  end

  test "should get edit" do
    get edit_socialmediapost_url(@socialmediapost)
    assert_response :success
  end

  test "should update socialmediapost" do
    patch socialmediapost_url(@socialmediapost), params: { socialmediapost: { content: @socialmediapost.content, description_pic: @socialmediapost.description_pic, description_story: @socialmediapost.description_story, pic: @socialmediapost.pic, scene_id: @socialmediapost.scene_id, socialmedia_name: @socialmediapost.socialmedia_name } }
    assert_redirected_to socialmediapost_url(@socialmediapost)
  end

  test "should destroy socialmediapost" do
    assert_difference("Socialmediapost.count", -1) do
      delete socialmediapost_url(@socialmediapost)
    end

    assert_redirected_to socialmediaposts_url
  end
end
