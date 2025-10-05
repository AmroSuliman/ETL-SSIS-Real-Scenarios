// See https://aka.ms/new-console-template for more information
namespace CopyTablesApp
{
    internal class SqlConnection
    {
        private string configConnectionString;

        public SqlConnection(string configConnectionString)
        {
            this.configConnectionString = configConnectionString;
        }
    }
}