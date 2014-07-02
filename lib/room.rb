class Room
  container = Array.new

  def describe
    "To your north you see a closet that is better than Stealth's. To the east"+
    " you see a closet that is better than Stealth's. To the south is an open "+
    "closet from which Stealth has just emerged. To the west is Isengard, "+
    "where the hobbits are being taken."

    container.each(&:describe)
  end
end