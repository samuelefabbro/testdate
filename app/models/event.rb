class Event < ApplicationRecord
    belongs_to :client

    validates :title, :date, :time, presence: true
end
