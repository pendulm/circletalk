class AccountController < ApplicationController
  # GET /login
  def login
    session[:back_to] = get_ref
    respond_to do |format|
      format.html
    end
  end

  # POST /login
  def validate
    account = User.authenticate(params[:name], params[:password])

    respond_to do |format|
      if account
        session[:account] = account.id
        url = session[:back_to] || '/'
        session[:back_to] = nil
        format.html { redirect_to(url) }
      else
        flash[:notice] = 'Login fail, invalid username or password.'
        format.html { render :action => "login" }
      end
    end
  end
      

  # DELETE /logout
  def logout
    reset_session
    respond_to do |format|
      format.html { redirect_to(forums_path, :notice => 'You have successful logout.') }
    end
  end

  def signup
  end

end
