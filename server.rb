require 'webrick'

srv = WEBrick::HTTPServer.new(
  BindAddress: '0.0.0.0',
  Port: 8080
)

srv.mount_proc('/') do |req, res|
  res.body = req.request_line + req.raw_header.join
  res.status = 200
end

Signal.trap(:INT){ srv.shutdown }
srv.start
