class Application
 
  @@items = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
 
 
 if req.path.match
    @@items.each do |item|
      resp.write "#{item}\n"
    end
 
 
 
 
    resp.finish
  end
end