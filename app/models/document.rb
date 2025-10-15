class Document < ApplicationRecord
  belongs_to :user

  has_many :signatures, dependent: :destroy

  enum status: { draft: 0, sent: 1, signed: 2, canceled: 3 }
end
