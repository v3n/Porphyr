require 'singleton'

class UpRoom
end

class Room2
  include Singleton

  attr_accessor :exits

  container = Array.new

  module Commands
    def method_missing

    end
  end

  def describe
    "Room2, woo, woo!" + 
    "\nExits: " + "[" + exits.keys.join(", ") + "]"

    # container.each(&:describe)
  end

  def initialize
    extend Commands

    self.exits = { south: Room }
  end
end

class Room
  include Singleton

  attr_accessor :exits

  container = Array.new

  module Commands
    def pull *args
      if args[1] == "lever"
        puts "You hear gears turning and stairs come out of the floor."
        exits["up"] = UpRoom
      end
    end

    def method_missing

    end
  end

  def describe
    "To your north you see a closet that is better than Stealth's. To the east"+
    " you see a closet that is better than Stealth's. To the south is an open "+
    "closet from which Stealth has just emerged. To the west is Isengard, "+
    "where the hobbits are being taken." +
    "\nExits: " + "[" + exits.keys.join(", ") + "]"

    # container.each(&:describe)
  end

  def initialize
    extend Commands

    self.exits = { north: Room2 }
  end
end