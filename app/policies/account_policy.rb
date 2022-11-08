# frozen_string_literal: true

# Class AccountPolicy
class AccountPolicy < ApplicationPolicy
  # NOTE: Be explicit about which records you allow access to!
  # def resolve
  #   scope.all
  # end

  def show?
    user == record
  end

  def update?
    user == record
  end
end
