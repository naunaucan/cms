# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif *.js *.css.scss *.js.coffee *.css)
# Rails.application.config.assets.precompile += ["session.js.coffee", "#{controller}.css"]
# %w( session ).each do |controller|
#   Rails.application.config.assets.precompile += ["#{controller}.js.coffee", "#{controller}.css"]
# end
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
