require File.dirname(__FILE__) + '/../spec_helper'
require 'address_book_parser'

describe AddressBookParser, "for space" do
  parse_from AddressBookParser, :space

  it "should parse ' '" do
    parse(" ") do |result|
      result.should be_parsed_and_eql(" ")
    end
  end
  
  it "should parse '  '" do
    parse("  ") do |result|
      result.should be_parsed_and_eql("  ")
    end
  end
end


