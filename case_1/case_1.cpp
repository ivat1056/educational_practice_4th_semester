#include <iostream>
using namespace std;

int main() 
{
    const int N = 6;
    int A[N] = {3, -1, 7, 2, 2, -5};

    int min_index = 0, max_index = 0;

    for (int i = 1; i < N; i++) 
    {
        if (A[i] < A[min_index]) min_index = i;
        if (A[i] > A[max_index]) max_index = i;
    }

    int temp = A[min_index];
    A[min_index] = A[max_index];
    A[max_index] = temp;

    int left, right;
    if (min_index < max_index) 
    {
        left = min_index;
        right = max_index;
    } 
    else 
    {
        left = max_index;
        right = min_index;
    }

    int product = 1;
    bool has_positive = false;
    for (int i = left + 1; i < right; i++) 
    {
        if (A[i] > 0) 
        {
            product *= A[i];
            has_positive = true;
        }
    }

    cout << "Изменённый массив: ";
    for (int i = 0; i < N; i++) 
    {
        cout << A[i] << " ";
    }

    if (has_positive)
        cout << "\nПроизведение: " << product << endl;
    else
        cout << "\nНет положительных элементов между min и max." << endl;

    return 0;
}
