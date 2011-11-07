window.TimeItem = class TimeItem
  constructor: (@hour=0, @minute=0) ->

  parseRawString: (rawString='') ->
    [hour, minute] = (rawString+":0:0").match(/(\d+)/g)
    @hour = +hour
    @minute = +minute
    @hour = 24 if @hour > 24
    @minute = 60 if @minute > 60

  isBetween: (a, b) ->
    if a.compareTo this < this.compareTo b && a.compareTo b < 0 
      return true
    else
      return false

  compareTo: (timeItem) ->
    if @hour == timeItem.hour
      if @minute == timeItem.minute
        return 0
      else if @minute < timeItem.minute
        return -1
      else
        return 1
    else if @hour < timeItem.hour
      return -1
    else
      return 1
