class ProfilesController < ApplicationController
   # before_action :authenticate_user!
    before_action :authenticate_user! 

    def show 
        @user = User.find(params[:id])
        authorize @user, policy_class: ProfilePolicy
    end
   # def edit; end

    def update
     #   if @user.update(profile_params)
            @user = User.find(params[:id])
            authorize @user, policy_class: ProfilePolicy
    
            @user.update(profile_params)
            redirect_to profile_path(@user)
     #   else
       #     render :edit
      #  end
  
    end


    private

    def profile_params
      params.require(:profile).permit( :first_name, :last_name,:email, :avatar, :user_name, :description , :url, :phone, :default_user_image)
    end
end