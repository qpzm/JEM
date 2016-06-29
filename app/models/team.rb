class Team < ActiveRecord::Base
  has_many :users

  has_many :cards

  has_many :first_votes, -> { where team_1: self.id }, class_name: :Vote, foreign_key: :team_1_id
  has_many :second_votes, -> { where team_2: self.id }, class_name: :Vote, foreign_key: :team_2_id
  has_many :third_votes, -> { where team_3: self.id }, class_name: :Vote, foreign_key: :team_3_id
end
