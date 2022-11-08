class StudentPolicy < ApplicationPolicy
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end

    def index?
      user.student?
    end 

    def show?
      user.student?
    end 
    def create?
      user.student?
    end 
    def update?
      user.student?
    end 
    def destroy?
      user.student?
    end 


    def new?
      user.student?
    end 


end
