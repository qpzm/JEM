class Teamlist
  def self.get_list
    return @team_list
  end

  private
  @team_list = Team.order('id desc')
end
