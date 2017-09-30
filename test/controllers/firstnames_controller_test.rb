require 'test_helper'

class FirstnamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firstname = firstnames(:one)
  end

  test "should get index" do
    get firstnames_url, as: :json
    assert_response :success
  end

  test "should create firstname" do
    assert_difference('Firstname.count') do
      post firstnames_url, params: { firstname: { bio: @firstname.bio, facebook: @firstname.facebook, img: @firstname.img, instagram: @firstname.instagram, lastname: @firstname.lastname, twitter: @firstname.twitter, website: @firstname.website } }, as: :json
    end

    assert_response 201
  end

  test "should show firstname" do
    get firstname_url(@firstname), as: :json
    assert_response :success
  end

  test "should update firstname" do
    patch firstname_url(@firstname), params: { firstname: { bio: @firstname.bio, facebook: @firstname.facebook, img: @firstname.img, instagram: @firstname.instagram, lastname: @firstname.lastname, twitter: @firstname.twitter, website: @firstname.website } }, as: :json
    assert_response 200
  end

  test "should destroy firstname" do
    assert_difference('Firstname.count', -1) do
      delete firstname_url(@firstname), as: :json
    end

    assert_response 204
  end
end
