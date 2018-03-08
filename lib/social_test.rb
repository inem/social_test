class  SocialTest
  def initialize(questions, result_out)
    @result = 0
    @questions = questions
  end

  def ask_question(i, q)
    puts "#{i+1}. #{q}"
    puts "1) да; \n2) нет; \n3) иногда."
  end

  def check_input
    user_input = nil
    until (1..3).include?(user_input)
      puts "Введите номер ответа нажмите Enter"
      user_input = STDIN.gets.to_i
    end
    user_input
  end

  def go_test
    @questions.each_with_index do |q, i|
      ask_question(i, q)
      user_input = check_input
      sum_result(user_input)
    end
    @result
  end

  def sum_result(user_input)
    @result += 2 if user_input == 1
    @result += 1 if user_input == 3
  end

end






