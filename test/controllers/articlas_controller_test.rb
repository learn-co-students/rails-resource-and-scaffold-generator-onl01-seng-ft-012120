require 'test_helper'

class ArticlasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articla = articlas(:one)
  end

  test "should get index" do
    get articlas_url
    assert_response :success
  end

  test "should get new" do
    get new_articla_url
    assert_response :success
  end

  test "should create articla" do
    assert_difference('Articla.count') do
      post articlas_url, params: { articla: { body: @articla.body, title: @articla.title } }
    end

    assert_redirected_to articla_url(Articla.last)
  end

  test "should show articla" do
    get articla_url(@articla)
    assert_response :success
  end

  test "should get edit" do
    get edit_articla_url(@articla)
    assert_response :success
  end

  test "should update articla" do
    patch articla_url(@articla), params: { articla: { body: @articla.body, title: @articla.title } }
    assert_redirected_to articla_url(@articla)
  end

  test "should destroy articla" do
    assert_difference('Articla.count', -1) do
      delete articla_url(@articla)
    end

    assert_redirected_to articlas_url
  end
end
