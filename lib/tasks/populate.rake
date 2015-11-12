task :sample_data => :environment do
  require 'faker'
end

namespace :db do
  desc "Populate database"
  task :populate => :environment do
    @league = League.create(
      name: "1. Bundesliga",
      sport: "Fußball"
    )
    games = Array.new
    34.times do |n|
      games.push Game.create(
        home: Faker::Team.name,
        points_home: Faker::Number.number(1),
        guest: Faker::Team.name,
        points_guest: Faker::Number.number(1),
        day: Faker::Date.forward(365),
        league_id: @league.id
      )
    end
    5.times do |n|
      @user = User.create(
        username: Faker::Internet.user_name,
        password: Faker::Internet.password,
        email: Faker::Internet.email,
        isadmin: false
      )
      Tip.create(
        points_home: Faker::Number.number(1),
        points_guest: Faker::Number.number(1),
        user_id: @user.id,
        game_id: games[Faker::Number.between(1, 34)].id
      )
    end
  end
end
