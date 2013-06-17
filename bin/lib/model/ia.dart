part of model;

class IA {
  String id ="";
  int color = 0;
  String name = "noName";
  String debugMessage = "";
  String script = "";
  
  List<Order> getOrders(Galaxy context){
    var result = new List<Order>();
    
    return result;
  }

  Planet getNearestEnnemyPlanet( Planet source, List<Planet>candidats )
  {
    var result = candidats[ 0 ];
    var currentDist = utils.GameUtil.getDistanceBetween( new Point( source.x, source.y ), new Point( result.x, result.y ) );
    for ( var i=0; i<candidats.length; i++ )
    {
      var element = candidats[ i ];
      if ( currentDist > utils.GameUtil.getDistanceBetween( new Point( source.x, source.y ), new Point( element.x, element.y ) ) )
      {
        currentDist = utils.GameUtil.getDistanceBetween( new Point( source.x, source.y ), new Point( element.x, element.y ) );
        result = element;
      }
      
    }
    return result;
  }

  bool messageHandler( event ) {
    var result = false;
    if (event.data != null) {
      var turnMessage = event.data; 
      id = turnMessage.playerId;
      result = postMessage( new TurnResult(getOrders( turnMessage.galaxy ), debugMessage) );
    } else {
      result = postMessage(null);
    }
    return result;
    
  }

  bool postMessage( TurnResult message  )  {
    var result = false;
    if(message != null){
      result = true;
    }
    return result;
  }
  
}

