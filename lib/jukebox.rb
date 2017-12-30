require 'pry'
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
    num = index +1
    puts "#{num}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  to_play = gets.chomp
  song_nums = (1..songs.size).to_a
  num_strings = []
  song_nums.each do |num|
    str = num.to_s
    num_strings.push(str)
  end
  if songs.include?(to_play)
    puts "Playing #{to_play}."
  elsif num_strings.include?(to_play)
    index_to_play = to_play.to_i - 1
    song_by_num = songs[index_to_play]
    puts "Playing #{song_by_num}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    case command
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    end
    puts "Please enter a command:"
    command = gets.chomp
  end
  exit_jukebox
end
