module Porphyr
  class Porphyr
    attr_accessor :player

    def initialize 
      super
      @player = Player.new
    end
  end
end

