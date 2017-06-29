class Pelicula < ApplicationRecord
	has_many :comentarios, dependent: :destroy
	
def self.search(search)
  where("actor like ?", "%" + "%#{search}%" + "%")
end


end
