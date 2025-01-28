int add(String numbers) {
  if (numbers.isEmpty) return 0;

  List<String> numList = numbers.split(",");
  int count = 0;
  for (int i = 0; i < numList.length; i++) {
    count = count + int.parse(numList[i]);
  }

  return count;
}
