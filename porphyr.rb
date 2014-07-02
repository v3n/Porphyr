#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)
$DEBUG=true
require_relative './lib/porphyr.rb'
require_rel 'helper'
require_rel 'lib'

game = Porphyr::Porphyr.new
puts "Porphyr starting..."

loop { game.player.respond gets.chomp }