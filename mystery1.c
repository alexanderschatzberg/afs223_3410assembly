void mystery1(int* arr1, int* arr2, int* arr3, int size, int num) {
    for (int i = 0; i < size; i++) {
        arr1[i] = arr3[i] + arr2[i] * num;
    }
}