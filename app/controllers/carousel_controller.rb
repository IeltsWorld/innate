class CarouselController < ApplicationController
    def index
       # @freecourse = Freecourse.find_by(name: params[:name])
       @freecourse = Freecourse.find(params[:id])
    end 
    
end
