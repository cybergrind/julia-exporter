module JuliaExporter
using HTTP

greet() = print("Hello World!")

function startServer()
    # HTTP.listen! and HTTP.serve! are the non-blocking versions of HTTP.listen/HTTP.serve
	server = HTTP.serve!("127.0.0.1", 8088) do request::HTTP.Request
	   @show request
	   @show request.method
	   @show HTTP.header(request, "Content-Type")
	   @show request.body
	   try
	       return HTTP.Response("Hello")
	   catch e
	       return HTTP.Response(400, "Error: $e")
	   end
	end
end

greet()
#server = startServer()
#wait(server)

end # module
