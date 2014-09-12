class MembershipsController < ApplicationController

  def create
    team = current_user.teams.find(params[:team_id])
    athlete = Athlete.find(params[:athlete_id])
    team.athletes << athlete
    redirect_to team
  end

  def destroy
    team = current_user.teams.find(params[:team_id])
    athlete = Athlete.find(params[:athlete_id])
    team.athletes.delete(athlete)
    redirect_to team
  end

end
