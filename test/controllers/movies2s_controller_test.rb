require 'test_helper'

class Movies2sControllerTest < ActionController::TestCase
  setup do
    @movies2 = movies2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movies2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movies2" do
    assert_difference('Movies2.count') do
      post :create, movies2: { actor_id: @movies2.actor_id, description: @movies2.description, genre_id: @movies2.genre_id, name: @movies2.name }
    end

    assert_redirected_to movies2_path(assigns(:movies2))
  end

  test "should show movies2" do
    get :show, id: @movies2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movies2
    assert_response :success
  end

  test "should update movies2" do
    patch :update, id: @movies2, movies2: { actor_id: @movies2.actor_id, description: @movies2.description, genre_id: @movies2.genre_id, name: @movies2.name }
    assert_redirected_to movies2_path(assigns(:movies2))
  end

  test "should destroy movies2" do
    assert_difference('Movies2.count', -1) do
      delete :destroy, id: @movies2
    end

    assert_redirected_to movies2s_path
  end
end
