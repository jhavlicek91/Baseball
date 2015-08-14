module API
  module V1
    class Teams < Grape::API
      include API::V1::Defaults

      resource :teams do
        desc "Return a team"

        params do
          requires :id, type: Integer, desc: "ID of the team"
        end

        get ":id", root: "team" do
          team = Team
            .joins(:city, division: {conference: :league} )
            .where(id: params[:id])
            .first

            { :team => team, 
              :divisions => [team.division], 
              :conferences => [team.division.conference], 
              :cities => [team.city],
              :leagues => [team.division.conference.league] }
        end
      end

    end
  end
end