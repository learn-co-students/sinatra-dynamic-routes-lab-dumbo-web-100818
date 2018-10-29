require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  get '/square/:number' do
    @multiply = params[:number].to_i * params[:number].to_i
    "#{@multiply}"
  end
  get '/say/:number/:phrase' do
    string = ""
    (params[:number].to_i).times do
    string +="#{params[:phrase]}/n"
  end
  string
end
get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end
get '/:operation/:number1/:number2' do
  operation = params[:operation]
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i
  if operation == "add"
    answer = num1 + num2
  elsif operation == "subtract"
    answer = num2 - num1
  elsif operation == "multiply"
    answer = num1 * num2
  elsif operation == "divide"
    answer = num1 / num2
  else
    answer = "Unable to perform this operation"
  end
  answer.to_s
end




end
