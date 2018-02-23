class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    true
  end

  def edit?
    record == user
  end

  def dashboard?
    record == user
  end
end
