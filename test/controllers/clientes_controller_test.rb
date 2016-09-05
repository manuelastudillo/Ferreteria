require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get crear" do
    get :crear
    assert_response :success
  end

  test "should get editar" do
    get :editar
    assert_response :success
  end

end
