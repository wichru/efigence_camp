class ToDo
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
  end

  def print_spacer
    puts "==============="
  end

  def print_hello
    puts 'What to do?'
  end

  def parse_action
    @action = gets.chomp
  end

  def execute
    case @action
    when 'add'
      add
    when 'rm'
      rm
    when 'show'
      show
    when 'update'
      update
    when 'list'
      print_list
    when 'quit'
      exit
    end
  end

  def add
    puts 'Co dodać?'
    new_task = gets.chomp
    @tasks << new_task
    puts "Zadanie - #{new_task} zostało dodane"
  end

  def rm
    puts 'Co usunąć?'
    task_id = gets.chomp.to_i
    task = @tasks.delete_at(task_id)
    puts "Zadanie - #{task} zostało usunięte"
  end

  def show
    puts 'Co pokazać?'
    task_id = gets.chomp.to_i
    task = @tasks[task_id]
    puts "Zadanie - #{task}"
  end

  def update
    puts 'Co zaktualizować?'
    task_id = gets.chomp.to_i
    puts 'Nowe zadanie?'
    new_task = gets.chomp
    @tasks[task_id] = new_task
    puts "Zadanie - #{new_task}"
  end

  def print_list
    puts '----------'
    puts @tasks.join("\n")
    puts '----------'
  end
end

ToDo.new.run
