class Application
 
  @@items = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
 
 
 if req.path.match(/item/)
   
    item_name = req.path.split("/item/").last
    
    if item = @@items.find do |i| 
      item.name == item_name
    end
    end
 
 
 
 
    resp.finish
  end
end