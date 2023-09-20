public class Alumno
{
    public string Nombre {get; set;}
    public string Apellido {get; set;}
    public string Legajo {get; set;}
    public string Curso {get; set;}
    public int Nota {get; set;}

    public Alumno() { }

    public Alumno(string nombre, string apellido, string legajo, string curso, int nota)
    {
        Nombre = nombre;
        Apellido = apellido;
        Legajo = legajo;
        Curso = curso;
        Nota = nota;
    }
}