/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelos.Cursos;
import java.util.List;

/**
 *
 * @author Usuario
 */
public interface ICursosDAO {
    public boolean registrar (Cursos curso);
    public List<Cursos> obtener();
    public boolean actualizar (Cursos curso);
    public boolean eliminar (String[] curso);
    public Cursos buscar (int codigo);
}
