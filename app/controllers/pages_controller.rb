class PagesController < ApplicationController
  #skip_before_action :check_session, :only=>[:info]
skip_before_action :authenticate_user!

  def info
  end

  def index
  end

end
