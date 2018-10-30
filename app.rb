require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get "/reversename/:name" do
  @user_name = params[:name].reverse
  "#{@user_name}"
end

  get "/square/:number" do
    @num = params[:number].to_i

    @new_num = @num * @num
    "#{@new_num}"

end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    ("#{@phrase}" * @number)

end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    new_array = []
  @say = params[:say]
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  # new_array << @word1
  # new_array << @word2
  # new_array << @word3
  # new_array << @word4
  # new_array << @word5
  # new_array << @word6
  # length = new_array[-1]
  # cat = length + "."
  # new_array[-1] = cat
  # new_array.join(" ")
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end

get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
  if @operation == "add"
    "#{@number1 + @number2}"
  elsif @operation == "subtract"
    "#{@number1 - @number2}"
  elsif @operation == "multiply"
    "#{@number1 * @number2}"
  elsif @operation == "divide"
    "#{@number1 / @number2}"
    end
end
end
