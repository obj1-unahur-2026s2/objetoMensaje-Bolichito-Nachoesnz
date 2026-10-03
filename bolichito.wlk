import cosas.*
import personas.*

object bolichito{
    var objetoEnMostrador = remera
    var objetoEnVidriera = arito

    method objetoEnMostrador() = objetoEnMostrador
    method objetoEnVidriera() = objetoEnVidriera



    method ponerEnMostrador(objetoNuevo){
        objetoEnMostrador = objetoNuevo
    }
    method ponerEnVidriera(objetoNuevo){
        objetoEnVidriera = objetoNuevo
    }

    method esBrillante(){
        return objetoEnMostrador.material().esDeMaterialQueBrilla() && objetoEnVidriera.material().esDeMaterialQueBrilla()
    }

    method esMonocromatico(){
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }

    method estaEquilibrado(){
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }
    
    method tieneAlgoExhibidoDe(colorARevisar){
        return (objetoEnMostrador.color() == colorARevisar || objetoEnVidriera.color() == colorARevisar )
    }

    method puedeMejorar(){
        return ( self.esMonocromatico() || !self.estaEquilibrado() )
    }
    method puedeOfrecerleAlgoA(objetoPersona){
        return objetoPersona.leGusta(objetoEnMostrador) || objetoPersona.leGusta(objetoEnVidriera) 
    }
}