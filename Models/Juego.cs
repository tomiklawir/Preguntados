public class Juego {

    private static string username { get; set; }
    private static int puntajeActual { get; set; }
    private static int cantidadPreguntasCorrectas { get; set; }
    public static List<Pregunta> preguntas { get; set;}
    private static List<Respuesta> respuestas { get; set; }

	public static void InicializarJuego(){
        username = null;
        puntajeActual = 0;
        cantidadPreguntasCorrectas = 0;
    }

	public static List<Categoria> ObtenerCategorias(){
        List<Categoria> lista = new List<Categoria>();
        foreach(Categoria c in BD.ObtenerCategorias)
        {
            lista.AddRange(c);
        }
	    return lista;
	}

    public static List<Dificultad> ObtenerDificultades(){
        List<Dificultad> lista = new List<Dificultad>();
        foreach(Dificultad d in BD.ObtenerDificultades)
        {
            lista.AddRange(d);
        }
	    return lista;
	}

    public static void CargarPartida(string username, int dificultad, int categoria){
        preguntas = BD.ObtenerPreguntas();
        respuestas = BD.ObtenerRespuestas();
    }

    public static Pregunta ObtenerProximaPregunta(){
        Random rand = new Random();
        int azar = rand.Next(preguntas.Count());
        Pregunta pregRandom = preguntas[azar];
        return pregRandom;
    }

    public static List<Respuesta> ObtenerProximasRespuestas(int idPregunta){
        List<Respuesta> rtas = new List<Respuesta> ();
        rtas.Add(Respuesta[idPregunta]);
        return rtas;
    }

    public static bool VerificarRespuesta(int IdPregunta, int IdRespuesta){
        if(Pregunta[idPregunta].IdPregunta == Respuesta[idPregunta].IdPregunta){
            PuntajeActual++;
            Pregunta.RemoveAt(idPregunta);
            Pregunta.RemoveAt(idRespuesta);
            return true;
        }
        else{
            return false;
        }
    }
}