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
    public IActionResult ConfigurarJuego()
    {
        Juego.InicializarJuego();
        ViewBag.Categorias = Juego.ObtenerCategorias();
        ViewBag.Dificultades = Juego.ObtenerDificultades();
        return View("ConfigurarJuego");
    }
    public IActionResult Comenzar(string username, int dificultad, int categoria){
        Juego.CargarPartida(username, dificultad, categoria);
        if(Juego.preguntas.Count() > 0){
            return RedirectToAction("Juego");
        }
        else{
            return RedirectToAction("ConfigurarJuego" );
        }
    }

    public IActionResult Jugar(){
        ViewBag.PregSiguiente = Juego.ObtenerProximaPregunta();
        if(ViewBag.PregSiguiente != null){
            ViewBag.RespSiguiente = Juego.ObtenerProximasRespuestas(ViewBag.PregSiguiente.IdPregunta);
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
