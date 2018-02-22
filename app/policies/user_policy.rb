class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def edit?
    record.user == user
  end

  def user_dashboard?
    record.user == user
  end
end
