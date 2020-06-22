require "open-uri"

class GamesController < ApplicationController
  def new
    # @letters = (0...10).map { ('a'..'z').to_a[rand(26)] }
    @letters = ('a'..'z').to_a.sample(rand(6...10))
    # raise
  end

  def score
    @rand_letters = params[:rand_letters]
    # raise
    @answer = params[:answer]
    url = "https://wagon-dictionary.herokuapp.com/#{@answer}"
    a = open(url).read
    @result = JSON.parse(a)
  end
end
