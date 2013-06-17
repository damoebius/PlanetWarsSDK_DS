part of model;

class Planet {
  String id;
  int population;
  int size;
  double x = 0.0;
  double y = 0.0;
  Player owner;

  Planet(this.x,this.y,this.size,this.owner){
    this.population = PlanetPopulation.getDefaultPopulation(size);
    this.id =  utils.UID.get().toString() ;
  }
}

class PlanetPopulation {

  static const DEFAULT_SMALL = 20;
  static const DEFAULT_NORMAL = 30;
  static const DEFAULT_BIG = 40;
  static const DEFAULT_HUGE = 50;

  static const MAX_SMALL = 50;
  static const MAX_NORMAL = 100;
  static const MAX_BIG = 200;
  static const MAX_HUGE = 300;

  static int getDefaultPopulation(int planetSize){
    var result = 1;
    switch ( planetSize )
    {
      case PlanetSize.SMALL:
        result = PlanetPopulation.DEFAULT_SMALL;
        break;
      case PlanetSize.NORMAL:
        result = PlanetPopulation.DEFAULT_NORMAL;
        break;
      case PlanetSize.BIG:
        result = PlanetPopulation.DEFAULT_BIG;
        break;
      case PlanetSize.HUGE:
        result = PlanetPopulation.DEFAULT_HUGE;
        break;
    }
    return result;
  }

  static int getMaxPopulation(int planetSize) {
    var result = 1;
    switch ( planetSize )
    {
      case PlanetSize.SMALL:
        result = PlanetPopulation.MAX_SMALL;
        break;
      case PlanetSize.NORMAL:
        result = PlanetPopulation.MAX_NORMAL;
        break;
      case PlanetSize.BIG:
        result = PlanetPopulation.MAX_BIG;
        break;
      case PlanetSize.HUGE:
        result = PlanetPopulation.MAX_HUGE;
        break;
    }
    return result;
  }

}

class PlanetSize {
  static const SMALL = 1;
  static const NORMAL = 2;
  static const BIG = 3;
  static const HUGE = 4;

 /* static const SMALL_WIDTH = 20;
  static const NORMAL_WIDTH = 30;
  static const BIG_WIDTH = 50;
  static const HUGE_WIDTH = 70;

  static const SMALL_EXTENSION = "_small";
  static const NORMAL_EXTENSION = "_normal";
  static const BIG_EXTENSION = "_big";
  static const HUGE_EXTENSION = "_huge";*/
}