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
    }

    public IActionResult Jugar(){
        ViewBag.PregSiguiente = Juego.ObtenerProximaPregunta();
        if(ViewBag.PregSiguiente != null){
            VeiwBag.RespSiguiente = Juego.ObtenerProximasRespuestas(ViewBag.PregSiguiente.IdPregunta);
            return View("Jugar");
        }
        else{
            return View("Fin");
        }
    }
}
