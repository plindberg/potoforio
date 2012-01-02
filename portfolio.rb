class Portfolio
  def initialize(years, name = '')
    @years, @name, @asset_plan = years, name, []
  end

  attr_writer :annual_contribution

  def plan(asset, allocation)
    @asset_plan << [asset, allocation]
  end

  def gains(year)
    (balance_and_contributions(year).reduce(:/) - 1.0).round(3)
  end

  def balance(year)
    balance_and_contributions(year).first.round(2)
  end

  def contributions(year)
    balance_and_contributions(year).last
  end

  def balance_and_contributions(year)
    balances, contributions = Hash.new(0), 0
    (@years.first..year).each do |year|
      projection = (balances.values.reduce(:+) || 0) + @annual_contribution
      @asset_plan.each do |asset, allocation|
        asset.contribute(year, @annual_contribution *
          (projection * allocation - balances[asset]) / @annual_contribution)
        balances[asset] = asset.balance(year)
      end
      contributions += @annual_contribution
    end
    [balances.values.reduce(:+), contributions]
  end

  def print
    puts "Portfolio #{@name}"
    puts "- " * 30
    puts @years.to_a.join("\t")
    puts (@years.map {|year| "%0.1f" % (100 * gains(year))}
      .join("\t").gsub('.', ','))
    puts
  end
end

class Asset
  def initialize(name = '')
    @name, @annual_gains, @annual_contributions = name, {}, {}
  end

  attr_reader :name

  def annual_gains(year, factor)
    @annual_gains[year] = factor
  end

  def contribute(year, amount)
    @annual_contributions[year] = amount
  end

  def balance(year)
    (years.first..year).inject(0) do |balance, year|
      (balance + @annual_contributions[year]) * @annual_gains[year]
    end
  end

  def years
    @annual_contributions.keys.sort
  end
end
