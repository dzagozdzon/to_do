require_relative './helpers'
require_relative './executor'

module ToDo
  class App
    def run
      loop do
        print_hello
        parse_action
        execute
        print_spacer
      end
    end

    private

    def initialize()
      @tasks = []
      @executor = ToDo::Executor.new(@tasks)
    end

    include ToDo::Helpers

    def parse_action
      @action = gets.chomp
    end

    def execute
      if @executor.respond_to?(@action)
        @executor.send(@action)
      end
    end
  end
end

ToDo::App.new.run
















