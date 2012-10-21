class HomeController < ApplicationController
  #include HomeHelper
  require 'net/http'
  
  def startscan
    
    #received params from form
    ip=params[:ip]
    email=params[:email]
    nmap=params[:nmap]
    skipfish=params[:skipfish]
    nikto=params[:nikto]
    wapiti=params[:wapiti]
    wpscan=params[:wpscan]
    joomscan=params[:joomscan]
    
    #concatinate @scanners via commas
    @scanners=''
    (nmap.to_i==1?@scanners=@scanners+'nmap,':false)
    (skipfish.to_i==1?@scanners=@scanners+'skipfish,':false)
    (nikto.to_i==1?@scanners=@scanners+'nikto,':false)
    (wapiti.to_i==1?@scanners=@scanners+'wapiti,':false)
    (wpscan.to_i==1?@scanners=@scanners+'wpscan,':false)
    (joomscan.to_i==1?@scanners=@scanners+'joomscan,':false)
    
    @scanners=@scanners[0..-2] #cutting last comma
    
        
    @host="http://10.31.35.1671"
    @query="/?&target=@ip&scanners=@scanners&email=@email"

    #result = Net::HTTP.get(URI.parse(@host+@query)) 
    begin
      @result = Net::HTTP.get(URI.parse(@host+@query))
    rescue
      @result="No connection. Error: #{$!}"
    ensure 
      #this_code_will_execute_always()
  end
     
      
        
  end
end
