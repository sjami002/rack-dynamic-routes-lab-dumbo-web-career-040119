class Application
 
  @@items = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
 
 
 if req.path.match(/item/)
   
    item_name = req.path.split("/item/").last
    item = @@items.find{|i| item.name == i.name}
    
    end
 
 
 
 
    resp.finish
  end
end