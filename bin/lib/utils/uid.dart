part of utils;

/**
 * ...
 * @author d.mouton
 */

class UID 
{

  static int _lastUID;
  
  static int get() {
    if (_lastUID == null) {
      _lastUID = 0;
    }
    _lastUID++;
    return _lastUID;
  }
  
}

