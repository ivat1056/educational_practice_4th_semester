function processArray(A) 
{
    let min_index = 0;
    let max_index = 0;

    for (let i = 1; i < A.length; i++) 
    {
        if (A[i] < A[min_index]) min_index = i;
        if (A[i] > A[max_index]) max_index = i;
    }

    [A[min_index], A[max_index]] = [A[max_index], A[min_index]];

    let left, right;
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

    let product = 1;
    let has_positive = false;
    for (let i = left + 1; i < right; i++) 
        {
        if (A[i] > 0) 
            {
            product *= A[i];
            has_positive = true;
        }
    }

    console.log("Изменённый массив:", A);
    if (has_positive) 
    {
        console.log("Произведение:", product);
    } 
    else 
    {
        console.log("Нет положительных элементов между min и max.");
    }
}

let arr = [3, -1, 7, 3, 2, -5];
processArray(arr);
