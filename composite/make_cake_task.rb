# frozen_string_literal: true

# Most abstract Make Cake Task that includes all subtasks
class MakeCakeTask < CompositeTask
  def initialize
    super('Make Cake')
    add_subtask(MakeButterTask.new)
    add_subtask(DoSmthElseTask1.new) # some abstract task
    add_subtask(DoSmthElseTask2.new) # some abstract task
    add_subtask(FinishTask.new) # some abstract task
    add_subtask(EatCakeTak.new) # some abstract task
  end
end
