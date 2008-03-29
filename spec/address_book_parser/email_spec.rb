require File.dirname(__FILE__) + '/../spec_helper'
require 'address_book_parser'

describe AddressBookParser, "for email" do
  parse_from AddressBookParser, :email
  
  it "should parse 'joe@bloggs.com'" do
    parse("joe@bloggs.com") do |result|
      result.should be_parsed_and_eql("joe@bloggs.com")
    end
  end
end


