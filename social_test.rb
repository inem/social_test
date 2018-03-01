class  SocialTest
  def initialize(questions, result_out)
    @result = 0
    @questions = questions
    @result_out = result_out
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
    print_result
  end
  def sum_result(user_input)
    @result += 2 if user_input == 1
    @result += 1 if user_input == 3
  end
  def print_result
    case @result
      when 0..3 then puts @result_out[0]
      when 4..8 then puts @result_out[1]
      when 9..13 then puts @result_out[2]
      when 14..18 then puts @result_out[3]
      when 19..24 then puts @result_out[4]
      when 25..29 then puts @result_out[5]
      when 30..32 then puts @result_out[6]
    end
  end
end






