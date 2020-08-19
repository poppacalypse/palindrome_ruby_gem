require "test_helper"

class PoppacalypsePalindromeTest < Minitest::Test
  # def test_that_it_has_a_version_number
  #   refute_nil ::PoppacalypsePalindrome::VERSION
  # end

  # def test_non_palindrome
  #   assert !"apple".palindrome?
  # end

  # Negative assertion using `refute`, alternative to asserting that something is not true
  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_letters
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  end

end
