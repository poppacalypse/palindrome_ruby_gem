require "poppacalypse_palindrome/version"

# =============== Ch 8.5 Refactor: Exercise ===================
# =============== Restore the module ===============

module PoppacalypsePalindrome

    # Returns true for palindrome, false otherwise
    def palindrome?
      if processed_content.empty?
        false
      else
      processed_content == processed_content.reverse
      end
    end

    private

      # Returns content for palindrome testing
      def processed_content
        # self.to_s.scan(/[a-z]/i).join.downcase

        # include digits to accomodate integers
        self.to_s.scan(/[a-z\d]/i).join.downcase
      end
end

class String
  include PoppacalypsePalindrome
end

class Integer
  include PoppacalypsePalindrome
end

# -------------------------------------------

# class String
#
#   # Returns true for a palindrome, false otherwise
#   def palindrome?
#     processed_content == processed_content.reverse
#   end
#
#   # ========== Testing & TDD =======================
#   # =============== Ch 8.4 Green ===================
#
#   # Returns only the letters in the string
#   # def letters
#   #   the_letters = []
#   #   for i in 0..self.length - 1 do
#   #     if self[i].match(/[a-zA-z]/)
#   #       the_letters << self[i]
#   #     end
#   #   end
#   #   the_letters.join
#   # end
#
#  # =============== Ch 8.5 Refactor: Method 1 ===================
#  # Eliminate duplication by binding to var, and simplify regex
#
#   # def letters
#   #   the_letters = []
#   #   letter_regex = /[a-z]/i
#   #   self.chars.each do |character|
#   #     if character.match(letter_regex)
#   #       the_letters << character
#   #     end
#   #   end
#   #   the_letters.join
#   # end
#
#   # =============== Ch 8.5 Refactor: Method 2 ===================
#
#   # def letters
#   #   # self.chars.select { |c| c.match(/[a-z]/i) }.join
#   #   chars.select { |c| c.match(/[a-z]/i) }.join
#   # end
#
#   private
#
#     # ============ Ch 8.5 Refactor: Method 3 ==================
#     # It's so compact that we can put it directly in processed_content, instead of defining a method of its own as the above 2 examples.
#     # We also won't be needing test_letters in the test file
#
#     # Returns content for palindrome testing
#     # def processed_content
#     #   self.letters.downcase
#     # end
#
#     def processed_content
#       self.scan(/[a-z]/i).join.downcase
#     end
#
# end
