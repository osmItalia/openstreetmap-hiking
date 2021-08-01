@placenames: #222;
@placenames-light: #6a6a6a;
@radius-max: 1.5;
@radius-avg: 0.75;
@radius-min: 0.5;

#placenames-medium::high-importance {
  [category = 1][zoom <= 14] {
    [zoom >= 3][score >= 5000000],
    [zoom >= 4][score >= 3000000],
    [zoom >= 5][score >= 400000] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-min;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 30;
      text-min-distance: 10;
      [zoom >= 5] {
        text-size: 11;
        text-wrap-width: 45;
      }
      [zoom >= 6] {
        text-size: 13;
        text-wrap-width: 60;
        text-halo-radius: @radius-avg;
      }
      [zoom >= 11] {
        text-halo-radius: @radius-max;
        text-size: 17;
        text-wrap-width: 75;
        text-halo-fill: white;
        text-allow-overlap: true;
      }
    }
  }
}

#placenames-medium::medium-importance {
  [category = 1][score < 400000][zoom <= 15] {
    [zoom >= 6][score >= 70000],
    [zoom >= 7] {
      text-name: "[name]";
      text-size: 7;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-min;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 30;
      text-min-distance: 10;
      [zoom >= 9] {
        text-size: 9;
        text-wrap-width: 60;
      }
      [zoom >= 11] {
        text-size: 11;
        text-halo-radius: @radius-avg;
        text-wrap-width: 70;
      }
      [zoom >= 14] {
        text-halo-radius: @radius-max;
        text-size: 14;
        text-wrap-width: 75;
        text-halo-fill: white;
        text-allow-overlap: true;
      }
      text-placement-type: simple;
      text-placements: "N,S,E,W,NE,SE,NW,SW,16,14,12";
    }
  }
}

#placenames-medium::low-importance {
  [category = 2] {
    [zoom >= 9][zoom < 16] {
      text-name: "[name]";
      text-size: 6;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-min;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 45;
      text-min-distance: 10;
      [zoom >= 11] {
        text-size: 8;
        text-wrap-width: 55;
      }
      [zoom >= 12] {
        text-size: 9;
        text-wrap-width: 65;
        text-halo-radius: @radius-avg;
      }
      [zoom >= 14] {
        text-halo-radius: @radius-max;
        text-size: 12;
        text-wrap-width: 70;
        text-halo-fill: white;
        text-allow-overlap: true;
      }
      text-placement-type: simple;
      text-placements: "N,S,E,W,NE,SE,NW,SW,16,14,12";
    }
  }
}

#placenames-small::suburb {
  [place = 'suburb'][zoom >= 12][zoom < 18] {
    text-name: "[name]";
    text-size: 8;
    text-fill: @placenames-light;
    text-face-name: @book-fonts;
    text-halo-radius: @radius-min;
    text-halo-fill: rgba(255,255,255,0.8);
    text-wrap-width: 50;
    text-min-distance: 10;
    [zoom >= 14] {
      text-wrap-width: 60;
      text-halo-radius: @radius-avg;
    }
    [zoom >= 16] {
      text-size: 10;
      text-wrap-width: 70;
      text-halo-radius: @radius-max;
    }
    text-placement-type: simple;
    text-placements: 'N';
    [ldir >= 22.5][ldir < 67.5] {
      text-placements: 'NE,N,E';
      text-dy: 1;
      text-dx: 1;
    }
    [ldir >= 67.5][ldir < 112.5] { text-placements: 'E,NE,SE'; }
    [ldir >= 112.5][ldir < 157.5] {
      text-placements: 'SE,E,S';
      text-dy: 1;
      text-dx: 1;
    }
    [ldir >= 157.5][ldir < 202.5] { text-placements: 'S,SE,SW'; }
    [ldir >= 202.5][ldir < 247.5] {
      text-placements: 'SW,S,W';
      text-dy: 1;
      text-dx: 1;
    }
    [ldir >= 247.5][ldir < 292.5] { text-placements: 'W,SW,NW'; }
    [ldir >= 292.5][ldir < 337.5] {
      text-placements: 'NW,N,W';
      text-dy: 1;
      text-dx: 1;
    }
  }
}

#placenames-small::village {
  [place = 'village'] {
    [zoom >= 12][zoom < 18] {
      text-name: "[name]";
      text-size: 8;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-min;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 50;
      text-min-distance: 10;
      [zoom >= 14] {
        text-fill: @placenames;
        text-halo-fill: white;
        text-size: 10;
        text-wrap-width: 60;
        text-halo-radius: @radius-avg;
        text-allow-overlap: true;
      }
      [zoom >= 16] {
        text-size: 12;
        text-wrap-width: 70;
        text-halo-radius: @radius-max;
      }
      text-placement-type: simple;
      text-placements: 'N';
      [ldir >= 22.5][ldir < 67.5] {
        text-placements: 'NE,N,E';
        text-dy: 1;
        text-dx: 1;
      }
      [ldir >= 67.5][ldir < 112.5] { text-placements: 'E,NE,SE'; }
      [ldir >= 112.5][ldir < 157.5] {
        text-placements: 'SE,E,S';
        text-dy: 1;
        text-dx: 1;
      }
      [ldir >= 157.5][ldir < 202.5] { text-placements: 'S,SE,SW'; }
      [ldir >= 202.5][ldir < 247.5] {
        text-placements: 'SW,S,W';
        text-dy: 1;
        text-dx: 1;
      }
      [ldir >= 247.5][ldir < 292.5] { text-placements: 'W,SW,NW'; }
      [ldir >= 292.5][ldir < 337.5] {
        text-placements: 'NW,N,W';
        text-dy: 1;
        text-dx: 1;
      }
    }
  }
}

#placenames-small::hamlet {
  [place = 'hamlet'],
  [place = 'locality'],
  [place = 'neighbourhood'],
  [place = 'isolated_dwelling'],
  [place = 'farm'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 7;
      text-fill: @placenames-light;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-min;
      text-halo-fill: white;
      text-wrap-width: 40;
      text-min-distance: 10;
      text-placement-type: simple;
      text-placements: 'N';
      [zoom >= 16] {
        text-size: 10;
        text-wrap-width: 60;
        text-halo-radius: @radius-avg;
      }
      [ldir >= 22.5][ldir < 67.5] {
        text-placements: 'NE,N,E';
        text-dy: 1;
        text-dx: 1;
      }
      [ldir >= 67.5][ldir < 112.5] { text-placements: 'E,NE,SE'; }
      [ldir >= 112.5][ldir < 157.5] {
        text-placements: 'SE,E,S';
        text-dy: 1;
        text-dx: 1;
      }
      [ldir >= 157.5][ldir < 202.5] { text-placements: 'S,SE,SW'; }
      [ldir >= 202.5][ldir < 247.5] {
        text-placements: 'SW,S,W';
        text-dy: 1;
        text-dx: 1;
      }
      [ldir >= 247.5][ldir < 292.5] { text-placements: 'W,SW,NW'; }
      [ldir >= 292.5][ldir < 337.5] {
        text-placements: 'NW,N,W';
        text-dy: 1;
        text-dx: 1;
      }
    }
  }
}

#lines-text {
  [natural = 'valley']{
    [zoom >= 10] {
      text-name: "[name]";
      text-fill: @placenames-light;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-max;
      text-halo-fill: rgba(255,255,255,0.6);
      text-placement: line;
      text-transform: uppercase;
      text-placement-type: simple;
      text-placements: "N,S,E,W,NE,SE,NW,SW,16,14,12";
      text-min-distance: 1000;
      [leng <= 1000] {
        text-character-spacing: 2;
        text-size: 4.5;
        [zoom >= 13] {
            text-size: 6;
            text-character-spacing: 3;
        }
        [zoom >= 16] {
            text-size: 8;
            text-character-spacing: 4;
            text-halo-radius: @radius-max * 1.5;
        }
      }
      [leng > 1000][leng <= 2500]{
        text-character-spacing: 4;
        text-size: 6;
        [zoom >= 13] {
            text-size: 8;
            text-character-spacing: 6;
        }
        [zoom >= 16] {
            text-size: 10;
            text-character-spacing: 8;
            text-halo-radius: @radius-max * 1.5;
        }
      }
      [leng > 2500][leng <= 5000]{
        text-character-spacing: 6;
        text-size: 8;
        [zoom >= 13] {
            text-size: 10;
            text-character-spacing: 8;
        }
        [zoom >= 16] {
            text-size: 12;
            text-character-spacing: 10;
            text-halo-radius: @radius-max * 1.5;
        }
      }
      [leng > 5000][leng <= 10000]{
        text-character-spacing: 8;
        text-size: 14;
        [zoom >= 13] {
            text-size: 16;
            text-character-spacing: 10;
        }
        [zoom >= 16] {
            text-size: 18;
            text-character-spacing: 12;
            text-halo-radius: @radius-max * 1.5;
        }
      }
      [leng > 10000][leng <= 25000]{
        text-character-spacing: 12;
        text-size: 18;
        [zoom >= 13] {
            text-size: 20;
            text-character-spacing: 14;
            text-halo-radius: @radius-max * 1.5;
        }
        [zoom >= 16] {
            text-size: 22;
            text-character-spacing: 16;
            text-halo-radius: @radius-max * 2;
        }
      }
      [leng > 25000] {
        text-character-spacing: 14;
        text-size: 20;
        [zoom >= 13] {
            text-size: 22;
            text-character-spacing: 16;
            text-halo-radius: @radius-max * 1.5;
        }
        [zoom >= 16] {
            text-size: 24;
            text-character-spacing: 18;
            text-halo-radius: @radius-max * 2;
        }
      }
    }
  }
}
