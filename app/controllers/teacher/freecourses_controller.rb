module Teacher 

    class FreecoursesController < ApplicationController
        before_action :authenticate_user!

        def new
          #  authorize current_user, policy_class: TeacherPolicy
            @freecourse = Freecourse.new(user: current_user)
        end  

        def create
            @freecourse = current_user.freecourses.new(freecourse_params)

            if @freecourse.save
                redirect_to teacher_dashboard_path
            else
                render :new
            end
        end

        def edit
         # authorize current_user, policy_class: TeacherPolicy
          @freecourse = Freecourse.find(params[:id])
        end

        def update

            @freecourse= Freecourse.find(params[:id])
            if @freecourse.update(freecourse_params)
                flash[:success] = "Freecourse item successfully updated!"
                redirect_to teacher_dashboard_path
            else
                flash.now[:error] = "To-do item update failed"
                render :edit
            end

        end

        def destroy 
                @freecourse = Freecourse.find(params[:id])
                @freecourse.destroy
                flash[:success] = "The Freecourse was successfully destroyed."
                redirect_to teacher_dashboard_path
        end 

        private

        def freecourse_params
            params.require(:freecourse).permit(:images, :name, :author, :headling, :description)
        end

    end 
end 
