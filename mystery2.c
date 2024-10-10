int mystery2(int* arr1, int* arr2, int size) {
    int count = 0; // Equivalent to x10
    for (int i = 0; i < size; i++) {
        if (arr2[i] != 0) {
            arr1[count] = arr2[i];
            count++;
        }
    }
    return count;
}