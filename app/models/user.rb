class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :team
  has_many :cards

  has_many :posts
  has_many :replies

  has_many :sell_orders
  has_many :buy_orders

  has_one :votes
end
