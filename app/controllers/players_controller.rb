class PlayersController < ApplicationController
  def index
    @players = current_user.teams.players
  end

  def new
    @player = Player.new
  end

  def create
    athlete = Athlete.find(params[:athlete_id])
    team = current_user.teams.first
    team.players.create(athlete_id: athlete.id)
    # Player.create(player_params)
    redirect_to team
  end

  # def player_params
  #   params.require(:player).permit(:name)
  # end
end
