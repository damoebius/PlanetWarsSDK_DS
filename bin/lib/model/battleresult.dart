part of model;


class BattleResult {

  int errorCode;
  String message;
  num numTurn;
  Player p1;
  Player p2;
  int playerOneScore;
  int playerTwoScore;
  Player winner;

  BattleResult(this.playerOneScore,this.playerTwoScore,this.numTurn,this.winner,this.message,this.p1,this.p2,this.errorCode){
    
  }

}


class TurnMessage 
{

  String playerId;
  Galaxy galaxy;
  
  TurnMessage(this.playerId,this.galaxy) 
  {
  }
  
}


class TurnResult 
{

  List<Order> orders;
  String consoleMessage;
  String error;
  
  TurnResult( this.orders, [message=""]) 
  {
    this.consoleMessage = message;
    error = "";
  }
  
}
