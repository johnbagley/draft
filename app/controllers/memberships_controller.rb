class MembershipsController < ApplicationController
  MAX_NUMBER_OF_ATHLETES = 15

  def create
    team = current_user.teams.find(params[:team_id])
    athlete = Athlete.find(params[:athlete_id])
    membership = Membership.create(athlete: athlete, team: team)

    if membership.persisted?
      flash.notice = "Added #{athlete.name}"
    else
      flash.alert = "Unable to add #{athlete.name}: #{membership.errors.first[1].titlecase}"
    end
    redirect_to team
  end

  def destroy
    team = current_user.teams.find(params[:team_id])
    athlete = Athlete.find(params[:athlete_id])
    team.athletes.delete(athlete)
    redirect_to team
  end
end
