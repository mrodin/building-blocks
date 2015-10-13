# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker (stocks)
  result = []
  diff = 0

  stocks[0..-2].each do |stock|
    stocks[stocks.index(stock)..-1].each do |s|
      if (stock - s < diff)
        diff = stock - s
        result[0] = stocks.index(stock)
        result[1] = stocks.index(s)
      end
    end
  end
  return result
end

puts stock_picker([17,3,6,9,15,8,6,1,10])