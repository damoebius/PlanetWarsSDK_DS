library tamina;

import "lib/model/model.dart";
 
MyIA _ia;

void main(){
    _ia = new MyIA();
    var turnMessage = new TurnMessage(0, new Galaxy(10, 10));
    var testData= new TestData( turnMessage );
    _ia.messageHandler(testData);
}

class TestData {
  var TurnMessage data;
  
  TestData(this.data){
    
  }
  
}

class MyIA extends IA {
  
  List<Order> getOrders(Galaxy context){
    var result = new List<Order>();
    var myPlanets = utils.GameUtil.getPlayerPlanets( id, context ); 
    var otherPlanets = utils.GameUtil.getEnnemyPlanets(id, context);
    if ( otherPlanets != null && otherPlanets.length > 0 )
    {
      for ( var i=0; i<myPlanets.length;i++ )
      {
        var myPlanet = myPlanets[ i ];
        var target = getNearestEnnemyPlanet(myPlanet, otherPlanets);
        if (myPlanet.population >=50) {
          result.add( new Order( myPlanet.id, target.id, 40 ) );
        } 
      }
    }
    return result;
  }
  
}