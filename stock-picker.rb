require 'pry-byebug'

def stock_picker(prices)
    if prices.kind_of?(Array)
        price_with_index = []
        prices.each_with_index do |price, index|
            price_with_index << [price,index]
        end    
        binding.pry
    #permutations = prices.permutation(2).to_a
    #permutations.each_with_index do | row, row_index|    
    #end
    #permutation_differences = []
    #permutations.each_with_index do |element, i|
    #    permutation_differences[i] = (permutations[i][1] - permutations[i][0])
    #end
    #max_difference = permutation_differences.max
    max_price = prices.max
    possible_buy_dates = prices[0..prices.index(max_price)]
    min_price = possible_buy_dates.min
    max_price_index = prices.index(max_price)
    min_price_index = prices.index(min_price)
    buy_sell_dates = [min_price_index,max_price_index]
    return buy_sell_dates    # find the smallest price in the array that has a smaller index number than the largest.
    # return an array containing the index values of those two numbers.
   else
    return 'Type Error. Please provide an array as an argument.'
   end
end

best_dates = stock_picker([3,4,5,2,5,8,1,4,9,1,4,5])