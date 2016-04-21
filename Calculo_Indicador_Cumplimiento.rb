require "date"
require 'active_support/all'

def CalculoIndicadorCumplimiento
  print "Ingrese el estado del caso: "
  state = gets.chomp

  if state == "cerrado"
    
    print "Ingrese la fecha de creación del caso: "
    dia_creacion = gets.chomp.to_date
    print "Ingrese la fecha de vencimiento del caso: "
    dia_vencimiento = gets.chomp.to_date
    print "Ingrese la fecha de cierre del caso: "
    dia_cierre = gets.chomp.to_date

    if dia_cierre > dia_vencimiento
      puts "NO CUMPLE"
    elsif dia_vencimiento >= dia_cierre
      puts "CUMPLE"
    end

  else
    print "Ingrese la fecha de creación del caso: "
    dia_creacion = gets.chomp.to_date
    print "Ingrese la fecha de vencimiento del caso: "
    dia_vencimiento = gets.chomp.to_date
    print "Ingrese la fecha de cierre del caso: "
    dia_cierre = gets.chomp.to_date

    if dia_vencimiento <= dia_cierre
      puts "NO CUMPLE"
    end
  end
end


CalculoIndicadorCumplimiento()