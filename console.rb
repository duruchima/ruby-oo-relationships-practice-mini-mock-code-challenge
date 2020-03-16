require 'pry'
require_relative './book'
require_relative './author'

duncan = Author.new("Duncan Uruchima")
stephanie = Author.new("Stephanie Reis")
josh = Author.new("Josh McKay")
alba = Author.new("Alba King")

duncan.write_book('test', 5000)
duncan.write_book('yes you can', 1000)
duncan.write_book('believe in the me that believes in you', 75000)
stephanie.write_book('freud and you', 9500)
stephanie.write_book('how to psychoanalyze', 2500)
alba.write_book('how to anxiety', 100)
josh.write_book('babies!', 10)


binding.pry


