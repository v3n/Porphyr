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

      def method_missing *args
        puts "What?"
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