class Phone < ApplicationRecord
    belongs_to :contact
    validates :phoneNumber, presence: true
    validates :category, presence: true

end
