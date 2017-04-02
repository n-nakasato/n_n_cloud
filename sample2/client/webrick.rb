require 'webrick'
Thread.start{
  WEBrick::HTTPServer.new(
    DocumentRoot:".",
    Port:8888,
    BindAddress:"127.0.0.1"
  ).start
}
gets