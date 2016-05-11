def menu
	puts "1: Command Line"
	puts "2: Search"
	puts "3: Exit"
	puts "*****Make a Selection*****"
	user_input = gets.to_i
end

def command_line
	user_input = ''
	while user_input != 5
		puts "Command Line"
		puts "1: pwd"
		puts "2: cd"
		puts "3: ls"
		puts "4: mkdir"
		puts "5: Main Menu"
		user_input = gets.to_i
		command_options(user_input.to_i)
	end
end

def command_options(option)
	case option
	when 1
		man_pages('pwd')
	when 2
		man_pages('cd')
	when 3
		man_pages('ls')
	when 4
		man_pages('mkdir')
	when 5
		return
	else
		puts "Bad User Input, Please Try Again"
		command_line
	end
end

def man_pages(cmd)
	puts `man #{cmd}`
end

def search
	puts "Enter search terms:"
	user_input = gets.strip.downcase
	exit(0) if user_input == 'quit'
	man_pages(user_input)
end

while true
	case menu
	when 1
		command_line
	when 2
		search
	when 3
		exit(0)
	else
		puts "Bad User Input, Please Try Again"
		menu
	end
end
