class WorkerPolicy < ApplicationPolicy

  attr_reader :worker, :record

  def initialize(worker, record)
    @worker = worker
    @record = record
  end

  class Scope < Scope
    attr_reader :worker, :scope

    def initialize(worker, scope)
      @worker = worker
      @scope = scope
    end

    def resolve
      scope
    end
  end

   def edit?
    record == worker
  end

  def work?
    record == worker
  end

end
