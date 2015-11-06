/*
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below N.

First line contains T that denotes the number of test cases. This is followed by T lines, each containing an integer, N.


*/

// problem with javascript precision with large numbers, gets wrong output

processData("3\n1000\n1000000\n1000000000");

function processData(input) {
  // get array of all values (separated by \n)
  var inputs = input.split("\n");

  // remove first value (we don't need it)
  if (inputs.length > 0) {

    inputs.shift();

    inputs.forEach(function(val) {
      console.log(apSum(val, 3) + apSum(val, 5) - apSum(val, 15));
    });

  }
}

// AP formula
function apSum(input, divisor) {

  // find upper value
  var upper = input-1;
  while (upper % divisor !== 0) upper--;

  // find lower
  var lower = divisor;

  // find count
  var count = Math.floor(upper/divisor);

  // AP formula
  return count * (upper + lower) / 2;

}
