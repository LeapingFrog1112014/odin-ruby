# Project Stock Picker
# 05 - 09 - 2023

# Given an array of stock prices return a pair of best day to sell and best day to buy
# Array => Array

def stock_picker (prices)
    best = prices.each_with_index.to_a.combination(2).max_by {|buy, sell| sell[0] - buy[0]}
    return [best[0][1], best[1][1]]
end

p stock_picker([17,3,6,9,15,8,6,1,10])


    