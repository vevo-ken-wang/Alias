require ['directives/directives'], (mod)->
	console.log mod
	mod.directive 'videoPoster', ->
		restrict: 'E'
		template: "<div style='width:100px; height:100px; background:red'></div>"
		replace: 'true'
				
	
