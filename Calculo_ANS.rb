require "date"
require 'active_support/all'

def fechaV
  print "Ingrese la fecha de creación: "
  diac = gets.chomp
  print "Ingrese el tipo caso: "
  tipo = gets.chomp

  it = 0
  diahabil= 0
  if tipo == "peticiones" || tipo == "quejas" || tipo == "reclamos" || tipo == "felicitaciones"
    ans = 15
    while it < ans
      @day_of_week = (Date.strptime(diac, "%d/%m/%Y") + (it+1).day).wday
      
      if @day_of_week == 6 or @day_of_week == 0
        fechavencimiento = ""
        ans = ans + 1
      else
        fechavencimiento = Date.strptime(diac, "%d/%m/%Y") + (it+1).day
        diahabil = diahabil + 1
      end
      it = it + 1
    puts fechavencimiento
    end 
  elsif tipo == "solicitud"
    ans = 5
    while it < ans
      @day_of_week = (Date.strptime(diac, "%d/%m/%Y") + (it+1).day).wday
      
      if @day_of_week == 6 or @day_of_week == 0
        fechavencimiento = ""
        ans = ans + 1
      else
        fechavencimiento = Date.strptime(diac, "%d/%m/%Y") + (it+1).day
        diahabil = diahabil + 1
      end
      it = it + 1
    puts fechavencimiento
    end
  else
    puts "Tipo Inválido"
  end
end

fechaV()