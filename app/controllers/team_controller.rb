class TeamController < ApplicationController
  def index
    @teams = Team.all
  end

  def buysell
    @sell_order_for_this_team = []
    @buy_order_for_this_team = []
    Team.find(params[:t_id]).cards.each do |c|
      c.orders.where(is_complete: false, is_sell: true).each do |o|
        @sell_order_for_this_team.push(o)
      end
      c.orders.where(is_complete: false, is_sell: false).each do |o|
        @buy_order_for_this_team.push(o)
      end
    end
    
  end
  
end
