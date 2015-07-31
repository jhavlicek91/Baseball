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

Team.create(name: 'Yankees', division_id: 1, city_id: 1, name_abbreviation: 'NYY')
Team.create(name: 'Red Sox', division_id: 1, city_id: 2, name_abbreviation: 'BOS')
Team.create(name: 'Orioles', division_id: 1, city_id: 5, name_abbreviation: 'BAL')
Team.create(name: 'Blue Jays', division_id: 1, city_id: 4, name_abbreviation: 'TOR')
Team.create(name: 'Rays', division_id: 1, city_id: 3, name_abbreviation: 'TB')

Team.create(name: 'Mets', division_id: 2, city_id: 1, name_abbreviation: 'NYM')
Team.create(name: 'Phillies', division_id: 2, city_id: 11, name_abbreviation: 'PHI')
Team.create(name: 'Nationals', division_id: 2, city_id: 12, name_abbreviation: 'WAS')
Team.create(name: 'Braves', division_id: 2, city_id: 14, name_abbreviation: 'ATL')
Team.create(name: 'Marlins', division_id: 2, city_id: 13, name_abbreviation: 'FLA')

Team.create(name: 'Tigers', division_id: 3, city_id: 8, name_abbreviation: 'DET')
Team.create(name: 'Twins', division_id: 3, city_id: 9, name_abbreviation: 'MIN')
Team.create(name: 'White Sox', division_id: 3, city_id: 6, name_abbreviation: 'CHW')
Team.create(name: 'Indians', division_id: 3, city_id: 10, name_abbreviation: 'CLE')
Team.create(name: 'Royals', division_id: 3, city_id: 7, name_abbreviation: 'KAN')

Team.create(name: 'Cardinals', division_id: 4, city_id: 15, name_abbreviation: 'STL')
Team.create(name: 'Brewers', division_id: 4, city_id: 17, name_abbreviation: 'MIL')
Team.create(name: 'Cubs', division_id: 4, city_id: 6, name_abbreviation: 'CHC')
Team.create(name: 'Pirates', division_id: 4, city_id: 18, name_abbreviation: 'PIT')
Team.create(name: 'Reds', division_id: 4, city_id: 16, name_abbreviation: 'CIN')

Team.create(name: 'Athletics', division_id: 5, city_id: 20, name_abbreviation: 'OAK')
Team.create(name: 'Angels', division_id: 5, city_id: 19, name_abbreviation: 'LAA')
Team.create(name: 'Mariners', division_id: 5, city_id: 23, name_abbreviation: 'SEA')
Team.create(name: 'Rangers', division_id: 5, city_id: 22, name_abbreviation: 'TEX')
Team.create(name: 'Astros', division_id: 5, city_id: 21, name_abbreviation: 'HOU')

Team.create(name: 'Dodgers', division_id: 6, city_id: 19, name_abbreviation: 'LAD')
Team.create(name: 'Diamondbacks', division_id: 6, city_id: 24, name_abbreviation: 'ARI')
Team.create(name: 'Rockies', division_id: 6, city_id: 25, name_abbreviation: 'COL')
Team.create(name: 'Padres', division_id: 6, city_id: 26, name_abbreviation: 'SD')
Team.create(name: 'Giants', division_id: 6, city_id: 27, name_abbreviation: 'SF')

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
City.create(name: 'Washington D.C.', state_id: 9)
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

