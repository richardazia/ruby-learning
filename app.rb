# app.rb
require "sinatra"
require "sinatra/reloader" if development?
get '/' do
  'Hello world!, I am ruby on Sinatra. Hello again'
end

get '/:age' do
  "Hi, I am #{params[:age]} years young."
end