class WorkerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def edit?
    record == user
  end

  def work?
    record == user
  end
end
