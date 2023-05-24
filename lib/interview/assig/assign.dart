String ArrayChallenge(List<String> strArr) {
  String sequence = strArr[0];
  List<String> dictionary = strArr[1].split(',');

  for (int i = 1; i < sequence.length; i++) {
    String word1 = sequence.substring(0, i);
    String word2 = sequence.substring(i);

    if (dictionary.contains(word1) && dictionary.contains(word2)) {
      String result = word1 + ',' + word2;
      String finalOutput = result.replaceAllMapped(RegExp(r'.{3}'), (match) => '_');
      return finalOutput;
    }
  }

  return 'not possible';
}

void main() {
  List<String> strArr = ["baseball", "a,all,b,ball,bas,base,cat,code,d,e,quit,z"];
  String output = ArrayChallenge(strArr);
  print(output);
}
