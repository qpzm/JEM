class VoteController < ApplicationController
  def index
  end

  def final
    total_poll = 10 * (User.count-1)
    User.each do |u|
      u.cards.each do |c|
      u.coin += c.team.poll/total_poll
    	Card.destroy(c.id)
      end
    end
  end

  def result
    @teams = Team.order('poll desc')
  end

  def firstvotecheck
<<<<<<< HEAD
      a1=params[:vote1]
      a2=params[:vote2]
      a3=params[:vote3]
    if a1 || a2 || a3 !=nil?
      new_vote=Vote.new
      new_vote.user_id = current_user
      new_vote.team_1_id = a1.to_i
      new_vote.team_2_id = a2.to_i
      new_vote.team_3_id = a3.to_i
      new_vote.is_complete = true
      new_vote.save
      # current_user.vote.team_1_id = params[:t_id]
      # current_user.vote.save

      fst = Team.find(a1).first_votes.to_a.count
      snd = Team.find(a2).second_votes.to_a.count
      trd = Team.find(a3).third_votes.to_a.count
      Team.update(a1, poll: fst*5 + snd*3 + trd*2)
      redirect_to "/vote/result"
    else
      @a = "형식에 맞춰서 다시 입력해주세요!"
      redirect_to :back
    end
=======
    puts params[:vote1]
    @a = "형식에 맞춰서 다시 입력해주세요!"
    if params[:vote1] == nil || params[:vote2] == nil || params[:vote3] == nil
      redirect_to :back
      return
    end
    for i in 0..1 do
      j = i+1
      if params["vote".concat(i.to_s).to_sym].to_i == params["vote".concat(j.to_s).to_sym].to_i
        redirect_to :back
        return
      end
    end  
    new_vote=Vote.new
    new_vote.user_id = current_user
    new_vote.team_1_id = params[:vote1]
    new_vote.team_2_id = params[:vote2]
    new_vote.team_3_id = params[:vote3]
    new_vote.save
    # current_user.vote.team_1_id = params[:t_id]
    # current_user.vote.save
    for i in 0..2 do
      t = Team.find(params["vote".concat(i.to_s).to_sym].to_i) 
      fst = t.first_votes.to_a.count
      snd = t.second_votes.to_a.count
      trd = t.third_votes.to_a.count
      Team.update(t.id, poll: fst*5 + snd*3 + trd*2)
    end  
    redirect_to "/vote/result"
>>>>>>> adfce2c62dc808d5d7bce6a0f94ed868c022a1ca
  end
end
