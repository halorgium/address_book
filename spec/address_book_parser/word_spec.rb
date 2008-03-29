require File.dirname(__FILE__) + '/../spec_helper'
require 'address_book_parser'

describe AddressBookParser, "for word" do
  parse_from AddressBookParser, :word

  it "should parse 'Bloggs'" do
    parse("Bloggs") do |result|
      result.should be_parsed_and_eql("Bloggs")
    end
  end
  
  it "should not parse 'blue blue'" do
    parse("blue blue") do |result|
      result.should have_failed_parsing_because(nil)
    end
  end
end


