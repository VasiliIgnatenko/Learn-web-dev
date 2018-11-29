var todos = ["Buy New Turtle"];

var input = prompt("What would you to do?");

while(input !== "quit") {

	if(input === "list") {
		todos.forEach(function(todo, i) {
		console.log(todo);
		});
		
	} else if(input === "new") {
		var newTodo = prompt("Enter new todo");
		todos.push(newTodo);
	} 

	input = prompt("What would you to do?");
}
console.log("OK, YOU QUIT THE APP");
