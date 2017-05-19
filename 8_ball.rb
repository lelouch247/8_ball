#user enters question
#8ball returns an answer
#option to quit
#advanced!
#user can input new answers
#reset hash bank to original
#8ball can print all the answers
#maybe too advanced but add script arguments so that when program restarts it won't start normally but go straight to input new answers


@magic_8_ball_answers = [
"It is certain",
"It is decidedly so",
"Without a doubt",
"Yes definitely",
"You may rely on it",
"As I see it, yes",
"Most likely",
"Outlook good",
"Yes",
"Signs point to yes",
"Reply hazy try again",
"Ask again later",
"Better not tell you now",
"Cannot predict now",
"Concentrate and ask again",
"Don't count on it",
"My reply is no",
"My sources say no",
"Outlook not so good",
"Very doubtful",
]
#@user_questions = @magic_8_ball_answers.clone
@user_answers = []


def magic_8_ball_input
  puts "Please ask a question"
  users_input = gets.chomp.downcase
  puts "working..."
  sleep(2)
  print "\nYour question: "
  puts users_input
  print "\nMagic 8 ball answer: "

  if /is\sthe\scake\sa\slie?/.match(users_input)
    puts "The cake is a lie"
  elsif
  @magic_8_ball_answers << @user_answers
  puts @magic_8_ball_answers.flatten.uniq.sample
  end

  puts " "
  magic_8_ball_menu
end

def exit_8_ball_menu
  puts "Do you wish to exit? \nPlease choose a number."
  puts "1) Yes \n2) No"
  yes_no = gets.chomp.to_i
      case yes_no
    when 1
      puts "Good-Bye"
    when 2
      magic_8_ball_menu
    else
      puts "Error: Please type 1 or 2."
      exit_contacts_menu

  end
end

def magic_8_ball_enter_answers
  puts "Please enter your answer"
enter_answer = gets.chomp
@user_questions << enter_answer
magic_8_ball_menu
end

def magic_8_ball_delete_answer
  puts @user_questions
  puts "\nPlease type in an answer"
  answer_to_be_deleted = gets.chomp
  if @user_questions.include?(answer_to_be_deleted)
    @user_questions.delete(answer_to_be_deleted)
    magic_8_ball_menu
  end
  magic_8_ball_menu
end

def magic_8_ball_reset
@user_questions.clear
magic_8_ball_menu
end

def magic_8_ball_answer_bank
puts @user_questions
magic_8_ball_menu
end

#puts "Welcome to the magic 8 ball"

def magic_8_ball_menu
  puts "please select an option
  1) Use 8 ball
  2) Enter answers into 8 ball
  3) Delete entered answers from 8 ball
  4) Reset 8 ball
  5) See answer bank
  6) Quit"
  user_input = gets.chomp.to_i
  case user_input
  when 1
    magic_8_ball_input
  when 2
    magic_8_ball_enter_answers
  when 3
    magic_8_ball_delete_answer
  when 4
    magic_8_ball_reset
  when 5
    magic_8_ball_answer_bank
  when 6
    exit_8_ball_menu
  when 7
    m8b_a
  else
    puts 'Error: please enter a valid input'
    magic_8_ball_menu
  end
end
magic_8_ball_menu
