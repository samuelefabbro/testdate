class Client < ApplicationRecord
    has_many :events, dependent: :destroy

    validates :name, :shortname, :description, :color, presence: true
end

