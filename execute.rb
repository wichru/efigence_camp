module ToDo

class Executor
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

end
