@amenity-brown: #443f37;
@amenity-red: #ff0000;
@amenity-blu: #7272ff;
@standard-wrap-width: 30;
@amenity-purple: #ac39ac;
@amenity-grey: #a9a9a9;

#pois-important {
  [tourism = 'alpine_hut'][zoom >= 13] {
    marker-file: url('symbols/alpinehut_all.svg');
    marker-fill: @amenity-red;
    marker-placement: interior;
    marker-width: 8;
    [zoom >= 16] {
        marker-width: 12;
    }
    [zoom >= 18]{
        marker-width: 14;
    }
  }
  [tourism = 'wilderness_hut'][zoom >= 14] {
    marker-file: url('symbols/alpinehut_half.svg');
    marker-fill: @amenity-red;
    marker-placement: interior;
    marker-width: 8;
    [zoom >= 16] {
        marker-width: 12;
    }
    [zoom >= 18]{
        marker-width: 14;
    }
  }
  [natural = 'peak'],
  [natural = 'volcano']{
    [zoom >= 14] {
      marker-fill: @amenity-brown;
      line-color: @amenity-brown;
      marker-placement: interior;
      marker-file: url('symbols/peak.svg');
      marker-width: 3;
      [zoom >= 16] {
        marker-width: 5;
      }
      [zoom >= 18]{
        marker-width: 7;
      }
    }
  }
  [mountain_pass = 'yes'],
  [natural = 'saddle']{
    [zoom >= 14] {
      marker-file: url('symbols/mountain_pass.svg');
      marker-fill: @amenity-brown;
      line-color: @amenity-brown;
      marker-placement: interior;
      marker-width: 7;
      [zoom >= 16] {
        marker-width: 11;
      }
      [zoom >= 18]{
        marker-width: 13;
      }
    }
  }
}

#pois-poly-important {
  [tourism = 'alpine_hut'][zoom >= 13] {
    marker-file: url('symbols/alpinehut_all.svg');
    marker-fill: @amenity-red;
    marker-placement: interior;
    marker-width: 8;
    [zoom >= 16] {
        marker-width: 12;
    }
    [zoom >= 18]{
        marker-width: 14;
    }
  }
  [tourism = 'wilderness_hut'][zoom >= 14] {
    marker-file: url('symbols/alpinehut_half.svg');
    marker-fill: @amenity-red;
    marker-placement: interior;
    marker-width: 8;
    [zoom >= 16] {
        marker-width: 12;
    }
    [zoom >= 18]{
        marker-width: 14;
    }
  }
  [natural = 'peak'],
  [natural = 'volcano']{
    [zoom >= 14] {
      marker-fill: @amenity-brown;
      line-color: @amenity-brown;
      marker-placement: interior;
      marker-file: url('symbols/peak.svg');
      marker-width: 3;
      [zoom >= 16] {
        marker-width: 5;
      }
      [zoom >= 18]{
        marker-width: 7;
      }
    }
  }
  [mountain_pass = 'yes'],
  [natural = 'saddle']{
    [zoom >= 14] {
      marker-file: url('symbols/mountain_pass.svg');
      marker-fill: @amenity-brown;
      line-color: @amenity-brown;
      marker-placement: interior;
      marker-width: 7;
      [zoom >= 16] {
        marker-width: 11;
      }
      [zoom >= 18]{
        marker-width: 13;
      }
    }
  }
}

#pois {
  [amenity = 'bench'] [zoom >= 17] {
    marker-file: url('symbols/bench.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-width: 8;
    [zoom >= 16] {
      marker-width: 12;
    }
    [zoom >= 18]{
      marker-width: 14;
    }
  }
  [tourism = 'viewpoint'][zoom >= 14] {
    marker-file: url('symbols/viewpoint.svg');
    marker-fill: @amenity-purple;
    marker-placement: interior;
    marker-width: 12;
    [zoom >= 16] {
      marker-width: 15;
    }
    [zoom >= 18]{
      marker-width: 18;
    }
  }
  [tourism = 'information'][zoom >= 14]{
    [information='office'] {
      marker-file: url('symbols/information.svg');
      marker-placement: interior;
      marker-fill: @amenity-red;
      marker-width: 4;
      [zoom >= 16] {
        marker-width: 6;
      }
      [zoom >= 18]{
        marker-width: 8;
      }
    }
    [information='guidepost'][zoom >= 15] {
      marker-file: url('symbols/guidepost.svg');
      marker-placement: interior;
      marker-fill: @amenity-brown;
      marker-width: 6;
      [zoom >= 16] {
        marker-width: 8;
      }
      [zoom >= 18]{
        marker-width: 10;
      }
    }
    [information='map'],
    [information='board'] {
      [zoom >= 15] {
        marker-file: url('symbols/board.svg');
        marker-placement: interior;
        marker-fill: @amenity-brown;
        marker-width: 6;
        [zoom >= 16] {
          marker-width: 8;
        }
        [zoom >= 18]{
          marker-width: 10;
        }
      }
    }
  }
  [natural = 'cave_entrance'],
  [man_made = 'adit']{
    [zoom >= 14] {
      marker-file: url('symbols/cave.svg');
      marker-placement: interior;
      marker-width: 8;
      [zoom >= 16] {
        marker-width: 10;
      }
      [zoom >= 18]{
        marker-width: 12;
      }
    }
  }
  [shop = 'outdoor'][zoom >= 16] {
    marker-file: url('symbols/outdoor.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @amenity-purple;
    marker-width: 10;
    [zoom >= 16] {
      marker-width: 13;
    }
    [zoom >= 18]{
      marker-width: 16;
    }
  }
  [sport = 'climbing'][zoom >= 14] {
    marker-file: url('symbols/climbing_icon_rope.svg');
    marker-placement: interior;
    marker-width: 12;
    marker-fill: @amenity-purple;
    [zoom >= 16] {
      marker-width: 15;
    }
    [zoom >= 18]{
      marker-width: 18;
    }
  }
  [tourism = 'museum'][zoom >= 14] {
    marker-file: url('symbols/museum.svg');
    marker-fill: @amenity-purple;
    marker-width: 8;
    marker-placement: interior;
    marker-clip: false;
    [zoom >= 16] {
      marker-width: 10;
    }
    [zoom >= 18]{
      marker-width: 14;
    }
  }
  [amenity = 'drinking_water'],
  [natural = 'sprint'] {
    [zoom >= 14] {
      marker-file: url('symbols/drop_water.svg');
      marker-placement: interior;
      marker-fill: @amenity-blu;
      marker-width: 4;
      [zoom >= 16] {
        marker-width: 6;
      }
      [zoom >= 18] {
        marker-width: 8;
      }
    }
  }
  [highway = 'bus'],
  [public_transport = 'platform']{
    [zoom >= 16] {
      marker-file: url('symbols/bus_stop.svg');
      marker-width: 10;
      marker-fill: @amenity-blu;
      marker-placement: interior;
      marker-clip: false;
      [zoom >= 16] {
        marker-width: 11;
      }
      [zoom >= 18]{
        marker-width: 16;
      }
    }
  }
  [amenity = 'place_of_worship'][zoom >= 14] {
    marker-file: url('symbols/christian.svg');
    marker-placement: interior;
    marker-fill: #000000;
    marker-width: 4;
    marker-placement: interior;
    marker-clip: false;
    [zoom >= 16] {
      marker-width: 7;
    }
    [zoom >= 18]{
      marker-width: 10;
    }
  }
  [man_made = 'cross'][zoom >= 14] {
    marker-file: url('symbols/christian.9.svg');
    marker-fill: #000000;
    marker-width: 8;
    marker-placement: interior;
    marker-clip: false;
    [zoom >= 16] {
      marker-width: 10;
    }
    [zoom >= 18]{
      marker-width: 14;
    }
  }
  [amenity = 'picnic_site'][zoom >= 15],
  [amenity = 'picnic_table'][zoom >= 16]{
    marker-file: url('symbols/picnic.svg');
    marker-fill: @amenity-blu;
    marker-placement: interior;
    marker-clip: false;
    marker-width: 10;
    [zoom >= 16] {
      marker-width: 11;
    }
    [zoom >= 18]{
      marker-width: 16;
    }
  }
  [aeroway = 'helipad'][zoom >= 15]{
    marker-file: url('symbols/helipad.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @amenity-blu;
    marker-width: 10;
    [zoom >= 16] {
      marker-width: 11;
    }
    [zoom >= 18]{
      marker-width: 16;
    }
  }
}

#pois-poly {
  [amenity = 'bench'] [zoom >= 17] {
    marker-file: url('symbols/bench.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-width: 8;
    [zoom >= 16] {
      marker-width: 12;
    }
    [zoom >= 18]{
      marker-width: 14;
    }
  }
  [tourism = 'viewpoint'][zoom >= 14] {
    marker-file: url('symbols/viewpoint.svg');
    marker-fill: @amenity-purple;
    marker-placement: interior;
    marker-width: 12;
    [zoom >= 16] {
      marker-width: 15;
    }
    [zoom >= 18]{
      marker-width: 18;
    }
  }
  [tourism = 'information'][zoom >= 14]{
    [information='office'] {
      marker-file: url('symbols/information.svg');
      marker-placement: interior;
      marker-fill: @amenity-red;
      marker-width: 4;
      [zoom >= 16] {
        marker-width: 6;
      }
      [zoom >= 18]{
        marker-width: 8;
      }
    }
    [information='guidepost'][zoom >= 14] {
      marker-file: url('symbols/guidepost.svg');
      marker-placement: interior;
      marker-fill: @amenity-brown;
      marker-width: 6;
      [zoom >= 16] {
        marker-width: 8;
      }
      [zoom >= 18]{
        marker-width: 10;
      }
    }
    [information='map'],
    [information='board'] {
      [zoom >= 14] {
        marker-file: url('symbols/board.svg');
        marker-placement: interior;
        marker-fill: @amenity-brown;
        marker-width: 6;
        [zoom >= 16] {
          marker-width: 8;
        }
        [zoom >= 18]{
          marker-width: 10;
        }
      }
    }
  }
  [natural = 'cave_entrance'],
  [man_made = 'adit']{
    [zoom >= 14] {
      marker-file: url('symbols/cave.svg');
      marker-placement: interior;
      marker-width: 8;
      [zoom >= 16] {
        marker-width: 10;
      }
      [zoom >= 18]{
        marker-width: 12;
      }
    }
  }
  [shop = 'outdoor'][zoom >= 16] {
    marker-file: url('symbols/outdoor.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @amenity-purple;
    marker-width: 10;
    [zoom >= 16] {
      marker-width: 13;
    }
    [zoom >= 18]{
      marker-width: 16;
    }
  }
  [sport = 'climbing'][zoom >= 14] {
    marker-file: url('symbols/climbing_icon_rope.svg');
    marker-placement: interior;
    marker-width: 12;
    marker-fill: @amenity-purple;
    [zoom >= 16] {
      marker-width: 15;
    }
    [zoom >= 18]{
      marker-width: 18;
    }
  }
  [tourism = 'museum'][zoom >= 14] {
    marker-file: url('symbols/museum.svg');
    marker-fill: @amenity-purple;
    marker-width: 8;
    marker-placement: interior;
    marker-clip: false;
    [zoom >= 16] {
      marker-width: 10;
    }
    [zoom >= 18]{
      marker-width: 14;
    }
  }
  [amenity = 'drinking_water'],
  [natural = 'sprint'] {
    [zoom >= 14] {
      marker-file: url('symbols/drop_water.svg');
      marker-placement: interior;
      marker-fill: @amenity-blu;
      marker-width: 4;
      [zoom >= 16] {
        marker-width: 6;
      }
      [zoom >= 18] {
        marker-width: 8;
      }
    }
  }
  [highway = 'bus'],
  [public_transport = 'platform']{
    [zoom >= 16] {
      marker-file: url('symbols/bus_stop.svg');
      marker-width: 10;
      marker-fill: @amenity-blu;
      marker-placement: interior;
      [zoom >= 16] {
        marker-width: 11;
      }
      [zoom >= 18]{
        marker-width: 16;
      }
    }
  }
  [amenity = 'place_of_worship'][zoom >= 14] {
    marker-file: url('symbols/christian.svg');
    marker-placement: interior;
    marker-fill: #000000;
    marker-width: 4;
    marker-placement: interior;
    marker-clip: false;
    [zoom >= 16] {
      marker-width: 7;
    }
    [zoom >= 18]{
      marker-width: 10;
    }
  }
  [man_made = 'cross'][zoom >= 14] {
    marker-file: url('symbols/christian.9.svg');
    marker-fill: #000000;
    marker-width: 8;
    marker-placement: interior;
    marker-clip: false;
    [zoom >= 16] {
      marker-width: 10;
    }
    [zoom >= 18]{
      marker-width: 14;
    }
  }
  [amenity = 'picnic_site'][zoom >= 15],
  [amenity = 'picnic_table'][zoom >= 16]{
    marker-file: url('symbols/picnic.svg');
    marker-fill: @amenity-blu;
    marker-placement: interior;
    marker-clip: false;
    marker-width: 10;
    [zoom >= 16] {
      marker-width: 11;
    }
    [zoom >= 18]{
      marker-width: 16;
    }
  }
  [aeroway = 'helipad'][zoom >= 15]{
    marker-file: url('symbols/helipad.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @amenity-blu;
    marker-width: 10;
    [zoom >= 16] {
      marker-width: 11;
    }
    [zoom >= 18]{
      marker-width: 16;
    }
  }
}

#pois-important-text {
  [tourism = 'alpine_hut'][zoom >= 14],
  [tourism = 'wilderness_hut'][zoom >= 14]{
    text-name: "[name]";
    text-allow-overlap: true;
    text-size: 6;
    [zoom >= 16]{
        text-size: 8;
    }
    [zoom >= 18]{
        text-size: 10;
    }
    text-fill: @amenity-red;
    text-dy: 5;
    text-dx: 5;
    text-face-name: @book-fonts;
    text-halo-radius: @radius-avg;
    text-halo-fill: rgba(255,255,255,0.9);
    text-wrap-width: @standard-wrap-width;
    text-placement-type: simple;
    text-placements: 'N';
    [cdir >= 22.5][cdir < 67.5] {
        text-placements: 'NE,N,E';
        text-dy: 1;
        text-dx: 1;
    }
    [cdir >= 67.5][cdir < 112.5] { text-placements: 'E,NE,SE'; }
    [cdir >= 112.5][cdir < 157.5] {
        text-placements: 'SE,E,S';
        text-dy: 1;
        text-dx: 1;
    }
    [cdir >= 157.5][cdir < 202.5] { text-placements: 'S,SE,SW'; }
    [cdir >= 202.5][cdir < 247.5] {
        text-placements: 'SW,S,W';
        text-dy: 1;
        text-dx: 1;
     }
    [cdir >= 247.5][cdir < 292.5] { text-placements: 'W,SW,NW'; }
    [cdir >= 292.5][cdir < 337.5] {
        text-placements: 'NW,N,W';
        text-dy: 1;
        text-dx: 1;
    }
  }
  [natural = 'peak'] {
    [zoom >= 14][name != null]{
      text-name: "[name]";
      [ele != null] {
        text-name: "[name] + ' ' + [ele] + 'm'";
      }
      text-size: 6;
      [zoom >= 16]{
        text-size: 8;
      }
      [zoom >= 16]{
        text-size: 10;
	  }
      text-fill: @amenity-brown;
      text-dy: 5;
      text-dx: 5;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.9);
      text-wrap-width: @standard-wrap-width;
      text-placement-type: simple;
      text-placements: 'N';
      text-allow-overlap: true;
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
  [natural = 'volcano'],
  [mountain_pass = 'yes'],
  [natural = 'saddle'] {
    [zoom >= 14][name != null]{
      text-name: "[name]";
      [ele != null] {
        text-name: "[name] + ' ' + [ele] + 'm'";
      }
      text-size: 6;
      [zoom >= 16]{
        text-size: 8;
      }
      [zoom >= 18]{
        text-size: 10;
      }
      text-fill: @amenity-brown;
      text-dy: 5;
      text-dx: 5;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.9);
      text-wrap-width: @standard-wrap-width;
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
#pois-poly-important-text {
  [tourism = 'alpine_hut'][zoom >= 14],
  [tourism = 'wilderness_hut'][zoom >= 14]{
    text-name: "[name]";
    text-allow-overlap: true;
    text-size: 6;
    [zoom >= 16]{
        text-size: 8;
    }
    [zoom >= 18]{
        text-size: 10;
    }
    text-fill: @amenity-red;
    text-dy: 5;
    text-dx: 5;
    text-face-name: @book-fonts;
    text-halo-radius: @radius-avg;
    text-halo-fill: rgba(255,255,255,0.9);
    text-wrap-width: @standard-wrap-width;
    text-placement-type: simple;
    text-placements: 'N';
    [cdir >= 22.5][cdir < 67.5] {
        text-placements: 'NE,N,E';
        text-dy: 1;
        text-dx: 1;
    }
    [cdir >= 67.5][cdir < 112.5] { text-placements: 'E,NE,SE'; }
    [cdir >= 112.5][cdir < 157.5] {
        text-placements: 'SE,E,S';
        text-dy: 1;
        text-dx: 1;
    }
    [cdir >= 157.5][cdir < 202.5] { text-placements: 'S,SE,SW'; }
    [cdir >= 202.5][cdir < 247.5] {
        text-placements: 'SW,S,W';
        text-dy: 1;
        text-dx: 1;
     }
    [cdir >= 247.5][cdir < 292.5] { text-placements: 'W,SW,NW'; }
    [cdir >= 292.5][cdir < 337.5] {
        text-placements: 'NW,N,W';
        text-dy: 1;
        text-dx: 1;
    }
  }
  [natural = 'peak'] {
    [zoom >= 14][name != null]{
      text-name: "[name]";
      [ele != null] {
        text-name: "[name] + ' ' + [ele] + 'm'";
      }
      text-size: 6;
      [zoom >= 16]{
        text-size: 8;
      }
      [zoom >= 18]{
        text-size: 10;
      }
      text-fill: @amenity-brown;
      text-dy: 5;
      text-dx: 5;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.9);
      text-wrap-width: @standard-wrap-width;
      text-placement-type: simple;
      text-placements: 'N';
      text-allow-overlap: true;
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
  [natural = 'volcano'],
  [mountain_pass = 'yes'],
  [natural = 'saddle'] {
    [zoom >= 14][name != null]{
      text-name: "[name]";
      [ele != null] {
        text-name: "[name] + ' ' + [ele] + 'm'";
      }
      text-size: 6;
      [zoom >= 16]{
        text-size: 8;
      }
      [zoom >= 18]{
        text-size: 10;
      }
      text-fill: @amenity-brown;
      text-dy: 5;
      text-dx: 5;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.9);
      text-wrap-width: @standard-wrap-width;
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

#pois-text {
  [sport = 'climbing'][zoom >= 15] {
    text-name: "[name]";
    text-size: 6;
    [zoom >= 17]{
        text-size: 8;
    }
    text-fill: @amenity-purple;
    text-dy: 5;
    text-dx: 5;
    text-face-name: @book-fonts;
    text-halo-radius: @radius-avg;
    text-halo-fill: rgba(255,255,255,0.9);
    text-wrap-width: @standard-wrap-width;
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
  [amenity = 'drinking_water'],
  [natural = 'sprint'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 8;
      text-fill: @amenity-blu;
      text-dy: 5;
      text-dx: 5;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.9);
      text-wrap-width: @standard-wrap-width;
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
  [shop = 'outdoor'] [zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @amenity-purple;
    text-dy: 5;
    text-dx: 5;
    text-face-name: @book-fonts;
    text-halo-radius: @radius-avg;
    text-halo-fill: rgba(255,255,255,0.9);
    text-wrap-width: @standard-wrap-width;
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
  [amenity = 'place_of_worship'] [zoom >= 17] {
    text-name: "[name]";
    text-size: 8;
    text-fill: @amenity-grey;
    text-dy: 5;
    text-dx: 5;
    text-face-name: @book-fonts;
    text-halo-radius: @radius-avg;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
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
  [natural = 'cave_entrance'],
  [man_made = 'adit'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @amenity-brown;
      text-dy: 5;
      text-dx: 5;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.9);
      text-wrap-width: @standard-wrap-width;
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
#pois-poly-text {
  [sport = 'climbing'][zoom >= 15] {
    text-name: "[name]";
    text-size: 8;
    [zoom >= 17]{
        text-size: 10;
    }
    text-fill: @amenity-purple;
    text-dy: 5;
    text-dx: 5;
    text-face-name: @book-fonts;
    text-halo-radius: @radius-avg;
    text-halo-fill: rgba(255,255,255,0.9);
    text-wrap-width: @standard-wrap-width;
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
  [amenity = 'drinking_water'],
  [natural = 'sprint'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @amenity-blu;
      text-dy: 5;
      text-dx: 5;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.9);
      text-wrap-width: @standard-wrap-width;
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
  [shop = 'outdoor'] [zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @amenity-purple;
    text-dy: 5;
    text-dx: 5;
    text-face-name: @book-fonts;
    text-halo-radius: @radius-avg;
    text-halo-fill: rgba(255,255,255,0.9);
    text-wrap-width: @standard-wrap-width;
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
  [amenity = 'place_of_worship'] [zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @amenity-grey;
    text-dy: 5;
    text-dx: 5;
    text-face-name: @book-fonts;
    text-halo-radius: @radius-avg;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
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
  [natural = 'cave_entrance'],
  [man_made = 'adit'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @amenity-brown;
      text-dy: 5;
      text-dx: 5;
      text-face-name: @book-fonts;
      text-halo-radius: @radius-avg;
      text-halo-fill: rgba(255,255,255,0.9);
      text-wrap-width: @standard-wrap-width;
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
