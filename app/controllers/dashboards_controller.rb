class DashboardsController < ApplicationController
  def show
    @user = current_user
    @team = Team.new
    @teams = @user.teams
    @rankings = Ranking.all
  end
end
