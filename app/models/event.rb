class Event < ApplicationRecord
    validates :name, :location, :starts_at, presence: true

    validates :description, length: { minimum: 25 }

    validates :price, numericality: { greater_than_or_equal_to: 0 }

    validates :capacity, numericality: { only_integer: true, greater_than: 0 }

    validates :image, format: { with: /\.(jpg|png|webp)\z/i, message: "must be .jpg, .png, or .webp" }

    def self.upcoming
        where("starts_at > ?", Time.now).order("starts_at asc")
    end

    def free?
        price.blank? || price.zero?
    end
end
