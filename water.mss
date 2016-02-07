@water-text: #708ee5;
@glacier: #ebf6f6;
@glacier-line: #cee6fd;

#water-areas {
  [natural = 'glacier']::natural {
    [zoom >= 6] {
      line-width: 0.75;
      line-color: @glacier-line;
      polygon-fill: @glacier;
      [zoom >= 8] {
        line-width: 1.0;
      }
      [zoom >= 10] {
        line-dasharray: 4,2;
        line-width: 1.5;
      }
    }
  }

  [waterway = 'dock'],
  [waterway = 'canal'] {
    [zoom >= 9]::waterway {
      polygon-fill: @water-color;
      [way_pixels >= 4] {
        polygon-gamma: 0.75;
      }
      [way_pixels >= 64] {
        polygon-gamma: 0.6;
      }
    }
  }

  [landuse = 'basin'][zoom >= 7]::landuse {
    polygon-fill: @water-color;
    [way_pixels >= 4] {
      polygon-gamma: 0.75;
    }
    [way_pixels >= 64] {
      polygon-gamma: 0.6;
    }
  }

  [natural = 'water']::natural,
  [landuse = 'reservoir']::landuse,
  [waterway = 'riverbank']::waterway {
    [zoom >= 6] {
      polygon-fill: @water-color;
      [way_pixels >= 4] {
        polygon-gamma: 0.75;
      }
      [way_pixels >= 64] {
        polygon-gamma: 0.6;
      }
    }
  }
}

#water-lines-casing {
  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [tunnel = 'no'] {
      [zoom >= 13] {
        line-width: 2;
        line-color: white;
        [waterway = 'stream'][zoom >= 15] {
          line-width: 3;
        }
        /* [intermittent = 'yes'] {
          line-dasharray: 4,3;
          line-cap: butt;
          line-join: round;
          line-clip: false;
        } */
      }
    }
  }
}

#water-lines-low-zoom {
  [waterway = 'river'][zoom >= 8][zoom < 12] {
    /* [intermittent = 'yes'] {
      line-dasharray: 8,4;
      line-cap: butt;
      line-join: round;
      line-clip: false;
    } */
    line-color: @water-color;
    line-width: 0.7;
    [zoom >= 9] { line-width: 1.2; }
    [zoom >= 10] { line-width: 1.6; }
  }
}

.water-lines {
  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 12],
  [waterway = 'wadi'][zoom >= 13] {
    [bridge = 'yes'] {
      [zoom >= 14] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: 3;
        [zoom >= 15] { bridgecasing/line-width: 4; }
        [zoom >= 17] { bridgecasing/line-width: 8; }
        [zoom >= 18] { bridgecasing/line-width: 10; }
      }
    }
    line-color: @water-color;
    line-width: 1.5;
    [zoom >= 13] { line-width: 1.5; }
    [zoom >= 14] { line-width: 2.5; }
    [zoom >= 15] { line-width: 3.5; }
    [zoom >= 17] { line-width: 5; }
    [zoom >= 18] { line-width: 7; }
    line-cap: round;
    line-join: round;
    [tunnel = 'yes'],
    [tunnel = 'culvert']{
      line-dasharray: 4,2;
      line-cap: butt;
      line-join: miter;
      a/line-color: #f3f7f7;
      a/line-width: 1;
      [zoom >= 14] { a/line-width: 1; }
      [zoom >= 15] { a/line-width: 1.5; }
      [zoom >= 17] { a/line-width: 3.5; }
      [zoom >= 18] { a/line-width: 5; }
    }
  }

  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [zoom >= 13] {
      [bridge = 'yes'] {
        [zoom >= 14] {
          bridgecasing/line-color: black;
          bridgecasing/line-join: round;
          bridgecasing/line-width: 2;
          [waterway = 'stream'][zoom >= 15] { bridgecasing/line-width: 2; }
          bridgeglow/line-color: white;
          bridgeglow/line-join: round;
          bridgeglow/line-width: 1.5;
          [waterway = 'stream'][zoom >= 15] { bridgeglow/line-width: 1.5; }
        }
      }
      line-width: 1;
      line-color: @water-color;
      [waterway = 'stream'][zoom >= 15] {
        line-width: 1.5;
      }
      [tunnel = 'yes'],
      [tunnel = 'culvert'][zoom >= 15] {
        line-width: 2;
        [waterway = 'stream'] { line-width: 3; }
        line-dasharray: 4,2;
        a/line-width: 1;
        [waterway = 'stream'] { a/line-width: 1.5; }
        a/line-color: #f3f7f7;
      }
    }
  }

}

#water-lines-text {
  /* [lock != 'yes'] { */
    [waterway = 'river'][zoom >= 13] {
      text-name: "[name]";
      text-face-name: @oblique-fonts;
      text-placement: line;
      text-fill: @water-text;
      text-spacing: 500;
      text-size: 8;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.8);
      text-repeat-distance: 250;
      [zoom >= 15] { text-size: 10; }
      [zoom >= 17] { text-size: 12; }
      [tunnel = 'yes'],
      [tunnel = 'culvert'] { text-repeat-distance: 500; }
    }

    [waterway = 'canal'][zoom >= 14] {
      text-name: "[name]";
      text-face-name: @oblique-fonts;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.8);
      text-size: 8;
      text-spacing: 600;
      text-repeat-distance: 250;
      [zoom >= 16] { text-size: 10; }
      [zoom >= 18] { text-size: 12; }
      text-placement: line;
      text-fill: @water-text;
    }

    [waterway = 'stream'][zoom >= 14] {
      text-name: "[name]";
      text-size: 8;
      text-face-name: @oblique-fonts;
      text-fill: @water-text;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.8);
      text-spacing: 600;
      text-repeat-distance: 250;
      text-placement: line;
      text-vertical-alignment: middle;
      text-dy: 4;
      [zoom >= 16] { text-size: 10; }
      [zoom >= 18] { text-size: 12; }
    }

    [waterway = 'drain'],
    [waterway = 'ditch'] {
      [zoom >= 15] {
        text-name: "[name]";
        text-face-name: @oblique-fonts;
        text-size: 8;
        text-fill: @water-text;
        text-spacing: 600;
        text-repeat-distance: 250;
        text-placement: line;
        text-halo-radius: @radius-avg;
        text-halo-fill: rgba(255,255,255,0.8);
        [zoom >= 17] { text-size: 10; }
      }
    }

 /* } */
}

#water-areas-text {
  [natural = 'glacier']::natural {
    [zoom >= 6] {
      [zoom >= 13] {
        text-name: "[name]";
        text-face-name: @oblique-fonts;
        text-fill: darken(@glacier-line, 10%);
        text-spacing: 400;
        text-size: 10;
        text-wrap-width: 30;
        text-halo-radius: @radius-avg;
        text-halo-fill: rgba(255,255,255,0.8);
      }
    }
  }

  [waterway = 'dock'],
  [waterway = 'canal'] {
    [zoom >= 9]::waterway {
      [zoom >= 13] {
        text-name: "[name]";
        text-face-name: @oblique-fonts;
        text-fill: @water-text;
        text-placement: line;
        text-spacing: 400;
        text-size: 10;
        text-halo-radius: @radius-avg;
        text-halo-fill: rgba(255,255,255,0.8);
      }
    }
  }

  [natural = 'water']::natural,
  [landuse = 'reservoir'][way_area>=10000]::landuse {
      [zoom >= 13] {
        text-name: "[name]";
        text-face-name: @oblique-fonts;
        text-fill: @water-text;
        text-spacing: 400;
        text-size: 10;
        text-wrap-width: 30;
        text-halo-radius: @radius-avg;
        text-halo-fill: rgba(255,255,255,0.8);
      }
  }

  [waterway = 'riverbank']::waterway {
      [zoom >= 13] {
        text-name: "[name]";
        text-face-name: @oblique-fonts;
        text-fill: @water-text;
        text-placement: line;
        text-spacing: 400;
        text-size: 10;
        text-halo-radius: @radius-avg;
        text-halo-fill: rgba(255,255,255,0.8);
      }
  }
}
