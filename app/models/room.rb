class Room < ApplicationRecord
  has_many :reservations, dependent: :destroy
end

class Room < ApplicationRecord
  validates :slug, presence: true, uniqueness: true

  def image_paths
    base = Rails.root.join("app/assets/images/rooms/#{slug}")
    Dir.glob(base.join("*.{jpg,jpeg,png,webp,gif}"))
       .sort
       .map { |path| "rooms/#{slug}/#{File.basename(path)}" }
  end
end
