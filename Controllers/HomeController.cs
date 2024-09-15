using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Preguntados.Models;

namespace Preguntados.Controllers;

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
    public IActionResult carga()
    {
        return View();
    }
     public IActionResult inicio()
    {
        return View();
    }
    public IActionResult ConfigurarJuego()
    {
        Juego.InicializarJuego();
        ViewBag.Categorias = Juego.ObtenerCategorias();
        ViewBag.Dificultades = Juego.ObtenerDificultades();
        return View("ConfigurarJuego");
    }
    public IActionResult Comenzar(string username, int dificultad, int categoria){
    Console.WriteLine(username);
    Console.WriteLine(dificultad);
    Console.WriteLine(categoria);

    Juego.CargarPartida(username, dificultad, categoria);
    
    if(Juego.preguntas.Count != null){
        return RedirectToAction("Jugar");
    }
    else{
        return RedirectToAction("ConfigurarJuego");
    }
}

    public IActionResult Jugar(){
        ViewBag.PregSiguiente = Juego.ObtenerProximaPregunta();
        if(ViewBag.PregSiguiente != null){
            ViewBag.Puntaje = Juego.puntajeActual;
            ViewBag.nombreUsuario = Juego.username; 
            ViewBag.RespuestaPregunta = Juego.ObtenerProximasRespuestas(ViewBag.PregSiguiente.IdPregunta);
            return View("Jugar");
        }
        else{
            return View("Fin");
        }
    }
    public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta){
        ViewBag.EsCorrecto = Juego.VerificarRespuesta(idPregunta, idRespuesta);
        return View("Respuesta");
    }
}
