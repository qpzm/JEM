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
    if vote1 && vote2 && vote3!=nil?
      new_vote=Vote.new
      new_vote.user_id = current_user
      new_vote.team_1_id = params[:vote1]
      new_vote.team_2_id = params[:vote2]
      new_vote.team_3_id = params[:vote3]
      new_vote.save
      # current_user.vote.team_1_id = params[:t_id]
      # current_user.vote.save
      t = Team.find(params[:t_id])
      fst = t.first_votes.to_a.count
      snd = t.second_votes.to_a.count
      trd = t.third_votes.to_a.count
      Team.update(t.id, poll: fst*5 + snd*3 + trd*2)

      redirect_to "/vote/result"
    else
      @a = "형식에 맞춰서 다시 입력해주세요!"
      redirect_to :back
    end
  end
end
