class Reply < ApplicationRecord
    belongs_to :opinion,optional: true
    validates :opinion_id, presence: true
    validates :text, presence: true, length: { maximum: 70 }
end
