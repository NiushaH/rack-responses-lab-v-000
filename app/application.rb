class Application
 
  def call(env)
    resp = Rack::Response.new
 
    t = Time.new.hour
    h = t.hour
 
    if t < 11 
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end