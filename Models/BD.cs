using System.Data.SqlClient;
using Dapper;

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

    public static Alumno GetDetalleAlumnos(string legajo)
    {
        Alumno alumno= null ;
        using (SqlConnection BD = new SqlConnection(_connectionString))
        {
            string sql = "SELECT Alumnos.Nombre, Alumnos.Apellido, Alumnos.Curso FROM Alumnos INNER JOIN Notas ON Notas.idNota = Alumnos.idNota WHERE Legajo = @legajo;";
            alumno = BD.QueryFirstOrDefault<Alumno>(sql, new{legajo = legajo});
        }
        return alumno;
    }
}