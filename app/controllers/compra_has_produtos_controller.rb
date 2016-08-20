class CompraHasProdutosController < ApplicationController
  before_action :set_compra_has_produto, only: [:show, :edit, :update, :destroy]

  # GET /compra_has_produtos
  # GET /compra_has_produtos.json
  def index
    @compra_has_produtos = CompraHasProduto.all
  end

  # GET /compra_has_produtos/1
  # GET /compra_has_produtos/1.json
  def show
    compra_has_produto = CompraHasProduto.find(@compra_has_produto)
    @produto = Produto.find(compra_has_produto.produto_id)
    
    @compra = Compra.new
  end

  # GET /compra_has_produtos/new
  def new
    @compra_has_produto = CompraHasProduto.new
  end

  # GET /compra_has_produtos/1/edit
  def edit
  end

  # POST /compra_has_produtos
  # POST /compra_has_produtos.json
  def create
    @produto = params[:produto_id]
    @cliente = params[:cliente_id]
    @compra_has_produto = CompraHasProduto.new(compra_has_produto_params)

    respond_to do |format|
      if @compra_has_produto.save
        format.html { redirect_to @compra_has_produto, notice: 'Compra has produto was successfully created.' }
        format.json { render :show, status: :created, location: @compra_has_produto }
      else
        format.html { render :new }
        format.json { render json: @compra_has_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compra_has_produtos/1
  # PATCH/PUT /compra_has_produtos/1.json
  def update
    respond_to do |format|
      if @compra_has_produto.update(compra_has_produto_params)
        format.html { redirect_to @compra_has_produto, notice: 'Compra has produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @compra_has_produto }
      else
        format.html { render :edit }
        format.json { render json: @compra_has_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compra_has_produtos/1
  # DELETE /compra_has_produtos/1.json
  def destroy
    @compra_has_produto.destroy
    respond_to do |format|
      format.html { redirect_to compra_has_produtos_url, notice: 'Compra has produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_has_produto
      @compra_has_produto = CompraHasProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compra_has_produto_params
      params.require(:compra_has_produto).permit(:compra_id, :produto_id, :cliente_id)
    end
end
