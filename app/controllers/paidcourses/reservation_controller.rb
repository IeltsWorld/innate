module Paidcourses
    class ReservationController < ApplicationController
        before_action :authenticate_user!
        def new 
            @paidcourse = Paidcourse.find(params[:name])
            @reservation = @paidcourse.reservations.new
        end 

        private
        def new_reservation_params
            params.permit(:checkin_date , :checkout_date, :timeslot, :total)
        end 

    end 

end 
