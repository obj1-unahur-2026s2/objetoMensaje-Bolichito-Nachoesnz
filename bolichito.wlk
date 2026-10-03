import cosas.*
import personas.*

object bolichito{
    var objetoEnMostrador = remera
    var objetoEnVidriera = arito

    method ponerEnMostrador(objetoNuevo){
        objetoEnMostrador = objetoNuevo
    }
    method ponerEnVidriera(objetoNuevo){
        objetoEnVidriera = objetoNuevo
    }

    method esBrillante(){
        return objetoEnMostrador.esDeMaterialQueBrilla() && objetoEnVidriera.esDeMaterialQueBrilla()
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
        return ( self.esMonocromatico() || self.estaEquilibrado() )
    }
    method puedeOfrecerleAlgoA(objetoPersona){
        return (objetoPersona.leGusta(objetoEnMostrador || objetoEnVidriera))
    }
}