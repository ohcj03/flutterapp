//입력한 날짜의 요일 출력
void main() {

  var input = '2025-03-22';

  var date = DateTime.parse(input);

  var weekDay = date.weekday;

  switch (weekDay) {
    case 1:
      print('월');
      break;
    case 2:
      print('화');
      break;
    case 3:
      print('수');
      break;
    case 4:
      print('목');
      break;
    case 5:
      print('금');
      break;
    case 6:
      print('토');
      break;
    case 7:
      print('일');
      break;
    default:
      print('Invalid date');
  }
}