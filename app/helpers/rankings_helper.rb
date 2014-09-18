module RankingsHelper
  def button_to_import(ranking)
    button_to 'Import Rankings', ranking_path(@ranking)
  end
end
