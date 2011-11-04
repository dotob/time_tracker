describe 'jasmine-node', ->
describe 'TimeItem', ->

  it 'instantiate ctor', ->
    t = new TimeItem 1, 1
    (expect t.hour).toEqual 1
    (expect t.minute).toEqual  1

  it 'parse hourstring', ->
    t = new TimeItem
    t.parseRawString "10"
    (expect t.hour).toEqual 10
    (expect t.minute).toEqual 0
