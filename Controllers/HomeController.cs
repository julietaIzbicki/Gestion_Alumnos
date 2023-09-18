using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Gestion_Alumnos.Models;

namespace Gestion_Alumnos.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }

    public IActionResult ListadoAlumnos()
    {
        ViewBag.ListaAlumnos = BD.GetListadoAlumnos();
        Console.WriteLine(BD.GetListadoAlumnos());
        return View();
    }

    [HttpPost]
    public IActionResult DetalleAlumnos(string legajo)
    {
        Alumno alumno= BD.GetDetalleAlumnos(legajo);
        if(alumno == null)
        {
            return View("BuscarAlumno");
        }else{
            ViewBag.Alumno= alumno; }
        return View();
    }
    
    public IActionResult GetLegajo()
    {
        return View("BuscarAlumno");
    }
}
