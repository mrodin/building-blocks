def stock_picker (stocks)
  diff = 0
  buy_position = 0
  sell_position = 0

  stocks[0..-2].each do |stock|
    stocks[stocks.index(stock)..-1].each do |s|
      if (stock - s < diff)
        diff = stock - s
        buy_position = stocks.index(stock)
        sell_position = stocks.index(s)
      end
    end
  end

  puts "[#{buy_position},#{sell_position}]"
end

stock_picker([17,3,6,9,15,8,6,1,10])