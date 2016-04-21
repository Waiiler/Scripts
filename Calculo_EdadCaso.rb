require "date"
require 'active_support/all'

def CalculoEdadCaso
  print "Ingrese la fecha de creación del caso: "
  dia_creacion = gets.chomp.to_date
  fecha_sistema = Time.now
  
  edad_caso = 0
  
  while dia_creacion < fecha_sistema
    @day_of_week = (dia_creacion + 1.day).wday
      
    if @day_of_week == 6 or @day_of_week == 0
      dia_creacion = dia_creacion + 1.day
    else
      dia_creacion = dia_creacion + 1.day
      edad_caso = edad_caso + 1
    end
  end
  edad_caso = edad_caso - 1
  puts "La fecha actual es: #{fecha_sistema.strftime("%d-%m-%Y")}\n"
  puts "La edad del caso es: #{edad_caso} días"
end
