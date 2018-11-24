var secretNumber = 5;

var stringGuess = prompt("Guess a number");
var guess = Number(stringGuess);

if(Number(guess) === secretNumber) {
    alert("win");
} else if(Number(guess) < secretNumber) {
    alert("Secret number > number");
} else {
    alert("Secret number < number");
}


