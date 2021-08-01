#aerialways {
  [aerialway = 'cable_car'],
  [aerialway = 'gondola'],
  [aerialway = 'goods'],
  [aerialway = 'chair_lift'],
  [aerialway = 'drag_lift'],
  [aerialway = 't-bar'],
  [aerialway = 'j-bar'],
  [aerialway = 'platter'],
  [aerialway = 'rope_tow'] {
    [zoom >= 12] {
      line/line-width: 1.2;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #808080;

      dash/line-width: 4;
      dash/line-join: round;
      dash/line-color: grey;
      dash/line-dasharray: 1,20;
      dash/line-clip: false;
    }
    [zoom >= 13] {dash/line-dasharray: 1,30;}
  }
}