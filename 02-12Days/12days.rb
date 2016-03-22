class Xmas
  require "ordinalize"

  G0 = "a partridge in a pear tree"
  G1 = "and a partridge in a pear tree"
  G2 = "two turtle doves"
  G3 = "three french hens"
  G4 = "four calling birds"
  G5 = "FIVE GOLDEN RINGS"
  G6 = "six geese-a-laying"
  G7 = "seven swans-a-swimming"
  G8 = "eight maids-a-milking"
  G9 = "nine ladies dancing"
  G10 = "ten lords-a-leaping"
  G11 = "eleven pipers piping"
  G12 = "twelve drummers drumming"

  def self.first_line(line_no)
    if line_no == 12
      "On the twelfth day of Christmas my true love gave to me\n"
    else "On the #{line_no.ordinalize} day of Christmas my true love gave to me\n"
    end
  end

  # L1 = "On the NTH day of Christmas my true love gave to me\n"
  # LINES[verse] = ["On the #{L(n.ordinalize)} day of Christmas my true love gave to me\n"]

  def self.gifts(index)
  yell = "FIVE GOLDEN RINGS"
    gifts = [
      ["#{G0}"],
      ["#{G2}", "#{G1}"],
      ["#{G3}", "#{G2}", "#{G1}"],
      ["#{G4}", "#{G3}", "#{G2}", "#{G1}"],
      [yell, "#{G4}", "#{G3}", "#{G2}", "#{G1}"],
      ["#{G6}", yell, "#{G4}", "#{G3}", "#{G2}", "#{G1}"],
      ["#{G7}", "#{G6}", yell, "#{G4}", "#{G3}", "#{G2}", "#{G1}"],
      ["#{G8}", "#{G7}", "#{G6}", yell, "#{G4}", "#{G3}", "#{G2}", "#{G1}"],
      ["#{G9}", "#{G8}", "#{G7}", "#{G6}", yell, "#{G4}", "#{G3}", "#{G2}", "#{G1}"],
      ["#{G10}", "#{G9}", "#{G8}", "#{G7}", "#{G6}", yell, "#{G4}", "#{G3}", "#{G2}", "#{G1}"],
      ["#{G11}", "#{G10}", "#{G9}", "#{G8}", "#{G7}", "#{G6}", yell, "#{G4}", "#{G3}", "#{G2}", "#{G1}"],
      ["#{G12}", "#{G11}", "#{G10}", "#{G9}", "#{G8}", "#{G7}", "#{G6}", yell, "#{G4}", "#{G3}", "#{G2}", "#{G1}"]
    ]
    gifts[index]
  end

  def self.verse(index)
# #  loop: 12 times
#       # add first_line(line_no += 1)
#       # add "/n"
#     # end
#     verse = []
#
#     12.times do |verse|
#       line_no = 0
#       "#{first_line(line_no += 1}(#{G[line_no += 1]}#{"\n"})*line_no"
#     end


    verse = [
      "#{first_line(1)}#{G0}",
      "#{first_line(2)}#{G2}#{"\n"}#{G1}",
      "#{first_line(3)}#{G3}#{"\n"}#{G2}#{"\n"}#{G1}",
      "#{first_line(4)}#{G4}#{"\n"}#{G3}#{"\n"}#{G2}#{"\n"}#{G1}",
      "#{first_line(5)}#{G5}#{"\n"}#{G4}#{"\n"}#{G3}#{"\n"}#{G2}#{"\n"}#{G1}",
      "#{first_line(6)}#{G6}#{"\n"}#{G5}#{"\n"}#{G4}#{"\n"}#{G3}#{"\n"}#{G2}#{"\n"}#{G1}",
      "#{first_line(7)}#{G7}#{"\n"}#{G6}#{"\n"}#{G5}#{"\n"}#{G4}#{"\n"}#{G3}#{"\n"}#{G2}#{"\n"}#{G1}",
      "#{first_line(8)}#{G8}#{"\n"}#{G7}#{"\n"}#{G6}#{"\n"}#{G5}#{"\n"}#{G4}#{"\n"}#{G3}#{"\n"}#{G2}#{"\n"}#{G1}",
      "#{first_line(9)}#{G9}#{"\n"}#{G8}#{"\n"}#{G7}#{"\n"}#{G6}#{"\n"}#{G5}#{"\n"}#{G4}#{"\n"}#{G3}#{"\n"}#{G2}#{"\n"}#{G1}",
      "#{first_line(10)}#{G10}#{"\n"}#{G9}#{"\n"}#{G8}#{"\n"}#{G7}#{"\n"}#{G6}#{"\n"}#{G5}#{"\n"}#{G4}#{"\n"}#{G3}#{"\n"}#{G2}#{"\n"}#{G1}",
      "#{first_line(11)}#{G11}#{"\n"}#{G10}#{"\n"}#{G9}#{"\n"}#{G8}#{"\n"}#{G7}#{"\n"}#{G6}#{"\n"}#{G5}#{"\n"}#{G4}#{"\n"}#{G3}#{"\n"}#{G2}#{"\n"}#{G1}",
      "#{first_line(12)}#{G12}#{"\n"}#{G11}#{"\n"}#{G10}#{"\n"}#{G9}#{"\n"}#{G8}#{"\n"}#{G7}#{"\n"}#{G6}#{"\n"}#{G5}#{"\n"}#{G4}#{"\n"}#{G3}#{"\n"}#{G2}#{"\n"}#{G1}"
    ]

    verse[index]
  end

  def self.sing(days)
    return self.verse[days]
    #   whole_song = File.read(File.dirname(__FILE__) + '/12days.txt')
    # whole_song.strip
  end
end
