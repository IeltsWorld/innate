class AdminPolicy < ApplicationPolicy
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end

    def index?
      user.admin?
    end 

    def show?
      user.admin?
    end 
    def create?
      user.admin?
    end 
    def update?
      user.admin?
    end 
    def destroy?
      user.admin?
    end 

    def new?
      user.admin?
    end 

end
