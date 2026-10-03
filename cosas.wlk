/*
Como colores contemplar (al menos) rojo, verde, celeste y pardo. De estos, los dos primeros son fuertes, los otros no.

Como materiales tenemos: el cobre y el vidrio que brillan; el lino, la madera y el cuero que no.

Finalmente, considerar (al menos) estos objetos:

una remera roja de lino, pesa 800 gramos.
una pelota parda de cuero, pesa 1300 gramos.
una biblioteca verde de madera, pesa 8000 gramos.
un muñeco celeste de vidrio, de peso variable.
una placa de cobre, de peso y color variables.

*/

/// OBJETOS

object remera{
    method peso() { 800 }
    method color() { rojo}
    method material() {lino}
}

object pelota{
    method peso() {1300}
    method color() {pardo}
    method material() {cuero}
}

object bibloteca{
    method peso() {8000}
    method color() {verde}
    method material() {madera}
}

object munieco{
    var peso = 0
    method cambiarPeso(nuevoPeso) { peso = nuevoPeso}
    method peso() {
        return peso
    }
    method color() {celeste}
    method material() {vidrio}
}

object placa{
    var peso = 0
    var color = verde
    method cambiarPeso(nuevoPeso) {peso = nuevoPeso}
    method peso(){
        return peso
    }
    method cambiarColor(nuevoColor) {color = nuevoColor}
    method color() {
        return color
    }
    method material() {cobre}
}

object arito {
    method peso() {180}
    method color() {celeste}
    method material() {cobre}
}

object banquito {
    var color = naranja
    method peso() {1700}
    method color(){
        return color
    }
    method material() {madera}
    method cambiarColor(nuevoColor) {color = nuevoColor}

}

object cajita {
    var objetoAdentro = arito 
    
    method guardarAdentro(objeto) { objetoAdentro = objeto }
    method peso() = 400 + objetoAdentro.peso() 
    method color() = rojo
    method material() = cobre
}

/// COLORES ///

object rojo{
    method esDeColorFuerte(){
        return true
    }
}

object verde{
    method esDeColorFuerte(){
        return true
    }
}

object celeste{
    method esDeColorFuerte(){
        return false
    }
}

object pardo{
    method esDeColorFuerte(){
        return false
    }
}

object naranja{
    method esDeColorFuerte(){
        return true
    }
}
/////////////

/// MATERIALES

object cobre{
    method esDeMaterialQueBrilla(){
        return true
    }   
}

object vidrio{
    method esDeMaterialQueBrilla(){
        return true
    }   
}

object lino{
    method esDeMaterialQueBrilla(){
        return false
    }   
}

object madera{
    method esDeMaterialQueBrilla(){
        return false
    }   
}

object cuero{
    method esDeMaterialQueBrilla(){
        return false
    }   
}

//////////