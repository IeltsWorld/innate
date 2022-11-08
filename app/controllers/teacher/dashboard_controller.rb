module Teacher
    class DashboardController < ApplicationController
        before_action :authenticate_user!

        def index 
            authorize current_user, policy_class: TeacherPolicy
            @freecourses= current_user.freecourses
        end 

    end 
end