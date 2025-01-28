int add(String numbers) {
  List<String> numList = [];
  ///Check if the string is not empty
  if (numbers.isEmpty) return 0;

  // Check for custom delimiter
  if (numbers.startsWith('//')) {
    var delimiter = numbers[2];
    print(delimiter);
    numbers = numbers.substring(4);
    print(numbers);
    numList = numbers.split(delimiter);
  }

  else{
    /// Check if the number contains \n.
    numbers = numbers.replaceAll('\n',",");
    numbers = numbers.replaceAll('//',",");
    numList = numbers.split(",");
  }
  /// List to store the negative numbers.
  List<int> negatives = [];
  int count = 0;
  for (int i = 0; i < numList.length; i++) {
    if (int.parse(numList[i]) < 0) { /// To check if the negative number exist in the String.
      negatives.add(int.parse(numList[i]));
    } else {
      count = count + int.parse(numList[i]);
    }
  }

  /// If negative number exists then it will throw this error.
  if (negatives.isNotEmpty) {
    throw FormatException(
        'negative numbers not allowed ${negatives.join(", ")}');
  }
  return count;
}
