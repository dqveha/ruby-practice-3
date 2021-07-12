require('rspec')
require('queen_chess')
require('pry')

describe('Array#queen_attack?') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([2, 3])).to(eq(false))
  end

  it('is true if the coordinates are vertically in line with each other') do
    expect([1,1].queen_attack?([1, 3])).to(eq(true))
  end

  it('is true if the coordinates are horizontally in line with each other') do
    expect([1,3].queen_attack?([2, 3])).to(eq(true))
  end

  it('is true if the coordinates are diagonally in line with each other') do
    expect([3,3].queen_attack?([5, 5])).to(eq(true))
    expect([3,3].queen_attack?([2, 4])).to(eq(true))
    expect([3,3].queen_attack?([4, 2])).to(eq(true))
    expect([3,3].queen_attack?([1, 1])).to(eq(true))
    expect([3,3].queen_attack?([5, 1])).to(eq(true))
    expect([3,3].queen_attack?([1, 5])).to(eq(true))
    expect([3,3].queen_attack?([2, 2])).to(eq(true))
    expect([3,3].queen_attack?([4, 4])).to(eq(true))
  end
end