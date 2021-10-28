// --- route color is set in project.mml in the query @route-width: 0.5; ---
@route-color: red;
@route-background-width:          1;
@route-bridge-casing-width:       0.5;
@route-tunnel-casing-width:       1;

#route-bridges, #route-tunnels {
  ::casing {
    [network = 'iwn'],
    [network = 'nwn'][zoom >= 9],
    [network = 'rwn'][zoom >= 10],
    [network = 'lwn'][zoom >= 11],
    [network = null][zoom >= 11] {
      line-color: "[route_color]";
      line-width: @route-width;
    }
    [feature = 'highway_footway'],
    [feature = 'highway_path'][bicycle != 'designated'][horse != 'designated'] {
      [zoom >= 13] {
        line-width: @footway-width-z13 + 1 * (@route-background-width + @route-tunnel-casing-width);
        [zoom >= 15] { line-width: @footway-width-z15 + 1 * (@route-background-width + @route-tunnel-casing-width); }
        [zoom >= 16] { line-width: @footway-width-z16 + 1 * (@route-background-width + @route-tunnel-casing-width); }
        [zoom >= 18] { line-width: @footway-width-z18 + 1 * (@route-background-width + @route-tunnel-casing-width); }
        [zoom >= 19] { line-width: @footway-width-z19 + 1 * (@route-background-width + @route-bridge-casing-width); }
       
        #route-tunnels {
          [cai = 'true']{
            line-offset: 1.5;
          }
          [cai = 'false']{
            line-offset: 1.5;
          }
        }
        #route-bridges {
          [cai = 'true']{
            line-offset: 2;
          }
          [cai = 'false']{
            line-offset: -2;
          }
        }
      }
    }
    
    [feature = 'highway_steps'] {
      [zoom >= 14]{
        line-width: @steps-width-z14 + 1 * (@route-background-width + @route-tunnel-casing-width);
        [zoom >= 15] { line-width: @steps-width-z15 + 1 * (@route-background-width + @route-tunnel-casing-width); }
      }
      #route-bridges {
        [cai = 'true']{
          line-offset: 2;
        }
        [cai = 'false']{
          line-offset: -2;
        }
      }
      #route-tunnels {
        line-offset: 1.5;
      }
    }

    [feature = 'highway_track'] {
      #route-bridges {
        [zoom >= 13] {
          line-join: round;
          line-width: @track-width-z13 + 1 * (@route-background-width + @route-bridge-casing-width);
        }
        [zoom >= 15] {
          line-width: @track-width-z15 + 1 * (@route-background-width + @route-bridge-casing-width);
        }
      }
      #route-tunnels {
        [zoom >= 13] {
          line-dasharray: 4,2;
          line-width: @track-width-z13 + 1 * (@route-background-width + @route-tunnel-casing-width);
          [zoom >= 15]{
            line-width: @track-width-z15 + 1 * (@route-background-width + @route-tunnel-casing-width);
          }
        }
      }
    }
  }
}

#route {
  ::casing{
    [network = 'iwn'],
    [network = 'nwn'][zoom >= 9],
    [network = 'rwn'][zoom >= 10],
    [network = 'lwn'][zoom >= 11],
    [network = null][zoom >= 11] {
      line-color: "[route_color]";
      line-width: @route-width;
    }
    [feature = 'highway_footway'],
    [feature = 'highway_path'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_bridleway'],
    [feature = 'highway_via_ferrata'],{
      [zoom >= 13] {
        line-width: @footway-width-z13 + @route-background-width;
        [zoom >= 16] { line-width: @footway-width-z16 + @route-background-width; }
        [zoom >= 18] { line-width: @footway-width-z18 + @route-background-width; }
        [zoom >= 19] { line-width: @footway-width-z19 + @route-background-width; }
        line-join: round;
        line-cap: round;
        [cai = 'true']{
          line-offset: 2;
        }
        [cai = 'false']{
          line-offset: -2;
        }
      }
    }
    
    [feature = 'highway_steps'] {
      [zoom >= 14] {
        line-width: @steps-width-z14 + @route-background-width;
        [zoom >= 15] { line-width:  @steps-width-z15 + @route-background-width; }
        line-join: round;
        line-cap: round;
        [cai = 'true']{
          line-offset: 2;
        }
        [cai = 'false']{
          line-offset: -2;
        }
      }
    }
    [feature = 'highway_track'] {
      [zoom >= 13] {
        line-join: round;
        line-width: @track-width-z13 + @route-background-width;
        [cai = 'true']{
          line-offset: 2;
        }
        [cai = 'false']{
          line-offset: -2;
        }
        [zoom >= 15] {line-width: @track-width-z15 + @route-background-width;}
      }
    }
    [feature = 'highway_unclassified'],
    [feature = 'highway_residential'] {
      [zoom >= 13] {
        line-join: round;
        [cai = 'true']{
          line-offset: 2;
        }
        [cai = 'false']{
          line-offset: -2;
        }
        line-width: @residential-width-z13 + 2 * @route-background-width;
        [zoom >= 15] { line-width: @residential-width-z15 + @route-background-width; }
        [zoom >= 16] { line-width: @residential-width-z16 + @route-background-width; }
        [zoom >= 17] { line-width: @residential-width-z17 + @route-background-width; }
        [zoom >= 18] { line-width: @residential-width-z18 + @route-background-width; }
        [zoom >= 19] { line-width: @residential-width-z19 + @route-background-width; }
      }
    }

    [feature = 'highway_tertiary']{
      [zoom >= 13] {
        line-join: round;
        line-width: @tertiary-width-z13 + @route-background-width;
        [cai = 'true']{
          line-offset: 2;
        }
        [cai = 'false']{
          line-offset: -2;
        }
        [zoom >= 15] { line-width: @tertiary-width-z15 + @route-background-width; }
        [zoom >= 16] { line-width: @tertiary-width-z16 + @route-background-width; }
        [zoom >= 17] { line-width: @tertiary-width-z17 + @route-background-width; }
        [zoom >= 18] { line-width: @tertiary-width-z18 + @route-background-width; }
        [zoom >= 19] { line-width: @tertiary-width-z19 + @route-background-width; }
      }
    }
    [feature = 'highway_secondary']{
      [zoom >= 13] {
        line-join: round;
        [cai = 'true']{
          line-offset: 2;
        }
        [cai = 'false']{
          line-offset: -2;
        } 
        line-width: @secondary-width-z13 + @route-background-width;
        [zoom >= 15] { line-width: @secondary-width-z15 + @route-background-width; }
        [zoom >= 16] { line-width: @secondary-width-z16 + @route-background-width; }
        [zoom >= 17] { line-width: @secondary-width-z17 + @route-background-width; }
        [zoom >= 18] { line-width: @secondary-width-z18 + @route-background-width; }
        [zoom >= 19] { line-width: @secondary-width-z19 + @route-background-width; }
      }
    }
  }
}

#route-text {
  [zoom >= 14] {
    text-name: "[ref]";
    text-face-name: @oblique-fonts;
    text-placement: line;
    text-fill: "[route_color]";
    text-spacing: 200;
    text-size: 8;
    [cai = 'true']{
      text-dy: 4;
    }
    [cai = 'false']{
      text-dy: -4;
    }
    text-max-char-angle-delta: 15;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: rgba(255,255,255,0.8);
    [zoom >= 15] {
      text-size: 10;
      text-dy: 6;
    }
    [zoom >= 17] {
      text-size: 14;
      text-dy: 8;
    }
  }
}
