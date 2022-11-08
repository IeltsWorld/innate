module Admin 

    class PaidcoursesController < ApplicationController
        before_action :authenticate_user!

        def new
            authorize current_user, policy_class: AdminPolicy
        end 


    end 
end 