// By considering the terms in the Fibonacci sequence whose values do not exceed N, find the sum of the even-valued terms.

processData("2\n10\n100");

function sumEven(n) {
  var numbers = [1, 2];

  while (true) {
    var last = numbers[numbers.length-1],
        last2 = numbers[numbers.length-2];

    var current = last + last2;

    if (current > n) break;
    numbers.push(current);
  }

  // add up all even numbers
  numbers.unshift(0);
  var result = numbers.reduce(function(previous, current) {
    if (current % 2 === 0) return current + previous;
    else return previous;
  });

  console.log(result);

}

function processData(input) {
  // get array of all values (separated by \n)
  var inputs = input.split("\n");

  if (inputs.length > 0) {

    // remove first value (we don't need it)
    inputs.shift();
    inputs.forEach(function(val) {
      sumEven(val);
    });

  }
}
