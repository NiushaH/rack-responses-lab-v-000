class Application
 
  def call(env)
    resp = Rack::Response.new
 
    t = Time.new
    h = t.hour
 
    if h.between?(0, 111) 
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end