module JuliaExporter
using HTTP
using Printf

greet() = print("Hello World!\n")

struct Metric
    name::String
    labels::Array{Tuple{String,Union{String,Int}}}
    value::Union{Int,Float64}
end

function startServer(host="127.0.0.1", port=8088)
    # HTTP.listen! and HTTP.serve! are the non-blocking versions of HTTP.listen/HTTP.serve
    @printf("Start server on port %s:%d\n", host, port)

	server = HTTP.serve!(host, port) do request::HTTP.Request
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
