class Card < ActiveRecord::Base
  belongs_to :team
  belongs_to :user

  has_many :orders
end
