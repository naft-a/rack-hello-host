# frozen_string_literal: true

run do |env|
  [200, {}, ["Hello from #{env['SERVER_NAME']}\n"]]
end
