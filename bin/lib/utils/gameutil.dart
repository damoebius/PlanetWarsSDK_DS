part of utils;

class GameUtil 
{

  static double getDistanceBetween( model.Point p1, model.Point p2 )
  {
    return math.sqrt( math.pow( ( p2.x - p1.x ), 2 ) + math.pow( ( p2.y - p1.y ), 2 ) );
  }
  
  static List<model.Planet> getPlayerPlanets( String planetOwnerId, model.Galaxy context )
  {
    var result = new List<model.Planet>();
    for(var p in context.content){
      if (p.owner.id == planetOwnerId) {
        result.add( p );
      }
    }
    
    
    return result;
  }
  
  static List<model.Planet> getEnnemyPlanets( String planetOwnerId, model.Galaxy context )
  {
    var result = new List<model.Planet>();
    for(var p in context.content){
      if (p.owner.id != planetOwnerId) {
        result.add( p );
      }
    }
    
    
    return result;
  }
  
}

