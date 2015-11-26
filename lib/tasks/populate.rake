task :sample_data => :environment do
  require 'faker'
end

namespace :db do
  desc "Populate database"
  task :populate => :environment do
    User.create(
      username: "admin",
      password: "admin",
      email: "admin@admin.de",
      isadmin: true
    )
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
        date: Faker::Time.forward(365, :afternoon),
        matchday: Faker::Number.number(1).to_i + 1,
        league_id: @league.id
      )
    end
    5.times do |n|
      @user = User.create(
        username: Faker::Internet.user_name,
        password: Faker::Internet.password,
        email: Faker::Internet.email
      )
      Tip.create(
        points_home: Faker::Number.number(1),
        points_guest: Faker::Number.number(1),
        user_id: @user.id,
        game_id: games[Faker::Number.between(0, 33)].id
      )
    end
  end
end
