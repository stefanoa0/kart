require 'test_helper'

class CompraHasProdutosControllerTest < ActionController::TestCase
  setup do
    @compra_has_produto = compra_has_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compra_has_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compra_has_produto" do
    assert_difference('CompraHasProduto.count') do
      post :create, compra_has_produto: { compra_id: @compra_has_produto.compra_id, produto_id: @compra_has_produto.produto_id }
    end

    assert_redirected_to compra_has_produto_path(assigns(:compra_has_produto))
  end

  test "should show compra_has_produto" do
    get :show, id: @compra_has_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compra_has_produto
    assert_response :success
  end

  test "should update compra_has_produto" do
    patch :update, id: @compra_has_produto, compra_has_produto: { compra_id: @compra_has_produto.compra_id, produto_id: @compra_has_produto.produto_id }
    assert_redirected_to compra_has_produto_path(assigns(:compra_has_produto))
  end

  test "should destroy compra_has_produto" do
    assert_difference('CompraHasProduto.count', -1) do
      delete :destroy, id: @compra_has_produto
    end

    assert_redirected_to compra_has_produtos_path
  end
end
