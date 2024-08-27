using System.Data.SqlClient;
using Dapper;
public class BD{
    private static string _connectionString = @"Server = localhost; DataBase = PreguntadORT; Trusted_Connection=True";
    public static ObtenerCategorias(){
        List<Categoria> ListaCategorias = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SELECT * FROM Categorias";
            ListaCategorias = db.Query<Categoria>(sql).ToList();
        }
        return ListaCategorias;
    }
    public static void ObtenerDificultades(){
        List<Dificultad> ListaDificultades = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SELECT * FROM Dificultades";
            ListaDificultades = db.Query<Dificultad>(sql).ToList();
        }
        return ListaDificultades;
    }
    public static ObtenerPreguntas(int dificultad, int categoria){
        List<Pregunta> ListaPreguntas = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SELECT * FROM Preguntas";
            ListaPreguntas = db.Query<Pregunta>(sql).ToList();
        }
        return ListaPreguntas;
    }
    public static ObtenerRespuestas(List preguntas){
        
    }
}