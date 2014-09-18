class RankingsController < ApplicationController

  def create
    team = Team.find(params[:team_id])
    unless Athlete.exists?
      ranking = Ranking.find(params[:ranking_id])
      ranking.load_ranking
    end
    redirect_to team
  end
end
