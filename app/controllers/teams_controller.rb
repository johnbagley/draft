class TeamsController < ApplicationController

  def show
    @teams = current_user.teams
    @team = current_user.teams.find(params[:id])
    @ranking = @team.ranking
    @athletes = @ranking.athletes
    @rankings = Ranking.all
  end

  def create
    current_user.teams.create(team_params)
    redirect_to dashboard_path
  end

  private

  def team_params
    params.require(:team).permit(:team_name, :ranking_id).merge(user_id: current_user.id)
  end
end
