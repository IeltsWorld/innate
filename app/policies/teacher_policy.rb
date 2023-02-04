class TeacherPolicy < ApplicationPolicy
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end

  def index?
    user.teacher?
  end 

  def new?
    user.teacher?
  end 
  
  def show?
    user.teacher?
  end 

  def create?
    user.teacher?
  end 

  def update?
    user.teacher?
  end 
  
  def destroy?
    user.teacher?
  end 
end

