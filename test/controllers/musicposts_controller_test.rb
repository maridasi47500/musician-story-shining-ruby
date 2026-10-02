require "test_helper"

class MusicpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musicpost = musicposts(:one)
  end

  test "should get index" do
    get musicposts_url
    assert_response :success
  end

  test "should get new" do
    get new_musicpost_url
    assert_response :success
  end

  test "should create musicpost" do
    assert_difference("Musicpost.count") do
      post musicposts_url, params: { musicpost: { artist: @musicpost.artist, composer: @musicpost.composer, description_music: @musicpost.description_music, description_story: @musicpost.description_story, music: @musicpost.music, scene_id: @musicpost.scene_id, title: @musicpost.title } }
    end

    assert_redirected_to musicpost_url(Musicpost.last)
  end

  test "should show musicpost" do
    get musicpost_url(@musicpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_musicpost_url(@musicpost)
    assert_response :success
  end

  test "should update musicpost" do
    patch musicpost_url(@musicpost), params: { musicpost: { artist: @musicpost.artist, composer: @musicpost.composer, description_music: @musicpost.description_music, description_story: @musicpost.description_story, music: @musicpost.music, scene_id: @musicpost.scene_id, title: @musicpost.title } }
    assert_redirected_to musicpost_url(@musicpost)
  end

  test "should destroy musicpost" do
    assert_difference("Musicpost.count", -1) do
      delete musicpost_url(@musicpost)
    end

    assert_redirected_to musicposts_url
  end
end
