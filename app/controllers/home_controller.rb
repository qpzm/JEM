class HomeController < ApplicationController
  def index
  end

  def test
    @team_1 = Team.find(1)
  end
end
