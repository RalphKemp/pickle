class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def edit?
    record == user
  end

  def dashboard?
    record == user
  end
end
