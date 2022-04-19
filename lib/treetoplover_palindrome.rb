# frozen_string_literal: true

require_relative "treetoplover_palindrome/version"

module TreetoploverPalindrome

  # returns true for palindrome, false otherwise
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end
  private
  # returns content for palindrome testing
  def processed_content
    to_s.scan(/[0-9a-z]/i).join.downcase
  end
end

class String 
  include TreetoploverPalindrome
end

class Integer 
  include TreetoploverPalindrome
end
