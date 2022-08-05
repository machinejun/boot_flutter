class BubbleSort {
  static List<int> samplelist = [9, 7, 6, 2, 3, 5, 8, 1];
  static List<int> samplelist2 = [5, 1, 4, 2, 7, 5, 8, 9];
  static List<int> samplelist3 = [2, 7, 6, 6, 9, 4, 8, 3];

  List<int> sort(List<int> array) {
    int number = 0;
    for (int i = array.length - 1; i > 0; i--) {
      for (int j = 0; j < i; j++) {
        if (array[j] > array[j + 1]) {
          number = array[j];
          array[j] = array[j + 1];
          array[j + 1] = number;
        }
      }
    }
    return array;
  }

  printArray() {
    print("heelo");
  }
}
