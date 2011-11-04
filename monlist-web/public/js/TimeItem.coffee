window.TimeItem = class TimeItem
  constructor: (@hour=0, @minute=0) ->

  parseRawString: (rawString='') ->
    [hour, minute] = (rawString+":0:0").match(/(\d+)/g)
    @hour = +hour
    @minute = +minute
    @hour = 24 if @hour > 24
    @minute = 60 if @minute > 60
