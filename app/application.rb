class Application
 
  @@items = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
 
 
 if req.path.match(/item/)
   
    item_name = req.path.split("/item/").last
    
    if item = @@items.find do |i| 
      i.name == item_name
    end
    resp.write item.price
  else
    resp.status = 400
    resp.write "Item not found"
    end
  else
    resp.status = 404
    resp.write = "Route not found"
  end
    resp.finish
  end
end