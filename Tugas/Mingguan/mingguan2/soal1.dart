dynamic range(startNum, finishNum) {
  var List = [];
  if (startNum > finishNum) {
    var rangeLength = startNum - finishNum + 1;
    for (var i = 0; i < rangeLength; i++) {
      List.add(startNum - i);
    }
  } else if (startNum < finishNum) {
    var rangeLength = finishNum - startNum + 1;
    for (var i = 0; i < rangeLength; i++) {
      List.add(startNum + i);
    }
  }
  return List;
}

void main(List<String> args) {
  print(range(1, 10));
  print(range(20, 10));
}
