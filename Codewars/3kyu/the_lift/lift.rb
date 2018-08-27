class Lift
  attr_accessor :direction, :position

  def initialize(queues, capacity)
    @position = 0
    @direction = 'up'
    @lift = []
    @queues = queues
    @capacity = capacity
    @results = [0]
  end

  def the_lift
    until(queues_are_empty?) do
      switch_direction if need_to_change_direction?

      send("step_#{@direction}")
    end

    @results << 0 unless @position.zero?
    @results
  end

  def step_up

  end

  def step_down

  end

  def need_to_change_direction?
    return false if bottom_floor? && going_up?
    return true if bottom_floor? && going_down?
    return true if top_floor? && going_up?
    return false if top_floor? && going_down?

    below, above = @queues.partition.with_index { |_, i| i < @position }
    above = above.drop(1)


    if going_up?
      above.flatten.empty? && @lift.select { |person| person > @position }.empty?
    else
      below.flatten.empty? && @lift.select { |person| person < @position }.empty?
    end
  end

  def going_up?
    @direction == 'up'
  end

  def going_down?
    @direction == 'down'
  end

  def top_floor?
    @position == (@queues.size - 1)
  end

  def bottom_floor?
    @position.zero?
  end

  def queues_are_empty?
    @queues.flatten.empty?
  end

  def switch_direction
    @lift_direction = (@lift_direction == 'up') ? 'down' : 'up'
  end
end
