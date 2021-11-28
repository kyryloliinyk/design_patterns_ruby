# frozen_string_literal: true

# Leaf class
class AddDryIngredientsTask < Task
  def initialize
    super('add dry ingredients')
  end

  def time_required
    1.0 # 1 minute to add flour & sugar
  end
end
