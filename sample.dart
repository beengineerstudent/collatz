// // // ＝＝＝シンプルなcollatzのコード＝＝＝

// // // 計算で割り算を用いているため、小数型（double）で通している
// // // 引数：計算対象の数字
// // // 返値：計算結果の数字
// // double collatz(double input_num){
// //   if(input_num % 2 == 0){
// //     return input_num / 2;
// //   }
// //   else{
// //     return input_num * 3 + 1;
// //   }
// // }

// // void main(){
// //   // 初期値を静的に与える
// //   double num = 3.0;
// //   // これ以上は行かないだろうという繰り返し回数で回す
// //   for (int i = 1; i <= 1000; i++) {
// //     // １回ずつの計算を実行
// //     num = collatz(num);

// //     // 計算結果を表示
// //     print(num);

// //     // もし、1になったら終了
// //     if(num == 1.0){
// //       // 繰り返し回数＝計算回数を表示
// //       print(i);
// //       break;
// //     }
// //   }
// // }


// // ＝＝＝1~100までの数に対してcollatzを実行するコード＝＝＝

// double collatz(double input_num){
//   if(input_num % 2 == 0){
//     return input_num / 2;
//   }
//   else{
//     return input_num * 3 + 1;
//   }
// }

// // シンプルなcollatzにおいてmain関数だった部分を別関数に切り分けている
// int clac(double num){
//   // 最終的にresultの値に回数が代入されるのがif文内のコードで、
//   // それだとresultの値がnullのままの可能性があるというエラーが残ってしまう。
//   // なので、それを防ぐために初期値として0を渡しておく
//   int result = 0;
//   for (int i = 1; i <= 1000; i++) {
//     num = collatz(num);
//     // print(num);
//     if(num == 1.0){
//       print(i);
//       result = i;
//       break;
//     }
//   }
//   // その数に対して、何回計算が行われたのかを返している
//   return result;
// }

// void main(){
//   // Map形式（Pythonの辞書型）で、どの数に対して何回計算が行われたのかがわかる形で記録する
//   Map result = {};
//   // 1~100まで繰り返す
//   for (double i = 1.0; i <= 100; i++) {
//     int result_num = clac(i);
//     // resultというMapに、 数と回数を記録する
//     result[i] = result_num;
//   }
//   // 結果をまとめて表示する
//   print(result);


// void main(){
//   int num = 4;

//   if(num % 2 != 0){
//     print("odd");
//   }
//   else{
//     print("even");
//   }

// }

// void main(){
//   DateTime datetime = DateTime.now();
//   // switch(datetime.weekday){
//   //   case 6 || 7:
//   //     print("holiday");
//   //   default:
//   //     print("weekday");
//   // }

//   switch( trans_weekday(datetime.weekday) ){
//     case 'Sun':
//       print('Today is Sunday.');
//       break;
//     case 'Mon':
//       print('Today is Monday.');
//       break;
//     case 'Tue':
//       print('Today is Tuesday.');
//       break;
//     case 'Wed':
//       print('Today is Wednesday.');
//       break;
//     case 'Thu':
//       print('Today is Thursday.');
//       break;
//     case 'Fri':
//       print('Today is Friday.');
//       break;
//     case 'Sat':
//       print('Today is Saturday.');
//       break;
//     default:
//       print('Something error.');
//   }
// }

// String trans_weekday(int num) {
//   switch (num) {
//     case 1:
//       return 'Mon';
//     case 2:
//       return 'Tue';
//     case 3:
//       return 'Wed';
//     case 4:
//       return 'Thu';
//     case 5:
//       return 'Fri';
//     case 6:
//       return 'Sat';
//     case 7:
//       return 'Sun';
//     default:
//       return "error";
//   }
// }

// void main(){
//   for(int num = 1; num < 51; num++){
    
//     int result = num % 15;
//     switch(result){
//       case 3 || 6 || 9 || 12:
//         print("Fizz");
//         break;
//       case 5 || 10:
//         print("Buzz");
//         break;
//       case 0:
//         print("FizzBuzz");
//         break;
//       default :
//         print(num);
//     }
//   }
// }

void main(){
  List<int> num_list =[6, 3, 9, 4];
  List<int> result = [];

  num_list.forEach((num){

    // resultが一つもない場合、i番目という取得でエラーが出るので、回避
    // resultに直接代入
    if(result.length == 0){
      result.add(num);
    }

    // resultがある場合、現状のリストの１個ずつの数字と比較する
    else{

      // Flagを用意しておく
      // あとで使うので、役割は後述
      bool flag = false;

      // 結果を記録しているListのデータを１個ずつ取得するために
      // forで繰り返す
      for(int i = 0; i < result.length; i++){

        // resultのi番目と、今追加しようとしている値（num）を比較
        // numが小さければ、そのresultの場所に割り込ませる形で追加したいので、ここを分岐させて追加する
        // そうでない場合は、スルーして、次のi+1番目のresultとnumを比較することになる
        if(num < result[i] && flag == false){
          result.insert(i, num);
          // 追加したら、それ以降確認する必要はないので、flagを書き換えて、前のifで分岐して、無駄な処理を省く
          flag = true;
          break;
        }
      }
      // forの繰り返しが終わってもなおflagがfalseの場合、numが一番大きい数字だったということになるので
      // resultの末尾に追加する
      if(flag == false){
        result.add(num);
      }
    }
    
    // 途中経過を表示
    print(result);
  });
}