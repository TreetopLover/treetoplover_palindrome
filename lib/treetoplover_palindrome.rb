# frozen_string_literal: true

require_relative "treetoplover_palindrome/version"

class String

  # returns true for palindrome, false otherwise
  def palindrome?
    processed_content == processed_content.reverse
  end

  private
  # returns content for palindrome testing
  def processed_content
    scan(/[a-z]/i).join.downcase
  end
end

