class MembershipsController < ApplicationController
  MAX_NUMBER_OF_ATHLETES = 15

  def create
    team = current_user.teams.find(params[:team_id])
    athlete = Athlete.find(params[:athlete_id])
    if team.athletes.include? athlete
      flash.alert = 'Player is already on your team'
      redirect_to team
    elsif
      team.athletes.count >= MAX_NUMBER_OF_ATHLETES
      flash.alert = 'Max size already reached'
      redirect_to team
    else 
      team.athletes << athlete
      redirect_to team
    end
  end

  def destroy
    team = current_user.teams.find(params[:team_id])
    athlete = Athlete.find(params[:athlete_id])
    team.athletes.delete(athlete)
    redirect_to team
  end

end
