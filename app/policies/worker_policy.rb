class WorkerPolicy < ApplicationPolicy
  attr_reader :worker, :record

  def initialize(worker, record)
    @worker = worker
    @record = record
  end

  def edit?
    record == worker
  end

  def work?
    record == worker
  end

  def scope
    Pundit.policy_scope!(worker, record.class)
  end

  class Scope
    attr_reader :worker, :scope

    def initialize(worker, scope)
      @worker = worker
      @scope = scope
    end

    def resolve
      scope
    end
  end

end




