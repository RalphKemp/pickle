class WorkerPolicy < ApplicationPolicy

  attr_reader :worker, :record
  class Scope < Scope
    def resolve
      scope.where(worker: worker)
    end
  end

  def edit?
    record == worker
  end

  def work?
    record == worker
  end
end
