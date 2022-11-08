# frozen_string_literal: true

# Class Paidcourse
class Paidcourse < ApplicationRecord
  validates :name, presence: true
  validates :headling, presence: true
  validates :description, presence: true
  validates :author, presence: true

  # no monetise
  # no geolocation
  has_many_attached :images
  has_many :reviews, as: :reviewable
  has_many :favourites, dependent: :destroy
  has_many :favourited_users, through: :favourites, source: :user
  has_many :reservations, dependent: :destroy

  # Hardcode fees of subscriptions here
  def default_image
    images.first
  end

  def average_rating
    reviews.average(:rating)
  end
end
