# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @freecourses = Freecourse.all
    @paidcourses = Paidcourse.all
  end

  def settings 
  end
end

