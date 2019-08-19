require "pry"

def game_hash
  basketball_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [{
        :player_name => "Alan Anderson",
        :stats => {
          :number => 0, 
          :shoe => 16, 
          :points => 22, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 3, 
          :blocks => 1, 
          :slam_dunks => 1 
          }
        },{
        :player_name => "Reggie Evans",
        :stats => {
          :number => 30, 
          :shoe => 14, 
          :points => 12, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 12, 
          :blocks => 12, 
          :slam_dunks => 7 
          }
        },{
        :player_name => "Brook Lopez",
        :stats => {
          :number => 11, 
          :shoe => 17, 
          :points => 17, 
          :rebounds => 19, 
          :assists => 10,   
          :steals => 3, 
          :blocks => 1, 
          :slam_dunks => 15
          }
        },{
        :player_name => "Mason Plumlee",
        :stats => {
          :number => 1, 
          :shoe => 19, 
          :points => 26, 
          :rebounds => 11, 
          :assists => 6, 
          :steals => 3, 
          :blocks =>8, 
          :slam_dunks => 5 
          }
        },{
        :player_name => "Jason Terry",
        :stats => {
          :number => 31, 
          :shoe => 15, 
          :points => 19, 
          :rebounds => 2, 
          :assists => 2, 
          :steals => 4, 
          :blocks => 11, 
          :slam_dunks => 1 
          }
        }
      ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [{
        :player_name => "Jeff Adrien",
        :stats => {
          :number => 4, 
          :shoe => 18, 
          :points => 10, 
          :rebounds => 1, 
          :assists => 1, 
          :steals => 2, 
          :blocks => 7, 
          :slam_dunks => 2
          }
        },{
        :player_name => "Bismack Biyombo",
        :stats => {
          :number => 0, 
          :shoe => 16, 
          :points => 12, 
          :rebounds => 4, 
          :assists => 7, 
          :steals => 22, 
          :blocks => 15, 
          :slam_dunks => 10 
          }
        },{
        :player_name => "DeSagna Diop",
        :stats => {
          :number => 2, 
          :shoe => 14, 
          :points => 24, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 4, 
          :blocks => 5, 
          :slam_dunks => 5
          }
        },{
        :player_name => "Ben Gordon",
        :stats => {
          :number => 8, 
          :shoe => 15, 
          :points => 33, 
          :rebounds => 3, 
          :assists => 2, 
          :steals => 1, 
          :blocks => 1, 
          :slam_dunks => 0
          }
        },{
        :player_name =>"Kemba Walker", 
        :stats => {
          :number => 33, 
          :shoe => 15, 
          :points => 6, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 7, 
          :blocks => 5, 
          :slam_dunks => 12
          }
        }
      ]
    }
  }
  basketball_hash
end

def num_points_scored(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_info|
      return player_info[:stats][:points] if player_info[:player_name] == name
    end
  end
end 


def shoe_size (name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_info|
      return player_info[:stats][:shoe] if player_info[:player_name] == name
    end
  end
end 

def team_colors (team)
  game_hash.each do |location, team_data|
    return team_data[:colors] if team_data[:team_name] == team
  end
end 

def team_names
  game_hash.map {|location, data| data[:team_name]}
end

def player_numbers (team)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team
    return team_data[:players].map {|player| player[:stats][:number]}
    end 
  end
end

def player_stats(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      if player[:player_name] == name
        return player[:stats]
      end
    end
  end
end

def big_shoe_rebounds
  biggest = 0
  rebounds = 0  
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      size = player[:stats][:shoe]
      if size > biggest
        biggest = size
        rebounds = player[:stats][:rebounds]
      end
    end
  end
  rebounds
end

def most_points_scored
  most_points = 0
  mvp = ''
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      points = player[:stats][:points]
      if points > most_points
        most_points = points
        mvp = player[:player_name]
      end
    end
  end
  mvp
end

def winning_team
  winner = ''
  total = 0
  game_hash.each do |location, team_data|
    team_sum = 0 
    team_name = team_data[:team_name]
    team_data[:players].each do |player|
      team_points = player[:stats][:points]
      team_sum += team_points 
    end
    winner, total = team_name, team_sum if team_sum > total
  end
  winner
end

def player_with_longest_name
  most_letters = 0
  longest_name = ''
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      player_name = player[:player_name]
      name_length = player[:player_name].length
      binding.pry
      if points > most_points
        most_points = points
        mvp = player[:player_name]
      end
    end
  end
  mvp
end

player_with_longest_name