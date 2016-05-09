require 'test_helper'

class PlantsControllerTest < ActionController::TestCase
  setup do
    @plant = plants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plant" do
    assert_difference('Plant.count') do
      post :create, plant: { family: @plant.family, farsi_name: @plant.farsi_name, geo_origin: @plant.geo_origin, hardness: @plant.hardness, latin_name: @plant.latin_name, max_height: @plant.max_height, max_light: @plant.max_light, max_moisture: @plant.max_moisture, max_temp: @plant.max_temp, min_height: @plant.min_height, min_light: @plant.min_light, min_moisture: @plant.min_moisture, min_temp: @plant.min_temp, scientific_name: @plant.scientific_name }
    end

    assert_redirected_to plant_path(assigns(:plant))
  end

  test "should show plant" do
    get :show, id: @plant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plant
    assert_response :success
  end

  test "should update plant" do
    patch :update, id: @plant, plant: { family: @plant.family, farsi_name: @plant.farsi_name, geo_origin: @plant.geo_origin, hardness: @plant.hardness, latin_name: @plant.latin_name, max_height: @plant.max_height, max_light: @plant.max_light, max_moisture: @plant.max_moisture, max_temp: @plant.max_temp, min_height: @plant.min_height, min_light: @plant.min_light, min_moisture: @plant.min_moisture, min_temp: @plant.min_temp, scientific_name: @plant.scientific_name }
    assert_redirected_to plant_path(assigns(:plant))
  end

  test "should destroy plant" do
    assert_difference('Plant.count', -1) do
      delete :destroy, id: @plant
    end

    assert_redirected_to plants_path
  end
end
