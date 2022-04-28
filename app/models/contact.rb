class Contact < ApplicationRecord
    has_many :phones, dependent: :destroy
    validates :firstName, presence: true
    validates :lastName, presence: true
end
