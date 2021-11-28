# frozen_string_literal: true

# Leaf class
class MixTask < Task
  def initialize
    super('Mix that batter up!')
  end

  def time_required
    3.0 # mix for 3 minutes
  end
end
