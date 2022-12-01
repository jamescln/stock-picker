require 'pry-byebug'

def stock_picker(prices)
    if prices.kind_of?(Array)
        best_profit = 0
        best_buy_dates = []
        prices.each_with_index do |element1, index1|
            prices.each_with_index do |element2, index2|
                
                profit = element2 - element1

                if profit > best_profit && index1 < index2
                    best_profit = profit
                    best_buy_dates = [index1, index2]
                end
            end
        end    
        binding.pry
        return best_buy_dates
    else
    return 'Type Error. Please provide an array as an argument.'
    end
end

best_dates = stock_picker([3,4,5,2,5,8,1,4,9,1,4,5])