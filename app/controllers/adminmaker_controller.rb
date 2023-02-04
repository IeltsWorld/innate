# frozen_string_literal: true

class AdminmakerController < ApplicationController
  before_action :authenticate_user!

  def update
    user = User.find(params[:user_id])
    user.adminmaker!
    redirect_back(fallback_location: root_path)
  end  
end
