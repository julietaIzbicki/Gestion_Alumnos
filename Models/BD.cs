using System.Data.SqlClient;
using Dapper;
namespace TP7_PreguntadORT.Models;
public static class BD
{
    public static string _connectionString = @"Server=LOCALHOST;
    Database=GestionAlumnos;Trusted_Connection=True;";

    public static List<Alumno> GetListadoAlumnos()
    {
        List<Alumno> ListadoAlumnos = new List<Alumno>();
        using (SqlConnection BD = new SqlConnection(_connectionString))
        {
            string sql = "SELECT Nombre, Apellido FROM Alumnos;";
            ListadoAlumnos = BD.Query<Alumno>(sql).ToList();
        }
        return ListadoAlumnos;
    }

    public static List<Alumno> GetDetalleAlumno(string legajo)
    {
        List<Alumno> alumno = new List<Alumno>();
        using (SqlConnection BD = new SqlConnection(_connectionString))
        {
            string sql = "SELECT Nombre, Apellido, Curso FROM Alumnos WHERE Legajo = @legajo;";
            alumno = BD.Query<Alumno>(sql).ToList();
        }
        return alumno;
    }
}