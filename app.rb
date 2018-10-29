require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    square = num * num
    "#{square}"
  end

  get '/say/:number/:phrase' do
    phrase = ""
    num = params[:number].to_i
    @phrase = params[:phrase]
    num.times do
      phrase += @phrase
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrase = []
    phrase << params[:word1]
    phrase << params[:word2]
    phrase << params[:word3]
    phrase << params[:word4]
    phrase << params[:word5]
    "#{phrase.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operation == "add"
      "#{num1 + num2}"
    elsif operation == "subtract"
      "#{num1 - num2}"
    elsif operation == "multiply"
      "#{num1 * num2}"
    elsif operation == "divide"
      "#{num1 / num2}"
    end
  end
end
