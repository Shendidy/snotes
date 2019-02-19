class Category < ApplicationRecord
  attr_accessor :owner_id, :note_title, :note_body, :note_category_id
  has_many :notes
end
