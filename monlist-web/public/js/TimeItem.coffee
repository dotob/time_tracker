window.TimeItem = class TimeItem
	constructor: (@hour, @minute=0) ->

  parseRawString: (rawString='') -> 
    [@hour, @minute] = rawString.match(/(\d+)/g) ? [0,0] 
    @hour = 24 if @hour > 24
    @minute = 60 if @minute > 60
