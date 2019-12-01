class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if resp.path=="/items"
      resp.write "found items"
    else
      resp.write "path not found"
      resp.status = 404
    end
    resp.finish
  end
end