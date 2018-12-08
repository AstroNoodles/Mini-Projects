/** PART 6 of the Dart CodeLab - Functional Programming **/

String scream(int length) => "A${'a' * length}h!";
// With string interpolation, {'a' * <number>} equals that string repeated!


functional(List<int> input){
  input.map(scream).forEach(print);
  print("");
  
  input.skip(1).take(3).map(scream).forEach(print); // take() is selective!
}

/** Part 7: Showing Off Method Cascades **/
class Street {
  var completeName;
  var city;
  var state;  
}

void main() {
  final values = [1, 2, 3, 5, 10, 50];
  functional(values);
  print(" ");
  
  Street s = Street();
  s
  ..city = "Manhattan"
  ..state = "New York"
  ..completeName = "5th Ave";
  
  print(s.completeName + " \t" + s.city + " \t" + s.state);
}
