module Admin
    class DashboardController < ApplicationController
        before_action :authenticate_user!

        def index 
            authorize current_user, policy_class: AdminPolicy
        end 

    end 
end