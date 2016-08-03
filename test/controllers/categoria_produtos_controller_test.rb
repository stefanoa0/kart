require 'test_helper'

class CategoriaProdutosControllerTest < ActionController::TestCase
  setup do
    @categoria_produto = categoria_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_produto" do
    assert_difference('CategoriaProduto.count') do
      post :create, categoria_produto: { nome_categoria: @categoria_produto.nome_categoria }
    end

    assert_redirected_to categoria_produto_path(assigns(:categoria_produto))
  end

  test "should show categoria_produto" do
    get :show, id: @categoria_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoria_produto
    assert_response :success
  end

  test "should update categoria_produto" do
    patch :update, id: @categoria_produto, categoria_produto: { nome_categoria: @categoria_produto.nome_categoria }
    assert_redirected_to categoria_produto_path(assigns(:categoria_produto))
  end

  test "should destroy categoria_produto" do
    assert_difference('CategoriaProduto.count', -1) do
      delete :destroy, id: @categoria_produto
    end

    assert_redirected_to categoria_produtos_path
  end
end
