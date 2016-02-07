@building-fill: #b59b85; //Lch(84, 5, 70)
@building-line: darken(@building-fill, 10%);
@building-low-zoom: darken(@building-fill, 4%);

#buildings {
  [zoom >= 13] {
    polygon-fill: @building-low-zoom;
    polygon-clip: false;
    [zoom >= 15] {
      line-color: @building-line;
      polygon-fill: @building-fill;
      line-width: .5;
      line-clip: false;
    }
  }
}
