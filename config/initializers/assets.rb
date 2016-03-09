# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.paths << Rails.application.root.join('node_modules')


Rails.application.config.assets.precompile += %w(
  bl_admin/admin_pages/index.js
  bl_registry/registry_pages/index.js
  webpack/admin-bundle.js
  webpack/app-bundle.js
  webpack/server-bundle.js
  webpack/vendor-bundle.js
)