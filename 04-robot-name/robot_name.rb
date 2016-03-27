class Robot
  def initialize
    @name = new_name
  end

  # name RX837
  def new_name
    # ("A".."Z").to_a.sample(2).join + (1..9).to_a.sample(3).join.to_s
    [*("A".."Z")].sample(2).join + [*(1..9)].sample(3).join.to_s
  end

  def name
    @name
  end

  def reset
    @name = new_name
  end
end
