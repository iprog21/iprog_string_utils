# frozen_string_literal: true

require_relative "../lib/iprog_string_utils"

RSpec.describe IprogStringUtils do
  it "converts a string to camelCase" do
    expect("hello world".camel_case).to eq("helloWorld")
    expect("Hello world".camel_case).to eq("helloWorld")
    expect("HELLO_WORLD".camel_case).to eq("helloWorld")
  end

  it "converts a string to snake_case" do
    expect("Hello World!".snake_case).to eq("hello_world")
    expect("ThisIsATest".snake_case).to eq("this_is_a_test")
    expect("MixedCaseString".snake_case).to eq("mixed_case_string")
  end

  it "converts a string to kebab-case" do
    expect("Hello World!".kebab_case).to eq("hello-world")
    expect("ThisIsATest".kebab_case).to eq("this-is-a-test")
    expect("MixedCaseString".kebab_case).to eq("mixed-case-string")
  end

  it "converts a string to Title Case" do
    expect("hello world".title_case).to eq("Hello World")
    expect("HELLO WORLD".title_case).to eq("Hello World")
    expect("hElLo WoRlD".title_case).to eq("Hello World")
  end

  it "reverses the order of words in a string" do
    expect("hello world".reverse_words).to eq("world hello")
    expect("one two three".reverse_words).to eq("three two one")
    expect("single".reverse_words).to eq("single")
  end

  it "counts the number of words in a string" do
    expect("hello world".count_words).to eq(2)
    expect("one two three".count_words).to eq(3)
    expect("single".count_words).to eq(1)
    expect("".count_words).to eq(0)
  end

  it "truncates a string to a specified length and appends an ellipsis" do
    expect("This is a very long string".truncate(10)).to eq("This is a...")
    expect("Short".truncate(10)).to eq("Short")
    expect("This is a long string".truncate(15, "--")).to eq("This is a long--")
  end

  it "strips HTML tags from a string" do
    expect("<p>Hello <strong>world</strong>!</p>".strip_html).to eq("Hello world!")
    expect("<div>Some <em>text</em></div>".strip_html).to eq("Some text")
    expect("No HTML here".strip_html).to eq("No HTML here")
  end

  it "converts a string to a boolean" do
    expect("true".to_bool).to be true
    expect("false".to_bool).to be false
    expect("TRUE".to_bool).to be true
    expect("FALSE".to_bool).to be false
    expect("not_a_bool".to_bool).to be_nil
  end

  it "checks if a string is a palindrome" do
    expect("madam".palindrome?).to be true
    expect("racecar".palindrome?).to be true
    expect("hello".palindrome?).to be false
    expect("A man, a plan, a canal, Panama".palindrome?).to be true
  end

  it "trims custom characters from the beginning and end of a string" do
    expect("...hello...".trim_custom(".")).to eq("hello")
    expect("$$$money$$$".trim_custom("$")).to eq("money")
    expect("###header###".trim_custom("#")).to eq("header")
  end
end
