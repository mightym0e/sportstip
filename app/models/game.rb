class Game < ActiveRecord::Base
  belongs_to :league

  def game_description
    "#{home} : #{guest}"
  end

  def self.search(search)
    if search
      where(['home LIKE ? or guest like ?', "%#{search}%", "%#{search}%"])
    else
      all
    end
  end
  
end
