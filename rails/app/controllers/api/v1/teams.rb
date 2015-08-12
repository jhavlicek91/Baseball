module API
  module V1
    class Teams < Grape::API
      include API::V1::Defaults

      resource :teams do
        desc "Return a team"

        params do
          requires :id, type: Integer, desc: "ID of the contact"
        end

        get ":id", root: "team" do
          Team
            .joins(:city, division: :conference)
            .where(id: params[:id])
            .first
        end
      end

    end
  end
end