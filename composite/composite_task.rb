# frozen_string_literal: true

# composite class for all composite tasks to inherit behaviour
class CompositeTask < Task
  attr_reader :subtasks

  def initialize(name)
    super(name)
    @subtasks = []
  end

  def add_subtask(task)
    subtasks << task unless subtasks.include?(task)
  end

  def delete_subtask(task)
    subtasks.delete(task)
  end

  def time_required
    time = 0.0
    subtasks.each { |task| time += task.time_required }
  end
end
