using System.Data.SqlClient;
using Dapper;
public class BD{
    private static string _connectionString = @"Server = localhost; DataBase = PreguntadORT; Trusted_Connection=True";
    public static List<Categoria> ObtenerCategorias(){
        List<Categoria> ListaCategorias = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SELECT * FROM Categorias";
            ListaCategorias = db.Query<Categoria>(sql).ToList();
        }
        return ListaCategorias;
    }
    public static List<Dificultad> ObtenerDificultades(){
        List<Dificultad> ListaDificultades = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SELECT * FROM Dificultades";
            ListaDificultades = db.Query<Dificultad>(sql).ToList();
        }
        return ListaDificultades;
    }
   public static List<Pregunta> ObtenerPreguntas(int Dificultad, int Categorias){
        string query = "SELECT * FROM Preguntas INNER JOIN Dificultades ON Preguntas.IdDificultad = Preguntas.IdDificultad INNER JOIN Categorias ON Preguntas.IdCategoria = Categorias.IdCategoria WHERE IdDificultad = @idDificultad AND IdCategoria = @idCategoria";
        List<Pregunta> Pregunta = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            Pregunta = db.Query<Pregunta>(query, new{@idDificultad = Dificultad, @IdCategoria = Categorias}).ToList();
        }
        return Pregunta;
    }

    public static List<Respuesta> ObtenerRespuestas(List<Pregunta> preguntas){
        string sql = "SELECT * FROM Respuestas WHERE IdPregunta IN @pIdPreguntas;";
         int[] IdPregunta = ExtraerIdPreguntas(preguntas); 
         List<Respuesta> listadoRespuestas; 

         using(SqlConnection BD = new SqlConnection(CONNECTION_STRING)){
              listadoRespuestas = BD.Query<Respuesta>(sql, new {pIdPreguntas = IdPregunta} ).ToList();
         }
        return listadoRespuestas;
    }

    public static int[] ExtraerIdPreguntas(List<Pregunta> preguntas){
        int cantPreguntas = preguntas.Count;
        int[] idPreguntas = new int[cantPreguntas];
        for (int i = 0; i < cantPreguntas; i++){
            idPreguntas[i] = preguntas[i].IdPregunta;
        } 
        return idPreguntas;
    }
}