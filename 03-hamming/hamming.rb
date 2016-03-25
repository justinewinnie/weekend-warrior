class Hamming
  def self.compute(a, b)
    # using an unless block! :D
    unless a.length == b.length
      raise ArgumentError.new("Cannot compare strands of differing lengths")
    end

    diff = 0
    index = 0
    a.each_char do |letter|
      if letter != b[index]
        diff += 1
      end
      index += 1
    end
    diff
  end
end
