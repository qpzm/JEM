class Team < ActiveRecord::Base
  has_many :users

  has_many :cards

  has_many :first_votes, class_name: :Vote, foreign_key: :team_1_id
  has_many :second_votes, class_name: :Vote, foreign_key: :team_2_id
  has_many :third_votes, class_name: :Vote, foreign_key: :team_3_id

  has_many :buy_orders, class_name: :Order, foreign_key: :buy_team_id
end
