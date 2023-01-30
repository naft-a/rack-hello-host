# Hello Host

Mini rack app in an HTTP webserver to test load balancers - GET / requests return "Hello from hostname". By default puma runs on port `9292` and it can be configured to listen on whatever port you'd like by passing a `-p` parameter when running the container.

`docker run -p 3000:9292 ghcr.io/naft-a/rack-hello-host:latest bundle exec puma -C puma.rb`
