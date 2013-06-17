part of model;

/**
 * Model Player
 */
class Player {
  String id = "0";
  String name ="";
  int color = 0;
  String script ="";

  /**
   * Constructeur
   */
  Player(this.name,this.color,this.script){
    this.id =  utils.UID.get().toString() ;
  }

  /**
   * Retourne la liste des ordres à executer dans le tour
   */
  List<Order> getOrders( Galaxy context){
    var result = new List<Order>();
    return result;
  }

}


