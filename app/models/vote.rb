class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :team_1, class_name: :Team, foreign_key: :first_vote
  belongs_to :team_2, class_name: :Team, foreign_key: :second_vote
  belongs_to :team_3, class_name: :Team, foreign_key: :third_vote
end
