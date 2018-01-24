require "kemal"

get "/" do
  "test"
end

Kemal.config do |cfg|
  cfg.serve_static = false
  cfg.logging = false
end

Kemal.run do |cfg|
  if server = cfg.server
    server.bind(reuse_port: true)
  end
end
