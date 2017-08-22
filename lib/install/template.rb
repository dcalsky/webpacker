# Install webpacker
copy_file "#{__dir__}/config/webpacker.yml", "config/webpacker.yml"

puts "Copying webpack core config and loaders"
directory "#{__dir__}/config/webpack", "config/webpack"
directory "#{__dir__}/config/loaders/core", "config/webpack/loaders"

puts "Copying .postcssrc.yml to app root directory"
copy_file "#{__dir__}/config/.postcssrc.yml", ".postcssrc.yml"

puts "Copying .babelrc to app root directory"
copy_file "#{__dir__}/config/.babelrc", ".babelrc"

puts "Creating javascript app source directory"
directory "#{__dir__}/javascript", Webpacker.config.source_path

puts "Copying binstubs"
directory "#{__dir__}/bin", "bin"


puts "Installing all JavaScript dependencies"
run "yarn add webpack-merge webpack-manifest-plugin extract-text-webpack-plugin path-complete-extname " \
"compression-webpack-plugin rails-erb-loader glob -D --ignore-engines" \

puts "Webpacker successfully installed 🎉 🍰"
