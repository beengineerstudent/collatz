// // ＝＝＝シンプルなcollatzのコード＝＝＝

// // 計算で割り算を用いているため、小数型（double）で通している
// // 引数：計算対象の数字
// // 返値：計算結果の数字
// double collatz(double input_num){
//   if(input_num % 2 == 0){
//     return input_num / 2;
//   }
//   else{
//     return input_num * 3 + 1;
//   }
// }

// void main(){
//   // 初期値を静的に与える
//   double num = 3.0;
//   // これ以上は行かないだろうという繰り返し回数で回す
//   for (int i = 1; i <= 1000; i++) {
//     // １回ずつの計算を実行
//     num = collatz(num);

//     // 計算結果を表示
//     print(num);

//     // もし、1になったら終了
//     if(num == 1.0){
//       // 繰り返し回数＝計算回数を表示
//       print(i);
//       break;
//     }
//   }
// }


// ＝＝＝1~100までの数に対してcollatzを実行するコード＝＝＝

double collatz(double input_num){
  if(input_num % 2 == 0){
    return input_num / 2;
  }
  else{
    return input_num * 3 + 1;
  }
}

// シンプルなcollatzにおいてmain関数だった部分を別関数に切り分けている
int clac(double num){
  // 最終的にresultの値に回数が代入されるのがif文内のコードで、
  // それだとresultの値がnullのままの可能性があるというエラーが残ってしまう。
  // なので、それを防ぐために初期値として0を渡しておく
  int result = 0;
  for (int i = 1; i <= 1000; i++) {
    num = collatz(num);
    // print(num);
    if(num == 1.0){
      print(i);
      result = i;
      break;
    }
  }
  // その数に対して、何回計算が行われたのかを返している
  return result;
}

void main(){
  // Map形式（Pythonの辞書型）で、どの数に対して何回計算が行われたのかがわかる形で記録する
  Map result = {};
  // 1~100まで繰り返す
  for (double i = 1.0; i <= 100; i++) {
    int result_num = clac(i);
    // resultというMapに、 数と回数を記録する
    result[i] = result_num;
  }
  // 結果をまとめて表示する
  print(result);
}