class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    return '' if str.nil? || !str.is_a?(String) || str.empty? 

    replacer = 'marklar'    

    str.gsub(/\b[a-zA-Z]{5,}\b/) do |word|
      needs_capitalization?(word) ? replacer.capitalize : replacer
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return 0 unless nth.is_a?(Integer) && nth > 2

    tot = 0
    fibonacci_series(nth).each { |num| tot += num if num.even? }

    tot
  end

  ########## PRIVATE ##########
  
  def self.needs_capitalization?(str)
    return false if str.nil? || !str.is_a?(String) || str.empty?

    first_char = str[0]
    first_char == first_char.upcase
  end

  def self.fibonacci_series(nth)
    return [] unless nth.is_a?(Integer) && nth >= 0

    series = []

    prev, succ = 0, 1

    nth.times do 
      succ, prev = succ + prev, succ 
      series << prev
    end

    series
  end

  private_class_method :needs_capitalization?, :fibonacci_series

end
