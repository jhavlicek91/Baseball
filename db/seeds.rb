Sport.create(name: 'Baseball')
Sport.create(name: 'Basketball')
Sport.create(name: 'Football')
Sport.create(name: 'Hockey')


League.create(name: 'National Football League', abbreviation: 'NFL', sport_id: 3)
League.create(name: 'Major League Baseball', abbreviation: 'MLB', sport_id: 1)
League.create(name: 'National Basketball Association', abbreviation: 'NBA', sport_id: 2)
League.create(name: 'National Hockey League', abbreviation: 'NHL', sport_id: 4)

Conference.create(name: 'American League', abbreviation: 'AL', league_id: 2)
Conference.create(name: 'National League', abbreviation: 'NL', league_id: 2)

Division.create(name: 'East', conference_id: 1)
Division.create(name: 'East', conference_id: 2)
Division.create(name: 'Central', conference_id: 1)
Division.create(name: 'Central', conference_id: 2)
Division.create(name: 'West', conference_id: 1)
Division.create(name: 'West', conference_id: 2)

Team.create(name: 'Yankees', division_id: 1, city_id: 1, name_abbreviation: 'NYY', primaryColor: '#132448', secondaryColor: '#CDCBCE', rssFeedId: 'nyy', theScoreId: 3)
Team.create(name: 'Red Sox', division_id: 1, city_id: 2, name_abbreviation: 'BOS', primaryColor: '#0E2B55', secondaryColor: '#BD3039', rssFeedId: 'bos', theScoreId: 2)
Team.create(name: 'Orioles', division_id: 1, city_id: 5, name_abbreviation: 'BAL', primaryColor: '#020001', secondaryColor: '#DF4601', rssFeedId: 'bal', theScoreId: 1)
Team.create(name: 'Blue Jays', division_id: 1, city_id: 4, name_abbreviation: 'TOR', primaryColor: '#0067A6', secondaryColor: '#A5A5A5', rssFeedId: 'tor', theScoreId: 4)
Team.create(name: 'Rays', division_id: 1, city_id: 3, name_abbreviation: 'TB', primaryColor: '#00285D', secondaryColor: '#79BDEE', rssFeedId: 'tb', theScoreId: 5)

Team.create(name: 'Mets', division_id: 2, city_id: 1, name_abbreviation: 'NYM', primaryColor: '#004685', secondaryColor: '#F7742C', rssFeedId: 'nym', theScoreId: 17)
Team.create(name: 'Phillies', division_id: 2, city_id: 11, name_abbreviation: 'PHI', primaryColor: '#CA1F2C', secondaryColor: '#226AA9', rssFeedId: 'phi', theScoreId: 18)
Team.create(name: 'Nationals', division_id: 2, city_id: 12, name_abbreviation: 'WAS', primaryColor: '#14225A', secondaryColor: '#BA122B', rssFeedId: 'was', theScoreId: 16)
Team.create(name: 'Braves', division_id: 2, city_id: 14, name_abbreviation: 'ATL', primaryColor: '#01487E', secondaryColor: '#D60D39', rssFeedId: 'atl', theScoreId: 15)
Team.create(name: 'Marlins', division_id: 2, city_id: 13, name_abbreviation: 'FLA', primaryColor: '#333333', secondaryColor: '#00A5B1', rssFeedId: 'mia', theScoreId: 19)

Team.create(name: 'Tigers', division_id: 3, city_id: 8, name_abbreviation: 'DET', primaryColor: '#10293F', secondaryColor: '#FFFFFF', rssFeedId: 'det', theScoreId: 8)
Team.create(name: 'Twins', division_id: 3, city_id: 9, name_abbreviation: 'MIN', primaryColor: '#042462', secondaryColor: '#B50131', rssFeedId: 'min', theScoreId: 10)
Team.create(name: 'White Sox', division_id: 3, city_id: 6, name_abbreviation: 'CHW', primaryColor: '#000000 ', secondaryColor: '#FFFFFF', rssFeedId: 'cws', theScoreId: 6)
Team.create(name: 'Indians', division_id: 3, city_id: 10, name_abbreviation: 'CLE', primaryColor: '#023465', secondaryColor: '#EE113D', rssFeedId: 'cle', theScoreId: 7)
Team.create(name: 'Royals', division_id: 3, city_id: 7, name_abbreviation: 'KAN', primaryColor: '#000572', secondaryColor: '#FFFFFF', rssFeedId: 'kc', theScoreId: 9)

Team.create(name: 'Cardinals', division_id: 4, city_id: 15, name_abbreviation: 'STL', primaryColor: '#C41E3A', secondaryColor: '#FFFFFF', rssFeedId: 'stl', theScoreId: 25)
Team.create(name: 'Brewers', division_id: 4, city_id: 17, name_abbreviation: 'MIL', primaryColor: '#012143', secondaryColor: '#C4953B', rssFeedId: 'mil', theScoreId: 20)
Team.create(name: 'Cubs', division_id: 4, city_id: 6, name_abbreviation: 'CHC', primaryColor: '#0E3386', secondaryColor: '#D12325', rssFeedId: 'chc', theScoreId: 21)
Team.create(name: 'Pirates', division_id: 4, city_id: 18, name_abbreviation: 'PIT', primaryColor: '#000000', secondaryColor: '#FFB40B', rssFeedId: 'pit', theScoreId: 24)
Team.create(name: 'Reds', division_id: 4, city_id: 16, name_abbreviation: 'CIN', primaryColor: '#EB184B', secondaryColor: '#FFFFFF', rssFeedId: 'cin', theScoreId: 22)

Team.create(name: 'Athletics', division_id: 5, city_id: 20, name_abbreviation: 'OAK', primaryColor: '#00483A', secondaryColor: '#FFBE00', rssFeedId: 'oak', theScoreId: 12)
Team.create(name: 'Angels', division_id: 5, city_id: 19, name_abbreviation: 'LAA', primaryColor: '#CE1141', secondaryColor: '#FFFFFF', rssFeedId: 'ana', theScoreId: 11)
Team.create(name: 'Mariners', division_id: 5, city_id: 23, name_abbreviation: 'SEA', primaryColor: '#003166', secondaryColor: '#1C8B85', rssFeedId: 'sea', theScoreId: 13)
Team.create(name: 'Rangers', division_id: 5, city_id: 22, name_abbreviation: 'TEX', primaryColor: '#01317B', secondaryColor: '#E00016', rssFeedId: 'tex', theScoreId: 14)
Team.create(name: 'Astros', division_id: 5, city_id: 21, name_abbreviation: 'HOU', primaryColor: '#95322c', secondaryColor: '#C7B39A', rssFeedId: 'hou', theScoreId: 23)

Team.create(name: 'Dodgers', division_id: 6, city_id: 19, name_abbreviation: 'LAD', primaryColor: '#005596', secondaryColor: '#FFFFFF', rssFeedId: 'la', theScoreId: 26)
Team.create(name: 'Diamondbacks', division_id: 6, city_id: 24, name_abbreviation: 'ARI', primaryColor: '#C51230', secondaryColor: '#241E20', rssFeedId: 'ari', theScoreId: 30)
Team.create(name: 'Rockies', division_id: 6, city_id: 25, name_abbreviation: 'COL', primaryColor: '#000000', secondaryColor: '#333366', rssFeedId: 'col', theScoreId: 29)
Team.create(name: 'Padres', division_id: 6, city_id: 26, name_abbreviation: 'SD', primaryColor: '#1C3465', secondaryColor: '#CCC59B', rssFeedId: 'sd', theScoreId: 27)
Team.create(name: 'Giants', division_id: 6, city_id: 27, name_abbreviation: 'SF', primaryColor: '#000000', secondaryColor: '#FB5B1F', rssFeedId: 'sf', theScoreId: 28)

Country.create(name: 'United States', abbreviation: 'US')
Country.create(name: 'Canada', abbreviation: 'CA')

State.create(name: 'Alabama', abbreviation: 'AL', country_id: 1)
State.create(name: 'Alaska', abbreviation: 'AK', country_id: 1)
State.create(name: 'Arizona', abbreviation: 'AZ', country_id: 1)
State.create(name: 'Arkansas', abbreviation: 'AR', country_id: 1)
State.create(name: 'California', abbreviation: 'CA', country_id: 1)
State.create(name: 'Colorado', abbreviation: 'CO', country_id: 1)
State.create(name: 'Connecticut', abbreviation: 'CT', country_id: 1)
State.create(name: 'Delaware', abbreviation: 'DE', country_id: 1)
State.create(name: 'District of Columbia', abbreviation: 'DC', country_id: 1)
State.create(name: 'Florida', abbreviation: 'FL', country_id: 1)
State.create(name: 'Georgia', abbreviation: 'GA', country_id: 1)
State.create(name: 'Hawaii', abbreviation: 'HI', country_id: 1)
State.create(name: 'Idaho', abbreviation: 'ID', country_id: 1)
State.create(name: 'Illinois', abbreviation: 'IL', country_id: 1)
State.create(name: 'Indiana', abbreviation: 'IN', country_id: 1)
State.create(name: 'Iowa', abbreviation: 'IA', country_id: 1)
State.create(name: 'Kansas', abbreviation: 'KS', country_id: 1)
State.create(name: 'Kentucky', abbreviation: 'KY', country_id: 1)
State.create(name: 'Louisiana', abbreviation: 'LA', country_id: 1)
State.create(name: 'Maine', abbreviation: 'ME', country_id: 1)
State.create(name: 'Maryland', abbreviation: 'MD', country_id: 1)
State.create(name: 'Massachusetts', abbreviation: 'MA', country_id: 1)
State.create(name: 'Michigan', abbreviation: 'MI', country_id: 1)
State.create(name: 'Minnesota', abbreviation: 'MN', country_id: 1)
State.create(name: 'Mississippi', abbreviation: 'MS', country_id: 1)
State.create(name: 'Missouri', abbreviation: 'MO', country_id: 1)
State.create(name: 'Montana', abbreviation: 'MT', country_id: 1)
State.create(name: 'Nebraska', abbreviation: 'NE', country_id: 1)
State.create(name: 'Nevada', abbreviation: 'NV', country_id: 1)
State.create(name: 'New Hampshire', abbreviation: 'NH', country_id: 1)
State.create(name: 'New Jersey', abbreviation: 'NJ', country_id: 1)
State.create(name: 'New Mexico', abbreviation: 'NM', country_id: 1)
State.create(name: 'New York', abbreviation: 'NY', country_id: 1)
State.create(name: 'North Carolina', abbreviation: 'NC', country_id: 1)
State.create(name: 'North Dakota', abbreviation: 'ND', country_id: 1)
State.create(name: 'Ohio', abbreviation: 'OH', country_id: 1)
State.create(name: 'Oklahoma', abbreviation: '', country_id: 1)
State.create(name: 'Oregon', abbreviation: 'OR', country_id: 1)
State.create(name: 'Pennsylvania', abbreviation: 'PA', country_id: 1)
State.create(name: 'Rhode Island', abbreviation: 'RI', country_id: 1)
State.create(name: 'South Carolina', abbreviation: 'SC', country_id: 1)
State.create(name: 'South Daokta', abbreviation: 'SD', country_id: 1)
State.create(name: 'Tennessee', abbreviation: 'TN', country_id: 1)
State.create(name: 'Texas', abbreviation: 'TX', country_id: 1)
State.create(name: 'Utah', abbreviation: 'UT', country_id: 1)
State.create(name: 'Vermont', abbreviation: 'VT', country_id: 1)
State.create(name: 'Virginia', abbreviation: 'VA', country_id: 1)
State.create(name: 'Washington', abbreviation: 'WA', country_id: 1)
State.create(name: 'West Virginia', abbreviation: 'WV', country_id: 1)
State.create(name: 'Wisonsin', abbreviation: 'WI', country_id: 1)
State.create(name: 'Wyoming', abbreviation: 'WY', country_id: 1)

State.create(name: 'Alberta', abbreviation: 'Alta.', country_id: 2)
State.create(name: 'British Columbia', abbreviation: 'B.C.', country_id: 2)
State.create(name: 'Manitoba', abbreviation: 'Man.', country_id: 2)
State.create(name: 'New Brunswick', abbreviation: 'N.B.', country_id: 2)
State.create(name: 'Newfoundland and Labrador', abbreviation: 'Nfld. & LB', country_id: 2)
State.create(name: 'Nova Scotia', abbreviation: 'N.S.', country_id: 2)
State.create(name: 'Ontario', abbreviation: 'Ont.', country_id: 2)
State.create(name: 'Prince Edward Island', abbreviation: 'P.E.I.', country_id: 2)
State.create(name: 'Quebec', abbreviation: 'Que.', country_id: 2)
State.create(name: 'Saskatchewan', abbreviation: 'Sask.', country_id: 2)

City.create(name: 'New York', state_id: 33)
City.create(name: 'Boston', state_id: 22)
City.create(name: 'Tampa Bay', state_id: 10)
City.create(name: 'Toronto', state_id: 58)
City.create(name: 'Baltimore', state_id: 21)

City.create(name: 'Chicago', state_id: 14)
City.create(name: 'Kansas City', state_id: 26)
City.create(name: 'Detroit', state_id: 23)
City.create(name: 'Minnesota', state_id: 24)
City.create(name: 'Cleveland', state_id: 36)

City.create(name: 'Philladelphia', state_id: 39)
City.create(name: 'Washington', state_id: 9)
City.create(name: 'Miami', state_id: 10)
City.create(name: 'Atlanta', state_id: 11)

City.create(name: 'St. Louis', state_id: 26)
City.create(name: 'Cincinnati', state_id: 36)
City.create(name: 'Milwaukee', state_id: 50)
City.create(name: 'Pittsburgh', state_id: 39)

City.create(name: 'Los Angeles', state_id: 5)
City.create(name: 'Oakland', state_id: 5)
City.create(name: 'Houston', state_id: 44)
City.create(name: 'Texas', state_id: 44)
City.create(name: 'Seattle', state_id: 48)

City.create(name: 'Arizona', state_id: 3)
City.create(name: 'Colorado', state_id: 6)
City.create(name: 'San Francisco', state_id: 5)
City.create(name: 'San Diego', state_id: 5)

Position.create(name: 'Pitcher', abbreviation: 'P', sport_id: 1)
Position.create(name: 'Catcher', abbreviation: 'C', sport_id: 1)
Position.create(name: 'First Base', abbreviation: '1B', sport_id: 1)
Position.create(name: 'Second Base', abbreviation: '2B', sport_id: 1)
Position.create(name: 'Third Base', abbreviation: '3B', sport_id: 1)
Position.create(name: 'Short Stop', abbreviation: 'SS', sport_id: 1)
Position.create(name: 'Left Field', abbreviation: 'LF', sport_id: 1)
Position.create(name: 'Center Field', abbreviation: 'CF', sport_id: 1)
Position.create(name: 'Right Field', abbreviation: 'RF', sport_id: 1)

