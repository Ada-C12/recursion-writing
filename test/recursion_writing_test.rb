require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/skip_dsl"
require_relative '../lib/recursive-methods'

describe "factorial" do
  it "will find the factorial of 0" do
    num = 0
    answer = factorial(num)
    expect(answer).must_equal 1
  end
  it "will find the factorial of 5" do
    num = 5
    answer = factorial(num)
    expect(answer).must_equal 5*4*3*2*1
  end
  it "will raise an ArgumentError if given a number not >= 0" do
    num = -1
    expect {
      answer = factorial(num)
    }.must_raise ArgumentError
  end
end

describe "reverse" do
  it "will reverse 'cat'" do
    string = "cat"
    answer = reverse(string)
    expect(answer).must_equal "tac"
  end
  it "will reverse 'a'" do
    string = "a"
    answer = reverse(string)
    expect(answer).must_equal "a"
  end
  it "will reverse empty string " do
    string = ""
    answer = reverse(string)
    expect(answer).must_equal ""
  end
  it "will reverse 'apple'" do
    string = "apple"
    answer = reverse(string)
    expect(answer).must_equal "elppa"
  end
end

describe "reverse_in_place" do
  it "will reverse 'cat'" do
    string = "cat"
    answer = reverse_inplace(string)
    expect(answer).must_equal "tac"
  end
  it "will reverse 'a'" do
    string = "a"
    answer = reverse_inplace(string)
    expect(answer).must_equal "a"
  end
  it "will reverse empty string " do
    string = ""
    answer = reverse_inplace(string)
    expect(answer).must_equal ""
  end
  it "will reverse 'apple'" do
    string = "apple"
    answer = reverse_inplace(string)
    expect(answer).must_equal "elppa"
  end
end

describe "bunny" do
  it "returns 0 for 0 bunnies" do
    count = 0
    answer = bunny(count)
    expect(answer).must_equal 0
  end
  it "returns 2 for 1 bunny" do
    count = 1
    answer = bunny(count)
    expect(answer).must_equal 2
  end
  it "returns 100 for 50 bunnies" do
    count = 50
    answer = bunny(count)
    expect(answer).must_equal 100
  end
end

describe "nested" do
  it "will return true for empystring" do
    string = ""
    answer = nested(string)
    expect(answer).must_equal true
  end
  it "will return true for a nested series of parens" do
    string = "((()))"
    answer = nested(string)
    expect(answer).must_equal true
  end
  it "will return false for a nested series of parens" do
    string = "(()))"
    answer = nested(string)
    expect(answer).must_equal false
  end
  it "will return false for an even length improperly nested series of parens" do
    string = "(())))"
    answer = nested(string)
    expect(answer).must_equal false
  end
end

describe "search" do
  it "will return false for empty array" do
    item = "a"
    array = []
    answer = search(array, item)
    expect(answer).must_equal false
  end
  it "will return true when looking for something in the array" do
    item = "a"
    array = ["b", "c", "a"]
    answer = search(array, item)
    expect(answer).must_equal true
  end
  it "will return false when looking for something not in the array" do
    item = "x"
    array = ["b", "c", "a"]
    answer = search(array, item)
    expect(answer).must_equal false
  end
  it "will return true when finding something at the front of the array" do
    item = "b"
    array = ["b", "c", "a"]
    answer = search(array, item)
    expect(answer).must_equal true
  end
end

describe "is_palindrome" do
  it "will return true for emptystring" do
    string = ""
    answer = is_palindrome(string)
    expect(answer).must_equal true
  end
  it "will return true for a palindrome" do
    string = "racecar"
    answer = is_palindrome(string)
    expect(answer).must_equal true
  end
  it "will return false for a nonpalindrome" do
    string = "raecar"
    answer = is_palindrome(string)
    expect(answer).must_equal false
  end
end

describe "digit_match" do
  it "returns 4 for 1072503891 and 62530841" do
    num1 = 1072503891
    num2 = 62530841
    answer = digit_match(num1, num2)
    expect(answer).must_equal 4
  end
  it "returns 0 for nonmatching numbers" do
    num1 = 0
    num2 = 62530841
    answer = digit_match(num1, num2)
    expect(answer).must_equal 0
  end
  it "returns 3 for 841 and 62530841" do
    num1 = 841
    num2 = 62530841
    answer = digit_match(num1, num2)
    expect(answer).must_equal 3
  end
  it "returns 1 for (0, 0)" do
    num1 = 0
    num2 = 0
    answer = digit_match(num1, num2)
    expect(answer).must_equal 1
  end
  it "returns 1 for (10, 20)" do
    num1 = 10
    num2 = 20
    answer = digit_match(num1, num2)
    expect(answer).must_equal 1
  end
end
