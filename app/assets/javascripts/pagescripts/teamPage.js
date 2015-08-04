var teamPage = function(teamPageVars){
	
	var buildNewsSection = function(newsItems){
		var panels = [];

		$.each(newsItems, function(){
			panels.push(
				'<div class="panel panel-default news-item">' +
				  '<div class="panel-body" style="' +
				  	'color:' + teamPageVars.secondaryColor + ';background-color:' + teamPageVars.primaryColor +
				  ';">' + 
				  		'<span>' + this.title + '</span>' + 
				  		'<a class="fa fa-share-square" target="blank" href="' + this.url + '"/>' +
			  		'</div>' +
				  '<div class="panel-footer">' + this.content + '</div>' +
				'</div>'
			);
		});

		$('.news-container').html(panels.join(' '));
	}

	var updatePageWithRankings = function(info){
		$('.division-place').prepend(info.division_place + " in ");
		$('.record').text(info.record);
		$('.last-ten').text(info.last_ten);
		$('.streak').text(info.streak)
	}

	var getFeedData = function(){
		$.ajax({
			url: 'getTeamNews',
			data: {
				feedId: teamPageVars.rssFeedID
			},
			success: function(data){
				buildNewsSection(data.entries);
			}
		});		
	}

	var getTeamRankings = function(){
		$.ajax({
			url: 'getTeamRankings',
			data: {
				theScoreId: teamPageVars.theScoreId,
				league: 'mlb'
			},
			success: function(data){
				updatePageWithRankings(data.info);
			}
		});			
	}

	var initialize = function(){
		getFeedData();
		getTeamRankings();
	}

	initialize();
};