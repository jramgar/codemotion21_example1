using System.Data;
using System.Data.SqlClient;


namespace SampleWebReact.Services
{
    public class CategoryQuery
    {
        string connectionString;

        public DataSet GetDataSetByCategory(string id)
        {
            using var connection = new SqlConnection(connectionString);
            var query1 = "SELECT ITEM,PRICE FROM PRODUCT WHERE ITEM_CATEGORY='" + id + "' ORDER BY PRICE";
            var adapter = new SqlDataAdapter(query1, connection);
            var result = new DataSet();
            adapter.Fill(result);
            return result;
        }
    }
}
