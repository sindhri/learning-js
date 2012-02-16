root=File.expand_path(Dir.pwd)
puts ">>> Serving: #{root}"

app = Rack::Builder.app do  
  map "/" do
    run Rack::Directory.new(root)
  end
end

run app
