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
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    #index = 1
    songs.each.with_index(1) do |elem, i|
        puts "#{i}. #{elem}"
    end

end

def play(songs)
    puts "Please enter a song name or number:"
    selected_song = gets.strip
    if selected_song.to_i >= 1 && selected_song.to_i <= songs.length
        #binding.pry
        puts "Playing #{songs[selected_song.to_i - 1]}"
    elsif songs.include?(selected_song)
        puts "Playing #{selected_song}"
    else puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs) 
  until false   do 
    puts "Please enter a command:"
    selected_com = gets.strip
    if selected_com == "exit"
        exit_jukebox
         break 
    elsif selected_com == "play"
        play(songs)
    elsif selected_com == "help"
        help
    elsif selected_com == "list"
        list(songs)
    else 
        puts "invalid entry"
    end
  end
end