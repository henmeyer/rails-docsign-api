# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

## Seeds for Local Development
return if Rails.env.production?

user = User.create!(name: 'Signer', email: 'signer@rails-docsign-api.com')
document = Document.create!(title: 'Car Purchase Document', status: :signed, user: user)
Signature.create!(signer_email: user.email, document: document, status: :completed)
Document.create!(title: 'Loft Purchase Document', status: :draft, user: user)
