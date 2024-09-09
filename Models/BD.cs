using System.Data.SqlClient;
using Dapper;
public class BD {
    private static string _connectionString = @"Server=localhost;DataBase=PreguntadORT;Trusted_Connection=True";

    public static List<Categoria> ObtenerCategorias() {
        List<Categoria> ListaCategorias = new List<Categoria>();
        using (SqlConnection db = new SqlConnection(_connectionString)) {
            string sql = "SELECT * FROM Categorias";
            try {
                ListaCategorias = db.Query<Categoria>(sql).ToList();
            } catch (Exception ex) {
                Console.WriteLine("Error al obtener categorías: " + ex.Message);
            }
        }
        return ListaCategorias;
    }

    public static List<Dificultad> ObtenerDificultades() {
        List<Dificultad> ListaDificultades = new List<Dificultad>(); 
        using (SqlConnection db = new SqlConnection(_connectionString)) {
            string sql = "SELECT * FROM Dificultades";
            try {
                ListaDificultades = db.Query<Dificultad>(sql).ToList();
            } catch (Exception ex) {
                Console.WriteLine("Error al obtener dificultades: " + ex.Message);
            }
        }
        return ListaDificultades;
    }

    public static List<Pregunta> ObtenerPreguntas(int Dificultad, int Categorias) {
        string query = "SELECT * FROM Preguntas WHERE IdDificultad = @idDificultad AND IdCategoria = @idCategoria";
        List<Pregunta> Pregunta = new List<Pregunta>();
        using (SqlConnection db = new SqlConnection(_connectionString)) {
            try {
                Pregunta = db.Query<Pregunta>(query, new { idDificultad = Dificultad, idCategoria = Categorias }).ToList();
            } catch (Exception ex) {
                Console.WriteLine("Error al obtener preguntas: " + ex.Message);
            }
        }
        return Pregunta;
    }

    public static List<Respuesta> ObtenerRespuestas(List<Pregunta> preguntas) {
        string sql = "SELECT * FROM Respuestas WHERE IdPregunta IN @pIdPreguntas";
        List<Respuesta> listadoRespuestas = new List<Respuesta>(); 
        int[] IdPregunta = ExtraerIdPreguntas(preguntas); 

        using (SqlConnection db = new SqlConnection(_connectionString)) {
            try {
                listadoRespuestas = db.Query<Respuesta>(sql, new { pIdPreguntas = IdPregunta }).ToList();
            } catch (Exception ex) {
                Console.WriteLine("Error al obtener respuestas: " + ex.Message);
            }
        }
        return listadoRespuestas;
    }

    public static int[] ExtraerIdPreguntas(List<Pregunta> preguntas) {
        int cantPreguntas = preguntas.Count;
        int[] idPreguntas = new int[cantPreguntas];
        for (int i = 0; i < cantPreguntas; i++) {
            idPreguntas[i] = preguntas[i].IdPregunta;
        }
        return idPreguntas;
    }
}