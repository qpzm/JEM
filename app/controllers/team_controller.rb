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
    end
 
    Order.where(is_complete: false, is_sell: false, buy_team_id: params[:t_id]).order('price desc').each do |o|
      @buy_order_for_this_team.push(o)
    end   
  end

  def buy
    t_id = params[:t_id]
    o = Order.find(params[:order_id].to_i)
    c = o.card
    u = o.seller
    flash[:success_notice] = "돈이 없거나 본인에게서 사감"

    if (current_user.coin < o.price) or (current_user.id == u.id)
      puts "zxcvzxcv"
      redirect_to "/team/buysell/#{t_id}"
    else
      Card.update(c.id, user_id: current_user.id, on_market: false)
      Order.update(o.id, buyer_id: current_user.id, is_complete: true)

      u.coin = u.coin + o.price
      u.save
      coin = current_user.coin
      User.update(current_user.id, coin: coin - o.price)

      flash[:success_notice] = "카드가 구매되었습니다"
      redirect_to "/team/buysell/#{t_id}"
    end
  end

  def sell
    t_id = params[:t_id]
    c = current_user.cards.where(team_id: t_id).first
    o = Order.find(params[:order_id].to_i)
    u = o.buyer
    flash[:success_notice] = "이 팀의 카드가 하나도 없거나 본인에게 카드를 팔았음"

    if c.nil? or (current_user.id == u.id)
      puts "zxcvzxcv"
      redirect_to "/team/buysell/#{t_id}"
    else
      Card.update(c.id, user_id: u.id)
      Order.update(o.id, card_id: c.id, seller_id: current_user.id, buy_team_id: nil, is_complete: true)

      u.coin = u.coin - o.price
      u.save
      coin = current_user.coin
      User.update(current_user.id, coin: coin + o.price)

      flash[:success_notice] = "카드가 팔렸습니다"
      redirect_to "/team/buysell/#{t_id}"
    end
  end

  def create_sell
    c = current_user.cards.where(team_id: params[:team_id]).first
    flash[:success_notice] = "해당하는 카드가 없거나 잘못된 입력입니다."

    if c.nil? or (params[:sell_price].to_i.to_s != params[:sell_price])
      redirect_to "/team/buysell/#{params[:team_id]}"
    else
      c.on_market = true
      c.save

      Order.create(seller_id: current_user.id, buyer_id: nil, card_id: c.id, buy_team_id: nil, price: params[:sell_price].to_i, is_sell: true)
      flash[:success_notice] = "판매신청이 완료되었습니다"
      redirect_to "/team/buysell/#{params[:team_id]}"
    end
  end  

  def create_buy
    flash[:success_notice] = "돈이 없거나 잘못된 입력입니다."

    if (current_user.coin < params[:buy_price].to_i) or (params[:buy_price].to_i.to_s != params[:buy_price])
      redirect_to "/team/buysell/#{params[:team_id]}"
    else
      Order.create(seller_id: nil, buyer_id: current_user.id, card_id: nil, buy_team_id: params[:team_id].to_i, price: params[:buy_price].to_i)
      flash[:success_notice] = "구매신청이 완료되었습니다"
      redirect_to "/team/buysell/#{params[:team_id]}"
    end
  end
end
