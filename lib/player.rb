module Porphyr
  class Player
    attr_accessor :environment

    module Commands
      def look *args
        puts environment.describe.word_wrap
      end

      def exit *args
        Kernel.exit(true)
      end

      def method_missing *cmd
        exits = environment.exits
        exits.keys.each do |dir| 
          if cmd[0] == dir
            send(:go, dir)  
            return
          end
        end

        # environment.send(cmd[0], cmd)
        puts "What?"
      end

      def go *args
        exits = environment.exits
        # exits   == {north: Room}
        # args    == ["go", "north"]
        # args[1] == "north"
        # exits["north"] == Room
        # Room.instance == *this class*
        self.environment = exits[args[0]].instance
        send(:look, [:look])
      end
    end

    def respond arg
      cmd = arg.split(" ")
      send(cmd[0], cmd)
    end

    def initialize
      self.extend Commands
    end
  end
end