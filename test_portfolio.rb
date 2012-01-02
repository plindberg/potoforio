require 'rubygems'
require 'bundler/setup'

require 'minitest/autorun'
require 'turn'

require './portfolio'

describe 'Portfolio with two assets returning 30% and 70% annually' do
  before do
    @portfolio = Portfolio.new(2009..2011).tap do |p|
      a1, a2 = *[1.3, 1.7].map {|g| Asset.new.tap {|a|
        (2009..2011).each {|y| a.annual_gains(y, g)}}}
      p.plan(a1, 0.75)
      p.plan(a2, 0.25)
      p.annual_contribution = 1000
    end
  end

  it 'returns 40% profit after one year' do
    assert_equal(0.4, @portfolio.gains(2009))
    assert_equal(975 + 425, @portfolio.balance(2009))
  end

  it 'returns 68% profit after two years' do
    assert_equal(0.68, @portfolio.gains(2010))
    assert_equal(2340 + 1020, @portfolio.balance(2010))
  end

  it 'returns 103.5% profit after three years' do
    assert_equal(1.035, @portfolio.gains(2011))
    assert_equal(4251 + 1853, @portfolio.balance(2011))
  end
end

describe 'Asset returning 30% annually, with rebalanced contributions' do
  before do
    @asset = Asset.new.tap {|a| (2009..2011).each {|y| a.annual_gains(y, 1.3)}}
    @asset.contribute(2009, 750)
    @asset.contribute(2010, 825)
    @asset.contribute(2011, 930)
  end

  it 'gains 30% the first year' do
    assert_equal(975, @asset.balance(2009))
  end

  it 'gains 65.5% the second year' do
    assert_equal(1365 + 975, @asset.balance(2010))
  end

  it 'gains 105.5% the third year' do
    assert_equal(1911 + 1365 + 975, @asset.balance(2011))
  end
end
