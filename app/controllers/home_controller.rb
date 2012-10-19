class HomeController < ApplicationController
  #include HomeHelper
  require 'net/http'
  
  def startscan
    @ip=params[:ip]
    @nmap=params[:nmap]
    @skipfish=params[:skipfish]
    
    
    #io = IO.popen("ls -lha")
    #@output = io.read
    #io.close
    
    @query="/cgi-bin/start.pl?ip=@ip&nmap=@nmap&skipfish=@skipfish"

    connection = Net::HTTP.new("http://10.31.35.167")
    response = ""
    connection.start do |http|
      req = Net::HTTP::Get.new("/")
      @response = http.request(req)
    end
   
        
  end
end
