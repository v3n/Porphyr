module Porphyr
  class Player
    module Commands
      def self.look *args
        puts "Hello"
      end

      def self.exit *args
        Kernel.exit(true)
      end

      def self.method_missing *args
        puts "What?"
      end
    end

    def respond arg
      cmd = arg.split(" ")
      Commands.send(cmd[0], cmd)
    end
  end
end