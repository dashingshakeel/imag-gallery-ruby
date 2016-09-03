require "bundler"
Bundler.require
require "bundler/setup"
ENV["RACK_ENV"] ||="development"
DB=Sequel.connect "sqlite://db/#{ENV["RACK_ENV"]}.sqlite3"

require "./app"
require "./lib/image_uploader"
require "./lib/image"


run App
