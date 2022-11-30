require 'pry-byebug'

def stock_picker(prices)
    if prices.kind_of?(Array)
    prices_array = prices
    max_price = prices_array.max
    binding.pry
    possible_buy_dates = prices[0..prices.index(max_price)]
    binding.pry
    min_price = possible_buy_dates.min
    buy_sell_dates = [min_price,max_price]
    return buy_sell_dates    # find the smallest price in the array that has a smaller index number than the largest.
    # return an array containing the index values of those two numbers.
   else
    return 'Type Error. Please provide an array as an argument.'
   end
end

best_dates = stock_picker([3,4,5,2,5,8,1,4,9,1,4,5])
binding.pry