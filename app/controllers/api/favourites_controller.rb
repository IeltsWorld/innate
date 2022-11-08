
module Api
    class FavouritesController < ApplicationController
        protect_from_forgery with: :null_session


        def create 
            favourite = Favourite.create!(favourite_params)
            respond_to do |format|
                format.json do 
                    render json: favourite.to_json, status: :created
                end 
            end 
        end 

        def destroy
            favourite = Favourite.find(params[:id])
            favourite.destroy!
            respond_to do |format|
                format.json do 
                    render json: favourite.to_json, status: 204
                end 
            end 


        end 

        private
        def favourite_params
            params.permit(:user_id, :freecourse_id)
        end 
    end


end 