function one_player(){
    var x, input, text, submit, brek;
    submit = document.createElement("input");
    submit.type = "submit";
    submit.value = "enter";
    x = document.getElementById("inputs").innerHTML = "Enter Player's Name<br>";
   text = document.createTextNode("difficulty");
   input = document.createElement("input");
   input.type = "text";
   input.name = "players_name[]";
   input.required = true;
   input.placeholder = "Enter Name Here";
   document.getElementById("inputs").appendChild(input).value;
   document.getElementById("inputs").appendChild(text).value;
        for(var count = 1; count <= 3; count ++) {
            text = document.createTextNode(""+ count +"")
            input = document.createElement("input");
            input.type = "radio";
            input.name = "ai_diff";
            input.value = count;
            input.id = "radio_button";
            input.checked = "checked";
            document.getElementById("inputs").appendChild(input).value;
            document.getElementById("inputs").appendChild(text).value;
        };
        brek = document.createElement('br');
        document.getElementById("inputs").appendChild(brek).value
        text = [];
        text.push(document.createTextNode("First"));
        text.push(document.createTextNode("Second"));
        for(count = 0; count <= 1;count ++){
            input = document.createElement('input');
            input.type = "radio";
            input.name = "first";
            if(count == 0){
                input.value = 'first';}
            else{
                input.value = 'second';
            }
            input.checked = 'checked';
            document.getElementById("inputs").appendChild(text[count]).value;
            document.getElementById("inputs").appendChild(input).value;
        }
    document.getElementById("inputs").appendChild(submit).value;
}

function two_player() {
    var x, input, input2, submit;
    input = document.createElement("input");
    input.type = "text";
    input.name = "players_name[]";
    input.required = true;
    input.placeholder = "Player 1";
    input2 = document.createElement("input");
    input2.type = "text";
    input2.name = "players_name[]";
    input2.required = true;
    input2.placeholder = "Player 2";
    x = document.getElementById("inputs").innerHTML = "Enter Each players name<br>";
    submit = document.createElement("input");
    submit.type = "submit";
    submit.value = "enter";
    document.getElementById("inputs").appendChild(input).value;
    document.getElementById("inputs").appendChild(input2).value;
    document.getElementById("inputs").appendChild(submit).value;
}