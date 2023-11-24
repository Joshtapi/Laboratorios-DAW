/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelos.Alumnos;
import modelos.Cursos;
import modelos.Matriculas;

/**
 *
 * @author Usuario
 */
public interface IMatriculaDAO {
    public List<Alumnos> buscarAlumnos(Alumnos alumno);
    public List<Matriculas> buscarMatriculas();
    public List<Cursos> buscarCursos();
    public boolean grabarMatricula(String[] datosMatricula,
            String[] codigoCursos,String[] montos);
    public Matriculas buscar(int codigo) ;
    public boolean registrar (Matriculas matricula);
    public boolean actualizar (Matriculas matricula);
    public boolean eliminar (String[] matricula);
    public List<Matriculas> obtener();
    public List<Matriculas> buscarPorNroDoc(String nro_doc);
}
