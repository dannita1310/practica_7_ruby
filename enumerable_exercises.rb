def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each do |item, quantity|
    puts "#{item}, quantity: #{quantity}"
    end
end

fruit = { apples: 1, bananas: 3, orange: 7 }
display_current_inventory(fruit)




def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index do |item, index|
    puts "Guess ##{index + 1} is #{item}"
    end
end
guesses = ['cookies', 'cake', 'ice cream']
 display_guess_order(guesses)


def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  numbers.map { |number| number.abs }
end

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  inventory_list.select { |item, quantity| quantity < 4 }
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
  word_list.reduce({}) do |result, word|
    result[word] = word.length
    result
    end
end

word_list = ["apple", "banana", "orange", "grape"]
word_lengths = find_word_lengths(word_list)
puts word_lengths

def coffee_drink?(drink_list)
  # use #include? to return true when the drink_list (array) contains the string "coffee" or "espresso"
  drink_list.include?("coffee") || drink_list.include?("espresso")
end

drinks = ["tea", "espresso", "juice", "coffee"]
puts coffee_drink?(drinks)

def correct_guess?(guess_list, answer)
  # use #any? to return true when any element of the guess_list (array) equals the answer (number)
  guess_list.any? { |guess| guess == answer }
end

def twenty_first_century_years?(year_list)
  # use #all? to return true when all of the years in the year_list (array) are between 2001 and 2100
  year_list.all? { |year| (2001..2100).cover?(year) }
end

def correct_format?(word_list)
  # use #none? to return true when none of the words in the word_list (array) are in upcase
word_list.none? { |word| word == word.upcase }
end

def valid_scores?(score_list, perfect_score)
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)
  score_list.values.one? { |score| score == perfect_score }
end
