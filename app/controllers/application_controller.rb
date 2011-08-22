class ApplicationController < ActionController::Base
  before_filter :current_account
  protect_from_forgery

  def current_account
    @account = User.find(session[:account])
  rescue ActiveRecord::RecordNotFound
    @account = User.new
    session[:account] = @account.id
  end

  def get_ref
    request.env['HTTP_REFERER']
  end
end
