class Note < ApplicationRecord
  attr_accessor :owner_id, :note_title, :note_body, :note_category_id
  belongs_to :category
end
