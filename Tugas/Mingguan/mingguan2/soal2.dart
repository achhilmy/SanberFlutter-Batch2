rangeWithStep(startNum, finishNum, step) {
  var rangeArr = [];

  if (startNum > finishNum) {
    var currentNum = startNum;
    for (var i = 0; currentNum >= finishNum; i++) {
      rangeArr.add(currentNum);
      currentNum -= step;
    }
  } else if (startNum < finishNum) {
    // start = 1; finish =10; step=2
    var currentNum = startNum;
    for (var i = 0; currentNum <= finishNum; i++) {
      // i =1
      rangeArr.add(currentNum); //3
      currentNum += step; // 9 + 2 = 11
    }
  }
  ;
  return rangeArr;
}

void main(List<String> args) {
  ///increment
  print(rangeWithStep(1, 10, 2));
  //decrement
  print(rangeWithStep(20, 11, 3));
}
