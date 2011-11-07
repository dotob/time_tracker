describe 'jasmine-node', ->
describe 'TimeItem', ->

  it 'instantiate ctor', ->
    t = new TimeItem 1, 1
    (expect t.hour).toEqual 1
    (expect t.minute).toEqual  1

  it 'instantiate ctor w/o minute', ->
    t = new TimeItem 1
    (expect t.hour).toEqual 1
    (expect t.minute).toEqual  0

  describe 'TimeItem compareto', ->
    it 'parse hourstring', ->
      t = new TimeItem
      t.parseRawString "10"
      (expect t.hour).toEqual 10
      (expect t.minute).toEqual 0

    it 'parse hour and minute string', ->
      t = new TimeItem
      t.parseRawString "10:10"
      (expect t.hour).toEqual 10
      (expect t.minute).toEqual 10

    it 'parse bad hourstring', ->
      t = new TimeItem
      t.parseRawString "100:100"
      (expect t.hour).toEqual 24
      (expect t.minute).toEqual 60

    it 'check is between', ->
      t1 = new TimeItem 10
      t2 = new TimeItem 11
      t3 = new TimeItem 12
      expect(t2.isBetween(t1, t3)).toEqual true

  describe 'TimeItem compareto', ->
    it 'check compareto with smaller ti', ->
      t1 = new TimeItem 1, 1
      t2 = new TimeItem 2, 2 
      (expect t1.compareTo t2).toEqual -1
    
    it 'check compareto with bigger ti', ->
      t1 = new TimeItem 1, 1
      t2 = new TimeItem 2, 2 
      (expect t2.compareTo t1).toEqual 1
    
    it 'check compareto with equal ti', ->
      t1 = new TimeItem 1, 1
      (expect t1.compareTo t1).toEqual 0
