# frozen_string_literal: true

class PasswordsController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user, policy_class: AccountPolicy
  end

  def update
    @user = User.find(params[:id])
    authorize @user, policy_class: AccountPolicy

    @user.update(password_params)
    sign_in(@user, bypass: true)
    redirect_to password_path(@user)
  end
  
  private 

  def password_params
    params.require(:password).permit(:password)
  end
end

