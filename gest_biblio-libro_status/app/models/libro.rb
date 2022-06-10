class Libro < ApplicationRecord
    enum status: { Prestamo: "Prestamo", Estante: "Estante" } 
    enum descrip:{ CienciaFiccion: "CienciaFiccion", Fantasia: "Fantasia"}

    ransacker :status, formatter: proc {|v| statuses[v]} do |parent|
        parent.table[:status]
    end

end