class OrangeTree

  attr_accessor :age, :lifespan, :orange_count, :height, :bears_fruit_at_age
  def initialize
    @age = 0
    @lifespan = 100
    @orange_count = 0
    @height = 1
    @bears_fruit_at_age = 5
  end

  def has_fruit?
    @age > 4
  end

  def one_year_passes
    @age += 1
    produce_fruit if @age >= 5
  end

  def pick_orange
    @orange_count -= 1
  end

  def end_of_life
    @age >= 100
  end

  private
  def produce_fruit
    if age < 5
      raise "Error: not old enough to bear fruit"
    elseif age == 5
      @orange_count = 10
    else
      @orange_count += 10
    end
  end

end