public class Juego {

    private static string username { get; set; }
    private static int puntajeActual { get; set; }
    private static int cantidadPreguntasCorrectas { get; set; }
    private static List<Pregunta> preguntas { get; set;}
    private static List<Respuesta> respuestas { get; set; }

	public static void InicializarJuego(){
        username = " ";
        puntajeActual = 0;
        cantidadPreguntasCorrectas = 0;
    }

	public static List<string> ObtenerCategorias(){
        List<string> lista = new List<string>();
        foreach(Categoria c in BD.ObtenerCategorias)
        {
            lista.AddRange(c);
        }
	    return lista;
	}

    public static List<string> ObtenerDificultades(){
        List<string> lista = new List<string>();
        foreach(Dificultad d in BD.ObtenerDificultades)
        {
            lista.AddRange(d);
        }
	    return lista;
	}
}
