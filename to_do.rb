require_relative 'helpers'

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
    @executor = ToDo::Executor.new(@task)
  end

  include ToDo::Helpers

  def parse_action
    @action = gets.chomp
  end


  def print_list
    puts '----------'
    puts @tasks.join("\n")
    puts '----------'
  end

end

ToDo.new.run
