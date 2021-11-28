# frozen_string_literal: true

# Make Batter Composite task
class MakeBatterTask < CompositeTask
  def initialize
    super('Make batter')
    add_subtask(AddDryIngredientsTask.new)
    add_subtask(AddLiquidsTask.new)
    add_subtask(MixTask.new)
  end
end
