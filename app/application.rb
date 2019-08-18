class Application
 
  def call(env)
    resp = Rack::Response.new
 
    t = Time.new

    if t.hour > 11 
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
 
    resp.finish
  end
 
end