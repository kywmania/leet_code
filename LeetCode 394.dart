class Solution {
  String decodeString(String s) {
    RegExp regex = RegExp(r'(\d+)\[([a-z]+)\]');
    String result = s;

    while (regex.hasMatch(result)) {
      result = result.replaceAllMapped(regex, (match) {
        int count = int.parse(match.group(1)!);
        String str = match.group(2)!;
        return str * count;
      });
    }

    return result;
  }
}
