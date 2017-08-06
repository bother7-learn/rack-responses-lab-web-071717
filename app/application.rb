class Application

  def call(env)
    resp = Rack::Response.new
    x = Time.now
    resp.write "#{x}\n"
    if x.hour >= 12
    resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end



end
