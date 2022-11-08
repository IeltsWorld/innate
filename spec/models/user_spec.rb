require 'rails_helper'

RSpec.describe User, type: :model do
  it {should have_many (:favourites).dependent(:destroy) }
  it {should have_many (:favourited_freecourses).through(:favourites).source(:freecourse)}


end
