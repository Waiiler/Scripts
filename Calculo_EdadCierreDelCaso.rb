require "date"
require 'active_support/all'

def CalculoEdadCierreCaso
  print "Ingrese el estado del caso: "
  state = gets.chomp
  
  
  edad_cierre_caso = 0

  if state == "cerrado"
    
    print "Ingrese la fecha de creación del caso: "
    dia_creacion = gets.chomp.to_date
    print "Ingrese la fecha de cierre del caso: "
    dia_cierre = gets.chomp.to_date

    while dia_creacion < dia_cierre
      @day_of_week = (dia_creacion + 1.day).wday
        
      if @day_of_week == 6 or @day_of_week == 0
        dia_creacion = dia_creacion + 1.day
      else
        dia_creacion = dia_creacion + 1.day
        edad_cierre_caso = edad_cierre_caso + 1
      end
    end
    puts "La edad cierre del caso es de: #{edad_cierre_caso} días"
  else
    puts "Estado inválido"
  end
end

CalculoEdadCierreCaso()