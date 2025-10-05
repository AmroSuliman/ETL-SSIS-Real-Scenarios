using System;
using System.IO;

class Program
{
    static void Main(string[] args)
    {
        string SourceFile = @"D:\01_Personal\01-SSIS\UseCase_54\54 Remove comma from csv file in ssis\Source.CSV";
        string DestFile = @"D:\01_Personal\01-SSIS\UseCase_54\54 Remove comma from csv file in ssis\DestFile.CSV";

        // RemoveDoubleQuote(SourceFile, DestFile);

        RemoveDoubleQuoteAndComma(SourceFile, DestFile);
    }

    public static void RemoveDoubleQuoteAndComma(string SourceFile, string DestFile)
    {
        if (File.Exists(DestFile))
        {
            File.Delete(DestFile);
        }

        string[] lines = File.ReadAllLines(SourceFile);
        string source = "";

        foreach (string line in lines)
        {
            string dest = "";
            source = line;

            int i = 0;
            char a = 'A';
            char b = 'B';
            char f = 'F';
            foreach (char c in source)
            {
                f = c;

                if ((b == '"' || b == ',') && (i > 1))
                {
                    if (a == '"' || a == ',' || c == '"' || c == ',')
                    {
                        dest = dest + b;
                    }
                }
                else
                {
                    if (i == 1)
                    {
                        dest = dest + a;
                    }
                    else if (i > 1)
                    {
                        dest = dest + b;
                    }
                }

                if (i == 0)
                {
                    a = c;
                }
                else if (i == 1)
                {
                    b = c;
                }
                else
                {
                    a = b;
                    b = c;
                }

                i = i + 1;
            }
            dest = dest + f;

            File.AppendAllText(DestFile, dest + Environment.NewLine);
        }
    }

    public static void RemoveDoubleQuote(string SourceFile, string DestFile)
    {
        if (File.Exists(DestFile))
        {
            File.Delete(DestFile);
        }

        string[] lines = File.ReadAllLines(SourceFile);
        string source = "";

        foreach (string line in lines)
        {
            string dest = "";
            source = line;

            int i = 0;
            char a = 'A';
            char b = 'B';
            char f = 'F';
            foreach (char c in source)
            {
                f = c;

                if ((b == '"') && (i > 1))
                {
                    if (a == '"' || a == ',' || c == '"' || c == ',')
                    {
                        dest = dest + b;
                    }
                }
                else
                {
                    if (i == 1)
                    {
                        dest = dest + a;
                    }
                    else if (i > 1)
                    {
                        dest = dest + b;
                    }
                }

                if (i == 0)
                {
                    a = c;
                }
                else if (i == 1)
                {
                    b = c;
                }
                else
                {
                    a = b;
                    b = c;
                }

                i = i + 1;
            }
            dest = dest + f;

            File.AppendAllText(DestFile, dest + Environment.NewLine);
        }
    }
}
