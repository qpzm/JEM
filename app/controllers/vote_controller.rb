class VoteController < ApplicationController
  def index
  end

  def final
    for i in 1..40
      User.find(i).cards.each do |c|
    	Card.destroy(c.id)
      end
    end
  end

  def result
    @teams = Team.order('poll desc')
  end

  def firstvotecheck
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
  end
end
