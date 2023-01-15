require 'sinatra'

get '/' do
      erb :indexx
end

post '/' do
      @user_name = params[:user_name]
      @phone = params[:phone]
      @date_time = params[:date_time]

      
      @title = 'Thanks'
      @message = "Dear #{@user_name},we'll be waiting for you at #{@date_time}"
      
      f = File.open 'C:\FilesRuby\Ruby-course\21-30\lesson20\views\public\users.txt', 'a' 
      f.write "User: #{@user_name}, Phone: #{@phone}, Date: #{@date_time}"
      f.close

      erb :message
end
