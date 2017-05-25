require 'date'
class Task < Post

  def initialize
    super

    @due_date = Time.now
  end


  def read_from_console
    puts "Какая задача?"
    @text = STDIN.gets.chomp

    puts "К какому числу это надо сделать? формат: дд.мм.гггг Пример: 12.12.2012"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y, %m, %d, %H:%M:%S")} \n\r \n\r"
    deadline = "Выполнить до #{@due_date}"
    return [deadline, @text, time_string]
  end

end