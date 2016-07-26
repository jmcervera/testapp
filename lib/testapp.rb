#!/usr/bin/env ruby

require 'bundler/setup'

require 'rom-sql'
require 'rom-repository'
require_relative 'testapp/relations/articles'

require 'dotenv'
Dotenv.load


rom = ROM.container(:sql, ENV.fetch('DATABASE_URL')) do |config|
  config.register_relation Relations::Articles
  puts config.inspect
end

puts rom.inspect
