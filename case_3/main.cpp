#include <iostream>
#include <fstream>

using namespace std;

int main() {
    ofstream file("index.html");
    file << "<!DOCTYPE html>\n<head>\n";
    file << "<meta charset=\"UTF-8\">\n<title>Числа от 1 до 100</title>\n</head>\n<body>\n";


   for (int i = 1; i <= 100; i++) 
   {
        if (i % 3 == 0 && i % 2 == 0) 
        {
            file << "<b><i>" << i << "</i></b>";
        } 
        else if (i % 3 == 0) 
        {
            file << "<b>" << i << "</b>";
        } 
        else if (i % 2 == 0)
        {
            file << "<i>" << i << "</i>";
        } 
        else 
        {
            file << i;
        }
        file << " "; 
    }
    file << "</body>\n</html>";

    file.close();
    cout << "HTML-файл создан: index.html" << endl;

    return 0;
}
