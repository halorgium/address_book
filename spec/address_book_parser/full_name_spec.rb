require File.dirname(__FILE__) + '/../spec_helper'
require 'address_book_parser'

describe AddressBookParser, "for full_name" do
  parse_from AddressBookParser, :full_name

  it "should parse 'Joe Bloggs'" do
    parse("Joe Bloggs") do |result|
      result.should be_parsed_and_eql("Joe Bloggs")
    end
  end
end

