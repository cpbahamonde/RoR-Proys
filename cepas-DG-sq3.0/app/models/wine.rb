class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strain, through: :wine_strains
end
