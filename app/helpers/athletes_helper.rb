module AthletesHelper
  def button_to_add(athlete)
    button_to 'Add', team_add_path(@team)

  end
end
