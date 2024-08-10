# frozen_string_literal: true

require_relative "iprog_string_utils/version"

module IprogStringUtils
  def camel_case
    split(/[^a-zA-Z0-9]/).map.with_index do |word, index|
      index.zero? ? word.downcase : word.capitalize
    end.join
  end

  def snake_case
    gsub(/([a-z\d])([A-Z])/, '\1_\2') # Insert underscore between a lowercase/digit and an uppercase letter
      .gsub(/([A-Z]+)([A-Z][a-z\d]+)/, '\1_\2') # Handle cases like "ATest" by inserting an underscore between uppercase letters followed by a lowercase or digit
      .gsub(/\W/, "_")                    # Replace non-word characters with underscores
      .downcase                           # Convert the entire string to lowercase
      .gsub(/__+/, "_")                   # Collapse multiple underscores into a single underscore
      .gsub(/^_|_$/, "")                  # Remove leading and trailing underscores
  end

  def kebab_case
    gsub(/([a-z\d])([A-Z])/, '\1-\2') # Insert hyphen between a lowercase/digit and an uppercase letter
      .gsub(/([A-Z]+)([A-Z][a-z\d]+)/, '\1-\2') # Handle cases like "ATest" by inserting a hyphen between uppercase letters followed by a lowercase or digit
      .gsub(/\W/, "-")                    # Replace non-word characters with hyphens
      .downcase                           # Convert the entire string to lowercase
      .gsub(/--+/, "-")                   # Collapse multiple hyphens into a single hyphen
      .gsub(/^-|-$/, "")                  # Remove leading and trailing hyphens
  end

  def title_case
    split.map(&:capitalize).join(" ")
  end

  def reverse_words
    split.reverse.join(" ")
  end

  def count_words
    split.size
  end

  def truncate(max_length, ellipsis = "...")
    return self if length <= max_length

    truncated_string = self[0, max_length]

    "#{truncated_string.rstrip}#{ellipsis}"
  end

  def strip_html
    gsub(%r{</?[^>]*>}, "")
  end

  def to_bool
    return true if downcase == "true"
    return false if downcase == "false"

    nil
  end

  def palindrome?
    cleaned = gsub(/\W/, "").downcase
    cleaned == cleaned.reverse
  end

  def trim_custom(char = " ")
    gsub(/^#{Regexp.escape(char)}+|#{Regexp.escape(char)}+$/, "")
  end
end

class String
  include IprogStringUtils
end
