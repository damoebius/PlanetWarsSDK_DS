part of model;

/**
 * Model Galaxy
 * @author David Mouton
 */
class Galaxy {
  int width;
  int height;
  List<Planet> content;
  Planet firstPlayerHome;
  Planet secondPlayerHome;
  List<Ship>fleet;

  Galaxy(this.width,this.height){
    this.content = new List<Planet>();
    this.fleet = new List<Ship>();
  }

  bool contains(String planetId) {
    var result = false;
    for(var p in content){
      if (p.id == planetId) {
        result = true;
        break;
      }
    }

    return result;
  }
}

