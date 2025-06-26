def process_array(A):
    min_index = 0
    max_index = 0
    for i in range(1, len(A)):
        if A[i] < A[min_index]:
            min_index = i
        if A[i] > A[max_index]:
            max_index = i

    A[min_index], A[max_index] = A[max_index], A[min_index]

    if min_index < max_index:
        left = min_index
        right = max_index
    else:
        left = max_index
        right = min_index

    product = 1
    has_positive = False
    for i in range(left + 1, right):
        if A[i] > 0:
            product *= A[i]
            has_positive = True

    print("Изменённый массив:", A)
    if has_positive:
        print("Произведение:", product)
    else:
        print("Нет положительных элементов между min и max.")

arr = [3, -1, 7, 2, 2, -5]
process_array(arr)
