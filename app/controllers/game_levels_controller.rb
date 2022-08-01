class GameLevelsController < InheritedResources::Base

  private

    def game_level_params
      params.require(:game_level).permit(:isAdmin, :id, :user, :level_no, :balance)
    end

end
