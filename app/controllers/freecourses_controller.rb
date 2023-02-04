# frozen_string_literal: true

class FreecoursesController < ApplicationController
  def show
    # @freecourse = Freecourse.find_by(name: params[:name])
    @freecourse = Freecourse.find(params[:id])
  end
end

