class Document < ApplicationRecord
  belongs_to :user

  enum status: { draft: 0, sent: 1, signed: 2, canceled: 3 }
end
