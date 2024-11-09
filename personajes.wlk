class Personaje {
  var property rol
  var fuerza

  method potencialOfensivo() = fuerza * 10 + rol.extra()

  method esGroso() = self.esInteligente() or rol.esGroso(self)

  method esInteligente()
}

class Orco inherits Personaje{
  override method esInteligente() = false
}

class Humano inherits Personaje{
  var property inteligencia

  override method esInteligente() = inteligencia > 50
}

class Guerrero {
  method extra() = 100
  method esGroso(quien) = quien.fuerza() > 50
}

class Cazador {
  var property mascota
  method extra() = mascota.poderOfensivo()
  method esGroso(quien) = mascota.esLongeva()
}

class Brujo {
  method extra(){}

  method esGroso(quien) = true
}

class Mascota {
  var property garras = true
  var property fuerza = 100
  var edad

  method potencialOfensivo(){
    if(garras){
      return fuerza * 2
    }
    else return fuerza
  }

  method esLongeva() = edad > 10
}