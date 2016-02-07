@default-casing: white;
@footway-fill: black;
@steps-fill: salmon;
@cycleway-fill: blue;
@bridleway-fill: green;
@track-fill: #996600;
@route-color: red;

@path-casing: @default-casing;
@footway-casing: @default-casing;
@steps-casing: @default-casing;
@cycleway-casing: @default-casing;
@bridleway-casing: @default-casing;
@track-casing: @default-casing;

@footway-width-z13:               0.7;
@cycleway-width-z13:              0.7;
@path-width-z13:                  0.7;
@track-width-z13:                 0.8;
@track-grade1-width-z13:          0.8;
@track-grade2-width-z13:          0.65;
@steps-width-z13:                 0.7;
@bridleway-width-z13:             0.3;

@bridleway-width-z15:             1;
@footway-width-z15:               1.2;
@cycleway-width-z15:              1;
@path-width-z15:                  1.2;
@track-width-z15:                 1.5;
@track-grade1-width-z15:          1.5;
@track-grade2-width-z15:          1;
@steps-width-z15:                 3;

@footway-width-z16:               1.5;
@cycleway-width-z16:              1;

@footway-width-z18:               2;
@cycleway-width-z18:              1.5;

@footway-width-z19:               2.5;
@cycleway-width-z19:              2;

@paths-background-width:          1;
@paths-bridge-casing-width:       0.5;
@paths-tunnel-casing-width:       1;

@route-background-width:          1;
@route-bridge-casing-width:       0.5;
@route-tunnel-casing-width:       1;

@footway-oneway-arrow-color:      darken(@footway-fill, 35%);
@steps-oneway-arrow-color:        darken(@steps-fill, 35%);
@cycleway-oneway-arrow-color:     darken(@cycleway-fill, 25%);
@track-oneway-arrow-color:        darken(@track-fill, 15%);
@bridleway-oneway-arrow-color:    darken(@track-fill, 10%);

.path-casing, .bridges-casing, .tunnels-casing {
  ::casing {
    [feature = 'highway_footway'],
    [feature = 'highway_path'][bicycle != 'designated'][horse != 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @cycleway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 16] { line-width: @cycleway-width-z16 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 18] { line-width: @cycleway-width-z18 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 19] { line-width: @cycleway-width-z19 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: @cycleway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 16] { line-width: @cycleway-width-z16 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 18] { line-width: @cycleway-width-z18 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 19] { line-width: @cycleway-width-z19 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_steps'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @steps-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @steps-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: @steps-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { line-width: @steps-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @bridleway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @bridleway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: @bridleway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { line-width: @bridleway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_track'] {
      .bridges-casing {
        [zoom >= 13][access != 'no'] {
          line-color: @bridge-casing;
          line-join: round;
          line-width: @track-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
        }
        [zoom >= 15] {
          line-width: @track-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
          line-width: @track-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          }
          [zoom >= 15]{
            line-width: @track-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            [tracktype = 'grade1'] {
              line-width: @track-grade1-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            }
            [tracktype = 'grade2'] {
              line-width: @track-grade2-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            }
          }
        }
      }
    }
  }
  ::bridges_and_tunnels_background {
    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @bridleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @bridleway-width-z15 + 2 * @paths-background-width; }
          line-color: @bridleway-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @bridleway-casing;
          line-cap: round;
          line-join: round;
          line-width: @bridleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @bridleway-width-z15 + 2 * @paths-background-width; }
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][bicycle != 'designated'][horse != 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * @paths-background-width; }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * @paths-background-width; }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * @paths-background-width; }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * @paths-background-width; }
          line-color: @footway-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @footway-casing;
          line-cap: round;
          line-join: round;
          line-width: @footway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * @paths-background-width; }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * @paths-background-width; }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * @paths-background-width; }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * @paths-background-width; }
        }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @cycleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * @paths-background-width; }
          [zoom >= 16] { line-width: @cycleway-width-z16 + 2 * @paths-background-width; }
          [zoom >= 18] { line-width: @cycleway-width-z18 + 2 * @paths-background-width; }
          [zoom >= 19] { line-width: @cycleway-width-z19 + 2 * @paths-background-width; }
          line-color: @cycleway-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @cycleway-casing;
          line-cap: round;
          line-join: round;
          line-width: @cycleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * @paths-background-width; }
          [zoom >= 16] { line-width: @cycleway-width-z16 + 2 * @paths-background-width; }
          [zoom >= 18] { line-width: @cycleway-width-z18 + 2 * @paths-background-width; }
          [zoom >= 19] { line-width: @cycleway-width-z19 + 2 * @paths-background-width; }
        }
      }
    }

    [feature = 'highway_steps'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @steps-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @steps-width-z15 + 2 * @paths-background-width; }
          line-color: @steps-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @steps-casing;
          line-cap: round;
          line-join: round;
          line-width: @steps-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @steps-width-z15 + 2 * @paths-background-width; }
        }
      }
    }
  }
}

.path-fill[zoom >= 10],
.bridges-fill[zoom >= 10],
.tunnels-fill[zoom >= 10] {
  ::fill {
    [feature = 'highway_steps'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .roads-fill[zoom >= 15] {
          background/line-color: @steps-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @steps-width-z15 + 2 * @paths-background-width;
          background/line-opacity: 0.4;
        }
        line/line-color: @steps-fill;
        line/line-dasharray: 2,1;
        line/line-width: @steps-width-z13;
        [zoom >= 15] { line/line-width:  @steps-width-z15; }
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .roads-fill[zoom >= 15] {
          background/line-color: @bridleway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @bridleway-width-z15 + 2 * @paths-background-width;
          background/line-opacity: 0.4;
        }
        line/line-color: @bridleway-fill;
        line/line-dasharray: 4,2;
        line/line-width: @bridleway-width-z13;
        [zoom >= 15] { line/line-width: @bridleway-width-z15; }
        .tunnels-fill {
          line/line-join: round;
          line/line-cap: round;
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][bicycle != 'designated'][horse != 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .roads-fill[zoom >= 15] {
          background/line-color: @footway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @footway-width-z15 + 2 * @paths-background-width;
          background/line-opacity: 0.4;
          [zoom >= 16] {
            background/line-width: @footway-width-z16 + 2 * @paths-background-width;
          }
          [zoom >= 18] {
            background/line-width: @footway-width-z18 + 2 * @paths-background-width;
          }
          [zoom >= 19] {
            background/line-width: @footway-width-z19 + 2 * @paths-background-width;
          }
        }
        line/line-dasharray: 3,3;
        [trail_visibility = 'excellent'],[trail_visibility = 'good'],[trail_visibility = null] {
            line/line-color: #000000;
        }
        [trail_visibility = 'intermediate'] {
            line/line-color: #595f5b;
        }
        [trail_visibility = 'bad'],[trail_visibility = 'no'],[trail_visibility = 'horrible']{
            line/line-color: #b2beb5;
        }
        [sac_scale = 'hiking'] {
            line/line-dasharray: 12,4;
        }
        [sac_scale = 'mountain_hiking'],[sac_scale = 'demanding_mountain_hiking'] {
            line/line-dasharray: 9,4;
        }
        [sac_scale = 'alpine_hiking'] {
            line/line-dasharray: 4,3;
        }
        [sac_scale = 'demanding_alpine_hiking'],[sac_scale = 'difficult_alpine_hiking'] {
            line/line-dasharray: 2,2;
        }
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @footway-width-z13;
      }
    }
    [feature = 'highway_via_ferrate']{
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .roads-fill[zoom >= 15] {
          background/line-color: @footway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @footway-width-z15 + 2 * @paths-background-width;
          background/line-opacity: 0.4;
          [zoom >= 16] {
            background/line-width: @footway-width-z16 + 2 * @paths-background-width;
          }
          [zoom >= 18] {
            background/line-width: @footway-width-z18 + 2 * @paths-background-width;
          }
          [zoom >= 19] {
            background/line-width: @footway-width-z19 + 2 * @paths-background-width;
          }
        }
        line/line-color: #000000;
        line/line-dasharray: 2,2;
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @footway-width-z13;
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .roads-fill[zoom >= 15] {
          background/line-color: @cycleway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @cycleway-width-z15 + 2 * @paths-background-width;
          background/line-opacity: 0.4;
          [zoom >= 16] {
            background/line-width: @cycleway-width-z16 + 2 * @paths-background-width;
          }
          [zoom >= 18] {
            background/line-width: @cycleway-width-z18 + 2 * @paths-background-width;
          }
          [zoom >= 19] {
            background/line-width: @cycleway-width-z19 + 2 * @paths-background-width;
          }
        }
        line/line-color: @cycleway-fill;
        line/line-dasharray: 1,3;
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @cycleway-width-z13;
        [zoom >= 15][int_surface = 'paved'] {
          line/line-dasharray: 2,3.5;
          line/line-width: @cycleway-width-z15;
          [zoom >= 16] {
            line/line-dasharray: 3,3.5;
            line/line-width: @cycleway-width-z16;
          }
          [zoom >= 17] {
            line/line-dasharray: 3,3;
          }
          [zoom >= 18] {
            line/line-width: @cycleway-width-z18;
          }
          [zoom >= 19] {
            line/line-width: @cycleway-width-z19;
          }
        }
        [zoom >= 15][int_surface = null] {
          line/line-color: @cycleway-fill;
          line/line-dasharray: 1,3,2,4;
          line/line-join: round;
          line/line-cap: round;
          line/line-width: @cycleway-width-z15;
          [zoom >= 16] {
            line/line-dasharray: 1,4,2,3;
            line/line-width: @cycleway-width-z16;
          }
          [zoom >= 18] {
            line/line-width: @cycleway-width-z18;
          }
          [zoom >= 19] {
            line/line-width: @cycleway-width-z19;
          }
        }
        [zoom >= 15][int_surface = 'unpaved'] {
          line/line-color: @cycleway-fill;
          line/line-dasharray: 1,4;
          line/line-join: round;
          line/line-cap: round;
          line/line-width:  @cycleway-width-z15;
          [zoom >= 16] {
            line/line-width:  @cycleway-width-z16;
          }
          [zoom >= 18] {
            line/line-width: @cycleway-width-z18;
          }
          [zoom >= 19] {
            line/line-width:  @cycleway-width-z19;
          }
        }
      }
    }

  }
}

#highway-area-casing {
  [feature = 'highway_pedestrian'],
  [feature = 'highway_service'],
  [feature = 'highway_footway'],
  [feature = 'highway_cycleway'],
  [feature = 'highway_path'] {
    [zoom >= 14] {
      line-color: grey;
      line-width: 1;
    }
  }

  [feature = 'highway_track'][zoom >= 14] {
    line-color: @track-fill;
    line-width: 1;
    line-dasharray: 5,4,2,4;
    line-cap: round;
    line-join: round;
  }
}

#highway-area-fill {
  [feature = 'highway_pedestrian'],
  [feature = 'highway_footway'],
  [feature = 'highway_cycleway'],
  [feature = 'highway_path'] {
    [zoom >= 14] {
      polygon-fill: @pedestrian-fill;
    }
  }

  [feature = 'highway_track'][zoom >= 14] {
    polygon-fill: #cdbea0;
  }
}

#paths-text-name {
  [highway = 'bridleway'],
  [highway = 'footway'],
  [highway = 'cycleway'],
  [highway = 'path'],
  [highway = 'steps'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-fill: #222;
      text-size: 9;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-vertical-alignment: middle;
      text-dy: 7;
    }
    [zoom >= 17] {
      text-size: 11;
      text-dy: 9;
    }
  }
}

/* .directions::directions {
  [zoom >= 16] {
    // intentionally omitting highway_platform, highway_construction
    [feature = 'highway_motorway'],
    [feature = 'highway_motorway_link'],
    [feature = 'highway_trunk'],
    [feature = 'highway_trunk_link'],
    [feature = 'highway_primary'],
    [feature = 'highway_primary_link'],
    [feature = 'highway_secondary'],
    [feature = 'highway_secondary_link'],
    [feature = 'highway_tertiary'],
    [feature = 'highway_tertiary_link'],
    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_living_street'],
    [feature = 'highway_road'],
    [feature = 'highway_service'],
    [feature = 'highway_pedestrian'],
    [feature = 'highway_raceway'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_footway'],
    [feature = 'highway_path'],
    [feature = 'highway_steps'],
    [feature = 'highway_track'],
    [feature = 'highway_bridleway'] {
      [oneway = 'yes'],
      [oneway = '-1'] {
        marker-placement: line;
        marker-spacing: 180;
        marker-max-error: 0.5;

        marker-file: url('symbols/oneway.svg');
        [oneway = '-1'] {
          marker-file: url('symbols/oneway-reverse.svg');
        }

        [feature = 'highway_motorway'],
        [feature = 'highway_motorway_link'] {
          marker-fill: @motorway-oneway-arrow-color;
        }
        [feature = 'highway_trunk'],
        [feature = 'highway_trunk_link'] {
          marker-fill: @trunk-oneway-arrow-color;
        }
        [feature = 'highway_primary'],
        [feature = 'highway_primary_link'] {
          marker-fill: @primary-oneway-arrow-color;
        }
        [feature = 'highway_secondary'],
        [feature = 'highway_secondary_link'] {
          marker-fill: @secondary-oneway-arrow-color;
        }
        [feature = 'highway_tertiary'],
        [feature = 'highway_tertiary_link'] {
          marker-fill: @tertiary-oneway-arrow-color;
        }
        [feature = 'highway_residential'],
        [feature = 'highway_unclassified'],
        [feature = 'highway_road'],
        [feature = 'highway_service'] {
          marker-fill: @residential-oneway-arrow-color;
        }
        [feature = 'highway_living_street'] {
          marker-fill: @living-street-oneway-arrow-color;
        }
        [feature = 'highway_pedestrian'] {
          marker-fill: @pedestrian-oneway-arrow-color;
        }
        [feature = 'highway_raceway'] {
          marker-fill: @raceway-oneway-arrow-color;
        }
        [feature = 'highway_footway'],
        [feature = 'highway_path'] {
          marker-fill: @footway-oneway-arrow-color;
        }
        [feature = 'highway_steps'] {
          marker-fill: @steps-oneway-arrow-color;
        }
        [feature = 'highway_cycleway'] {
          marker-fill: @cycleway-oneway-arrow-color;
        }
        [feature = 'highway_track'] {
          marker-fill: @track-oneway-arrow-color;
        }
        [feature = 'highway_bridleway'] {
          marker-fill: @bridleway-oneway-arrow-color;
        }
      }
    }
  }
} */
