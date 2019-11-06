class Event < ApplicationRecord


has_many :users through attendances

end
