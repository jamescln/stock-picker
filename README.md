# stock-picker

In this project I will be making a stock picker method in Ruby that will buy and sell
stocks at optimal times given an array of dates and prices.

This project will further my understanding of alogrithms and Ruby array methods.

My first attempt to solve this issue focussed on finding the largest number in the
given array and returning the smallest number that came before it in the array.
The issue with this method is that this doesn't always provide the biggest difference
betweeen numbers in the array.

My next idea has been to work with permutations. So far I have been able to return all
the possible two number combinations from the given array and find the pairing that gives the
greatest difference. The next step is determining if the smaller number also has a smaller index
in the given array than the larger number.

I may have to find a way to also include index numbers in the permutations but I can't help but
think there's an easier solution to this problem.
