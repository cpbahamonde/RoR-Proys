class Proy < ApplicationRecord

    validates :nombre, presence: true
    validates :descrip, presence: true
    validates :fechini, presence: true
    validates :fechfin, presence: true  
    validates :estado, presence: true 
    validate :validar_fechas
    # validates :fechfin, comparison: { greater_than: :fechini }
    # before_save :validar_fechas

    def validar_fechas
        errors.add(:fechini, "Fecha Inicio debe ser anterior a Fecha Final") unless
        fechfin >= fechini
    end 
end
