class Opinion < ApplicationRecord
    has_many :reply,dependent: :destroy
end
