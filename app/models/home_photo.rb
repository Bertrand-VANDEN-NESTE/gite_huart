class HomePhoto < ApplicationRecord
  def image_paths
    Dir.glob(Rails.root.join("app/assets/images/house/#{slug}*.jpg")).map do |path|
      "house/#{File.basename(path)}"
    end
  end
end
