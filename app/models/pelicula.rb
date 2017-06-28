class Pelicula < ApplicationRecord
	has_many :comentarios, dependent: :destroy

end
