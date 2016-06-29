class VoteController < ApplicationController
  def index
    Team.all.each do |t|
      fst = t.first_votes.to_a.count
      snd = t.second_votes.to_a.count
      trd = t.third_votes.to_a.count
      Team.update(t.id, poll: fst*5 + snd*3 + trd*2)
    end

    @teams = Team.order('poll desc')
  end
end
