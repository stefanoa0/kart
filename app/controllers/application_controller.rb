class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :categoria_produto
  def categoria_produto
    @categoria_produtos = CategoriaProduto.all
  end

  helper_method :current_user

  def current_user
    @current_user ||= Cliente.find(session[:cliente_id]) if session[:cliente_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end
  
end
