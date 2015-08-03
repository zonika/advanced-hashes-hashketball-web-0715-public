# Write your code here!
require 'pry'
def game_hash
  game_hash={home:
    {team_name:"Brooklyn Nets", 
    colors:["Black", "White"], 
    players:[{player_name:"Alan Anderson", number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks:1, slam_dunks:1},
      {player_name:"Reggie Evans", number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks:12, slam_dunks:7},
      {player_name:"Brook Lopez", number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks:1, slam_dunks:15},
      {player_name:"Mason Plumlee", number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks:8, slam_dunks:5},
      {player_name:"Jason Terry", number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks:11, slam_dunks:1}
      ]},
    away:
    {team_name:"Charlotte Hornets", 
    colors:["Turquoise", "Purple"], 
    players:[{player_name:"Jeff Adrien", number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks:7, slam_dunks:2},
      {player_name:"Bismak Biyombo", number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks:15, slam_dunks:10},
      {player_name:"DeSagna Diop", number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks:5, slam_dunks:5},
      {player_name:"Ben Gordon", number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks:1, slam_dunks:0},
      {player_name:"Brendan Haywood", number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 22, blocks:5, slam_dunks:12}
      ]}}
end

def num_points_scored(player)
  game=game_hash
  pts=0
  game.each do |location, data|
    data[:players].each do |person|
      if person[:player_name]==player
        pts=person[:points]
      end
    end 
  end
  pts
end

def shoe_size(player)
  game=game_hash
  size=0
  game.each do |location, data|
    data[:players].each do |person|
      if person[:player_name]==player
        size=person[:shoe]
      end
    end 
  end
  size
end

def team_colors(team)
  game=game_hash
  colors=[]
  game.each do |location, data|
    if data[:team_name]==team
      colors=data[:colors]
    end
  end
  colors
end

def team_names
  game=game_hash
  teams=[]
  game.each do |location, data|
    teams.push(data[:team_name])
  end
  teams
end

def player_numbers(team)
  game=game_hash
  numbers=[]
  game.each do |location, data|
    if data[:team_name]==team
      data[:players].each do |person|
        numbers.push(person[:number])
      end
    end
  end
  numbers
end

def player_stats(player)
  game=game_hash
  stats={}
  game.each do |location, data|
    data[:players].each do |person|
      if person[:player_name]==player
        stats=person
        stats.delete(:player_name)
      end
    end 
  end
  stats
end

def big_shoe_rebounds
  game=game_hash
  r=0
  shoesize=0
  game.each do |location, data|
    data[:players].each do |person|
      if person[:shoe]>shoesize
        shoesize=person[:shoe]
        r=person[:rebounds]
      end
    end
  end
  r
end

