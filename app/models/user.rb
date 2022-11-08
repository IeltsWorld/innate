# frozen_string_literal: true

# Class User
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy
  has_one_attached :avatar
  has_many :favourites, dependent: :destroy
  has_many :favourited_freecourses, through: :favourites, source: :freecourse
  has_many :reviews, dependent: :destroy
  has_many :freecourses, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}".squish
  end
  # after_create :create_profile,
  # def create_profile
  #   self.profile = Profile.new
  #   save!
  # end

  # defining roles

  # if not working then remove the .freeze method on ROLES array
  ROLES = %w[student teacher admin].freeze
  validates :role, inclusion: { in: ROLES }, allow_nil: true
  def teacher?
    role == 'teacher'
  end

  def admin?
    role == 'admin'
  end

  def student?
    role == 'student'
  end

  def teachermaker!
    update!(role: 'teacher')
  end

  def adminmaker!
    update!(role: 'admin')
  end

  def studentmaker!
    update!(role: 'student')
  end

  def member?
    role.blank?
  end
end
