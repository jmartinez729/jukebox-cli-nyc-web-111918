songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
  
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp

  if user_response.to_i.between?(1, 9)
    puts "Playing #{songs[user_response.to_i - 1]}"
  elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help
  user_command = ""

  while user_command != "exit"
    puts "Please enter a command:"
    user_command = gets.downcase.strip
    
    case user_command
    when "help"
      help
    when "list"
     list(songs)
    when "play"
     play(songs)
    when "exit"
      exit_jukebox
    else
     puts "Invalid command, please try again"
    end 
  end
end 