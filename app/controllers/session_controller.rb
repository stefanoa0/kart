class SessionController < ApplicationController
  def new

  end

  def create
    
    @cliente = Cliente.find_by_email(params[:session][:email])
    if @cliente && @cliente.password_digest == Digest::SHA1.hexdigest(params[:session][:password].to_s)
      session[:cliente_id] = @cliente.id
      redirect_to '/'
    else
      redirect_to 'login'
    end
  end

  def destroy
    session[:cliente_id] = nil
    redirect_to '/'
  end
end
