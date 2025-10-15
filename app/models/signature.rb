class Signature < ApplicationRecord
  belongs_to :document

  enum status: { completed: 0, error: 1 }
end
