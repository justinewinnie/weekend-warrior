class Hamming
  def self.compute(a, b)
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
