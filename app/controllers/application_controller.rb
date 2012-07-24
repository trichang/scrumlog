class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to root_url
  end

  before_filter :current_account
  
  def current_account
    unless request.subdomains.empty?
      @current_account = Account.first(:conditions => {:subdomain => request.subdomains.first})
      #TODO: raise Scrumlog::Errors::RecordNotFoundError if @current_account.nil?
    end
  end
end
