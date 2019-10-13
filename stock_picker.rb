
def stock_picker(prices)

  max_profit = 0

  sell_index = 0
  buy_index = 0

  for i in 0...prices.length - 1
    for j in i+1...prices.length
      difference = prices[j] - prices[i]
      if difference > max_profit
        max_profit, buy_index, sell_index = difference, i, j
        buy_sell_pair = [i, j]
      end
    end
  end

  puts buy_sell_pair
end 

stock_picker([20,15,40,75,55,32, 80])












































# def stock_picker(prices)
#     maxProfit = 0
#     dates = [0,0]
#     for i in 0...prices.length
#         for j in i+1...prices.length
#             profit = prices[j] - prices[i]
#             if profit>maxProfit
#             maxProfit, dates[0], dates[1] = profit, i, j
#             end
#         end
#     end
#     puts "Buy on day #{dates[0]}, sell on day #{dates[1]} for a profit of $#{maxProfit}."
# end

# stock_picker([17,3,6,9,15,8,6,1,17])


