$:.unshift File.dirname(__FILE__) + "/../lib"
require 'rubygems'
require 'spec'

require 'treetop/parser_example_group'
Spec::Example::ExampleGroupFactory.register(:address_book_parser, Treetop::ParserExampleGroup)
