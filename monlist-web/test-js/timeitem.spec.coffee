describe 'jasmine-node', ->
describe 'TimeItem', ->

  it 'instantiate ctor', ->
    t = new TimeItem( 1, 1)
    expect(t.hour).toEqual(1)
