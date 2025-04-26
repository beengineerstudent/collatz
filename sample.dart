// ＝＝＝シンプルなcollatzのコード＝＝＝

// 計算で割り算を用いているため、小数型（double）で通している
// 引数：計算対象の数字
// 返値：計算結果の数字
double collatz(double input_num){
  if(input_num % 2 == 0){
    return input_num / 2;
  }
  else{
    return input_num * 3 + 1;
  }
}

void main(){
  // 初期値を静的に与える
  double num = 3.0;
  // これ以上は行かないだろうという繰り返し回数で回す
  for (int i = 1; i <= 1000; i++) {
    // １回ずつの計算を実行
    num = collatz(num);

    // 計算結果を表示
    print(num);

    // もし、1になったら終了
    if(num == 1.0){
      // 繰り返し回数＝計算回数を表示
      print(i);
      break;
    }
  }
}
