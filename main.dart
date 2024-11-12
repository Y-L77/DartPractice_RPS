import 'dart:io';
import 'dart:math';


bool introduction = true;
void main() {
  while(introduction){
    print("Hello, welcome to rock paper scissors!");
    introduction = false;
    RPS();
  }
}

void RPS(){
  print("would you like to play a game? (yes or no)");
  String? response1 = stdin.readLineSync()?.toLowerCase();
  switch(response1){
    case("no"):
      print("ok! play when you feel like it..");
      introduction = true;
      main();
      break;
    case("yes"):
      print("OK!");
      PlayGame();
      break;
    default:
      print("Um sir, that is actually not a valid input. Please try again!");
      introduction = true;
      main();
      break;
  }
}

void PlayGame(){
  String? playerChoice = null;
  print("choose rock paper or scissors.");
  String? RPS_Player_Input = stdin.readLineSync()?.toLowerCase();
  switch(RPS_Player_Input){
    case("rock"):
      playerChoice = "rock";
      break;
    case("scissors"):
      playerChoice = "scissors";
      break;
    case("paper"):
      playerChoice = "paper";
      break;
    default:
      print("invalid input, try again");
      playerChoice = null;
      RPS();
  }

  String? computerChoice = null;
  
  Random random = Random();
  List<String> ValidRPSList = ["rock", "paper", "scissors"];
  computerChoice = ValidRPSList[random.nextInt(ValidRPSList.length)];

  if(playerChoice == computerChoice){
    print("its a tie");
  }
  else if(playerChoice == "paper" && computerChoice == "rock" || playerChoice == "rock" && computerChoice == "scissors" || playerChoice == "scissors" && computerChoice == "paper"){
    print("you won!");
  }
  else{
    print("you lost, try again!");
  }
  print("you chose $playerChoice and the computer chose $computerChoice");
}
