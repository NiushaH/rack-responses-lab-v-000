require 'pry'

class Application
 
  def call(env)
    resp = Rack::Response.new
 
    t = Time.new
    h = t.hour
 
    if h.between?(0, 11) 
      resp.write "Good Morning!"
    elsif h.between?(12, 23)
      resp.write "Good Afternoon!"
  binding.pry
    end
 
    resp.finish
  end
 
end