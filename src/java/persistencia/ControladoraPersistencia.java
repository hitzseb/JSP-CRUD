/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Persona;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author Sebastian
 */
public class ControladoraPersistencia {
    PersonaJpaController perJPA = new PersonaJpaController();
    
    public void crearPersona(Persona per){
        perJPA.create(per);
    }
    
    public void eliminarPersona(int id){
        try {
            perJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarPersona(Persona per){
        try {
            perJPA.destroy(per.getId());
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Persona> traerPersonas(){
        return perJPA.findPersonaEntities();
    }
    
    public Persona traerPersona(int id){
        return perJPA.findPersona(id);
    }
    
    public void editarPersona(Persona per){
        try {
            perJPA.edit(per);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
