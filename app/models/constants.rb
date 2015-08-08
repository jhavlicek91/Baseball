module Constants

	module Sports
		BASEBALL = 1,
		BASKETBALL = 2,
		FOOTBALL = 3,
		HOCKEY = 4
	end

	module Leagues
		NFL = 1,
		MLB = 2,
		NBA = 3,
		NHL = 4
	end 

	module Conferences
		AL = 1,
		NL = 2
	end

	module Divisions
		AL_EAST = 1,
		NL_EAST = 2,
		AL_CENTRAL = 3,
		NL_CENTRAL = 4,
		AL_WEST = 5,
		NL_WEST = 6
	end

	module StatTypes
		HITTER_AVG = 1,
		HITTER_HR = 2,
		HITTER_RBI = 3,
		HITTER_RUNS = 4,
		HITTER_SB = 5,

		PITCHER_W = 6,
		PITCHER_L = 7,
		PITCHER_ERA = 8,
		PITCHER_WHIP = 9,
		PITCHER_BB = 10,
		PITCHER_K = 11
	end

	module StatClassifications
		HITTING = 1,
		PITCHING = 2,
		BASKETBALL_OFFENSE = 3,
		HOCKEY_OFFENSE = 4,
		GOALTENDING = 5
	end
end