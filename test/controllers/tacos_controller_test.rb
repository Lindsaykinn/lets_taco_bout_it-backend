require "test_helper"

class TacosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taco = tacos(:one)
  end

  test "should get index" do
    get tacos_url, as: :json
    assert_response :success
  end

  test "should create taco" do
    assert_difference('Taco.count') do
      post tacos_url, params: { taco: { category_id: @taco.category_id, description: @taco.description, image: @taco.image, likes: @taco.likes, location: @taco.location, name: @taco.name, restaurant: @taco.restaurant, url: @taco.url } }, as: :json
    end

    assert_response 201
  end

  test "should show taco" do
    get taco_url(@taco), as: :json
    assert_response :success
  end

  test "should update taco" do
    patch taco_url(@taco), params: { taco: { category_id: @taco.category_id, description: @taco.description, image: @taco.image, likes: @taco.likes, location: @taco.location, name: @taco.name, restaurant: @taco.restaurant, url: @taco.url } }, as: :json
    assert_response 200
  end

  test "should destroy taco" do
    assert_difference('Taco.count', -1) do
      delete taco_url(@taco), as: :json
    end

    assert_response 204
  end
end
