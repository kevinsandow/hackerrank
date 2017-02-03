function processData(inputString) {
  // Your first line of output goes here
  console.log("Hello, World.");

  // Write the second line of output
  console.log(inputString);
}

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
  _input += input;
});

process.stdin.on("end", function () {
  processData(_input);
});
