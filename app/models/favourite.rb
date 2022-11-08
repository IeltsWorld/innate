# frozen_string_literal: true

# Class Favourite
class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :freecourse
end
