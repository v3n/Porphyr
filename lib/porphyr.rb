module Porphyr
  class Porphyr
    attr_accessor :player

    def initialize 
      super
      @player = Player.new
      @player.environment = Room.instance
    end
  end
end
