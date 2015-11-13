class Game < ActiveRecord::Base
  belongs_to :league

  def game_description
    "#{home} : #{guest}"
  end
end
