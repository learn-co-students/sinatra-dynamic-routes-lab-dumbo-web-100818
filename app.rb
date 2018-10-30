require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @answer = ''
    "#{@number.to_i.times do
       @answer += @phrase
    end}"
    @answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@word}"
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      # binding.pry
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation] == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    else
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end
