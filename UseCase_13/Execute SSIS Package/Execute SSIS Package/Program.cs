using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SqlServer.Dts.Runtime;

namespace Execute_SSIS_package
{
    class Program
    {
        static void Main(string[] args)
        {
            //D:\01_Personal\01-SSIS\UseCase_13\13 Execute SSIS package from C#

            Application app = new Application();
            Package package = null;
            package = app.LoadPackage(@"D:\01_Personal\01-SSIS\UseCase_13\13 Execute SSIS package from C#\13 Execute SSIS package from C#\Package.dtsx", null);
            package.Variables["FilePath"].Value = @"D:\01_Personal\01-SSIS\UseCase_13\13 Execute SSIS package from C#";
            package.Execute();

        }
    }
}
