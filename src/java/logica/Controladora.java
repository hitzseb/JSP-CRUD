/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;

/**
 *
 * @author Sebastian
 */
public class Controladora {
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearPersona(Persona per){
        controlPersis.crearPersona(per);
    }
    
    public void eliminarPersona(int id){
        controlPersis.eliminarPersona(id);
    }
    
    public void eliminarPersona(Persona per){
        controlPersis.eliminarPersona(per);
    }
    
    public List<Persona> traerPersonas(){
        return controlPersis.traerPersonas();
    }
    
    public Persona traerPersona (int id){
        return controlPersis.traerPersona(id);
    }
    
    public void editarPersona(Persona per){
        controlPersis.editarPersona(per);
    }
}
