int add(String numbers) {
  if (numbers.isEmpty) return 0;

  List<String> numList = numbers.split(",");
  List<int> negatives = [];
  int count = 0;
  for (int i = 0; i < numList.length; i++) {
    if(int.parse(numList[i])<0){
      negatives.add(int.parse(numList[i]));
    }
    else{
      count = count + int.parse(numList[i]);
    }

  }
  if (negatives.isNotEmpty) {
    throw FormatException('negative numbers not allowed ${negatives.join(", ")}');
  }
  return count;
}
