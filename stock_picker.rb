def stock_picker(stocks)
    comb = stocks.combination(2).to_a
    profit = comb.map { |buy, sell| sell - buy }
    max_index = profit.find_index(profit.max)
    best_to_buy = stocks.find_index(comb[max_index][0])
    best_to_sell = stocks.find_index(comb[max_index][1])
    result = [best_to_buy, best_to_sell]
end


p stock_picker([17,3,6,9,15,8,6,1])