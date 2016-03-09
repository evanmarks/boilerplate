module ApplicationHelper

  def find_asset(logical_path)
    if Rails.application.config.assets.compile
      assets.find_asset(logical_path)
    else
      assets_manifest.assets[logical_path]
    end
  end

end
