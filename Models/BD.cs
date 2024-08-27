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
    public static List<Pregunta> ObtenerPreguntas(int dificultad, int categoria)
    {
        if (categoria == -1 && dificultad == -1) //Cualquier pregunta
        {
            
        }
        else if (categoria != -1 && dificultad == -1) //Todas las preguntas de una dificultad sin importar la categoría
        {

        }
        else if (categoria == -1 && dificultad != -1) //Todas las preguntas de una categoría sin importar dificultad
        {

        }
        else if (categoria != -1 && dificultad != -1) //Todas las preguntas de una cierta dificultad y una cierta categoria
        {

        }
    }
    return ;//Devuelve una lista con todas las preguntas que se le van a mostrar al usuario
    public static ObtenerRespuestas(List preguntas)
    {
        List<Respuesta> ListaRespuestas = null;
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            
        }
    }
}