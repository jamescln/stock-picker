require 'spec_helper'
require_relative '../stock-picker'

RSpec.describe 'Stock Picker' do
    describe 'will return' do
        it 'optimal buying/selling days when given an array' do
            expect(stock_picker([3,4,5,1,5,8,19,13,12])).to eq([3,6])
        end
        it 'an error when argument is not an array' do
            expect(stock_picker('This is a test')).to eq('Type Error. Please provide an array as an argument.')
        end
    end
end