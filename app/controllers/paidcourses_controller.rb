# frozen_string_literal: true

class PaidcoursesController < ApplicationController
  def show
     # @freecourse = Freecourse.find_by(name: params[:name])
     @paidcourse = Paidcourse.find(params[:id])
  end
end

