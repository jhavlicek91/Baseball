var sidebar = function(){
	_getLeagueTeams = function(leagueId, $leagueDIV){
		$.ajax({
			url: '/teams/getTeamsForSideBar',
			data: {
				leagueId: leagueId
			},
			success: function(data){
				_buildSideBarPopover(data.divisions, data.teams);
				_toggleSideBarPopup(true, $leagueDIV);
			}
		});
	}

	_toggleSideBarPopup = function(open, $leagueDIV){
		var $popup = $('#league-popup');

		if(open){
			_resizePopover($popup);
			$popup.show();

			$leagueDIV.addClass('open');
			$leagueDIV.removeClass('closed');	
		} else{
			$popup.html('');
			$popup.hide();

			$leagueDIV.removeClass('open');
			$leagueDIV.addClass('closed');			
		}
	}

	_resizePopover = function($popup){
		var top = $('.main-container').offset().top;
		var left = $('.main-container .main-content').offset().left;

		$popup.css({top: top, left: left});
	},

	_buildSideBarPopover = function(divisions, teams){
		var currentConference = divisions[0].conferenceId;

		var $popover = $('#league-popup');

		var $conferenceContainer = $('<div/>', {
			class: 'conference-container container'
		});

		$.each(divisions, function(){
			var divisionId = this.id;

			if(currentConference != this.conferenceId){
				$popover.append($conferenceContainer);				
				$conferenceContainer = $('<div/>', {
					class: 'conference-container container'
				});
				currentConference = this.conferenceId;				
			}

			var $divisionContainer = $('<div/>', {
				class: 'pull-left division-container'
			}).append('<div class="division">' + this.name + '</div>');

			var divTeams = teams.filter(function(item){ return item.division_id == divisionId; });

			$.each(divTeams, function(){

				var $teamDiv = $('<a/>', {
					class: 'team',
					href: '/teams/index?id=' + this.id
				}).append($('<img/>', {
					src: '/assets/' + this.name.toLowerCase().replace(' ', '_') + '_small.png'
				})).append($('<span/>', {text: this.cityName + ' ' + this.name}));

				$divisionContainer.append($('<div/>').append($teamDiv));
			});

			$conferenceContainer.append($divisionContainer);
		});
		
		$popover.append($conferenceContainer);	
	}

	$('.sidebar-leagues').on('click', '.league.closed', function(){
		_getLeagueTeams($(this).data('id'), $(this));
	});	

	$('.sidebar-leagues').on('click', '.league.open', function(){
		_toggleSideBarPopup(false, $(this));
	});		



	init = function(){

	}

	init();
};