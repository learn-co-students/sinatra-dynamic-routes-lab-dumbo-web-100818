require_relative 'config/environment'
require "pry"
class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get "/square/:number" do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase] * params[:number].to_i
    @phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word = ""
    params.each_with_index {|(key, value), index| index == 4 ? @word+= " #{value}." : @word+= " #{value}"}
    "#{@word}".strip
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @total = params[:number2].to_i + params[:number1].to_i if @operation == "add"
    @total = params[:number1].to_i - params[:number2].to_i if @operation == "subtract"
    @total = params[:number1].to_i * params[:number2].to_i if @operation == "multiply"
    @total = params[:number1].to_i / params[:number2].to_i if @operation == "divide"
    "#{@total}"
  end


end
