require 'rails_helper'

RSpec.describe Freecourse, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:headling) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:author) }
  # it { should validate_presence_of(:type) }
  it { should have_many (:favourites).dependent(:destroy) }
  it { should have_many (:favourited_users).through(:favourites).source(:user) }
end
