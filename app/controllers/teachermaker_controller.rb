class TeachermakerController < ApplicationController
    before_action :authenticate_user!

    def update
        user = User.find(params[:user_id])
        user.teachermaker!
        redirect_back(fallback_location: root_path)
    end  

end
