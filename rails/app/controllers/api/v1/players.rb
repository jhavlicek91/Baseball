module API
  module V1
    class Players < Grape::API
      include API::V1::Defaults

      resource :players do
        desc "Return all players from a team"

        params do
          requires :team_id, type: Integer, desc: "ID of the team"
        end

        get "", root: "player" do
          players = Player
          .joins(:position)
          .where(team_id: params[:team_id])
          {
            :players => players,
            :positions => Position.all
          }
        end

        desc "Return a player's information"

        params do
          requires :player_id, type: Integer, desc: "ID of the player"
        end

        get "/:player_id", root: "player" do
          players = Player
          .joins(:position)
          .where(id: params[:player_id])
          {
            :players => players,
            :positions => Position.all
          }
        end

      end
    end
  end
end