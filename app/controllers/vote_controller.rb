class VoteController < ApplicationController
  def index
  end

  def secondvote
  end

  def thirdvote
  end

  def final
    
  end

  def result
    @teams = Team.order('poll desc')
  end

  def firstvotecheck

    new_vote=Vote.new
    new_vote.user_id = current_user
    new_vote.team_1_id = params[:t_id]
    new_vote.save

    # current_user.vote.team_1_id = params[:t_id]
    # current_user.vote.save
    t = Team.find(params[:t_id])
    fst = t.first_votes.to_a.count
    snd = t.second_votes.to_a.count
    trd = t.third_votes.to_a.count
    Team.update(t.id, poll: fst*5 + snd*3 + trd*2)

    redirect_to "/vote/secondvote"

  end

  def secondvotecheck

    new_vote=Vote.new
    new_vote.user_id = current_user
    new_vote.team_2_id = params[:t_id]
    new_vote.save

    t = Team.find(params[:t_id])
    fst = t.first_votes.to_a.count
    snd = t.second_votes.to_a.count
    trd = t.third_votes.to_a.count
    Team.update(t.id, poll: fst*5 + snd*3 + trd*2)

    redirect_to "/vote/thirdvote"

  end

  def thirdvotecheck

    new_vote=Vote.new
    new_vote.user_id = current_user
    new_vote.team_3_id = params[:t_id]
    new_vote.save

    t = Team.find(params[:t_id])
    fst = t.first_votes.to_a.count
    snd = t.second_votes.to_a.count
    trd = t.third_votes.to_a.count
    Team.update(t.id, poll: fst*5 + snd*3 + trd*2)

    redirect_to "/vote/result"

  end
end
