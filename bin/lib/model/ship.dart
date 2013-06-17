part of model;

class Ship {

    int creationTurn;
    int crew;
    Player owner;
    Planet source;
    Planet target;
    int travelDuration;

    Ship(this.crew, this.source, this.target, this.creationTurn)
    {
      this.owner = source.owner;
      this.travelDuration = utils.GameUtil.getDistanceBetween( new Point( source.x, source.y ), new Point( target.x, target.y ) ).ceil();
      //this.travelDuration = Math.ceil( GameUtil.getDistanceBetween( new Point( source.x, source.y ), new Point( target.x, target.y ) ) / Game.SHIP_SPEED );
    }
}

