class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :team
  has_many :cards

  has_many :posts
  has_many :replies

  has_many :sell_orders, class_name: :Order, foreign_key: :seller_id
  has_many :buy_orders, class_name: :Order, foreign_key: :buyer_id

  has_one :votes
end
