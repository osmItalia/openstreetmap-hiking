/* For the main linear features, such as roads and railways. */

//road colors for major roads were generated with scripts/generate_road_colors.py
@motorway-fill: #fdbd54; // Lch(70,35,10), error 0.5
@trunk-fill: @motorway-fill; // Lch(79,33,42), error 0.7
@primary-fill: #f7fabf; // Lch(88,31,74), error 1.7
@secondary-fill: @primary-fill; // Lch(97,29,106), error 1.7
@tertiary-fill: @primary-fill;
@residential-fill: #ffffff;
@service-fill: @residential-fill;
@living-street-fill: @residential-fill;
@pedestrian-fill: #dddde8;
@raceway-fill: @residential-fill;
@road-fill: @residential-fill;
@track-fill: @residential-fill;
@aeroway-fill: #bbc;
@runway-fill: @aeroway-fill;
@taxiway-fill: @aeroway-fill;
@helipad-fill: @aeroway-fill;

@motorway-low-zoom: @motorway-fill; // Lch(62,50,10), error 0.7
@trunk-low-zoom: @motorway-fill; // Lch(72,50,42), error 0.8
@primary-low-zoom: @primary-fill; // Lch(82,50,74), error 2.1
@secondary-low-zoom: @primary-fill; // Lch(92,50,106), error 2.2

@default-casing: white;
@motorway-casing: #0dc10d; // Lch(50,70,10), error 1.1
@trunk-casing: @motorway-casing; // Lch(50,65,42), error 0.7
@primary-casing: #ffac03; // Lch(50,60,74), error 1.6
@secondary-casing: @primary-casing; // Lch(50,55,106), error 1.9
@tertiary-casing: @primary-casing;
@residential-casing: #bbb;
@road-casing: @residential-casing;
@service-casing: @residential-casing;
@living-street-casing: @residential-casing;
@track-casing: #c08000;
@pedestrian-casing: #999;


@motorway-low-zoom-casing: #c24e6b; // Lch(50,50,10), error 0.8
@trunk-low-zoom-casing: #cf6649; // Lch(56,55,42), error 0.9
@primary-low-zoom-casing: #c38a27; // Lch(62,60,74), error 2.1
@secondary-low-zoom-casing: #9eae23; // Lch(68,65,106), error 2.3

@unimportant-road: @residential-casing;

@residential-construction: #aaa;
@service-construction: #aaa;

@destination-marking: #c2e0ff;
@private-marking: #efa9a9;
@private-marking-for-red: #C26363;

@tunnel-casing: grey;
@bridge-casing: black;

@motorway-tunnel-fill: lighten(@motorway-fill, 10%);
@trunk-tunnel-fill: lighten(@trunk-fill, 10%);
@primary-tunnel-fill: lighten(@primary-fill, 10%);
@secondary-tunnel-fill: lighten(@secondary-fill, 5%);
@tertiary-tunnel-fill: lighten(@tertiary-fill, 5%);
@residential-tunnel-fill: darken(@residential-fill, 5%);
@living-street-tunnel-fill: lighten(@living-street-fill, 10%);

@motorway-width-z5:               0.4;
@trunk-width-z5:                  0.3;

@motorway-width-z7:               0.6;
@trunk-width-z7:                  0.4;

@motorway-width-z8:               0.8;
@trunk-width-z8:                  0.8;
@primary-width-z8:                0.8;

@motorway-width-z9:               1.1;
@trunk-width-z9:                  1.1;
@primary-width-z9:                1.1;
@secondary-width-z9:              0.8;

@motorway-width-z10:              1.5;
@trunk-width-z10:                 1.5;
@primary-width-z10:               1.4;
@secondary-width-z10:             1;

@motorway-width-z11:              1.8;
@trunk-width-z11:                 1.7;
@primary-width-z11:               1.6;
@secondary-width-z11:             1;

@motorway-width-z12:              2.5;
@motorway-link-width-z12:         1;
@trunk-width-z12:                 2.5;
@primary-width-z12:               2.5;
@secondary-width-z12:             2.5;
@tertiary-width-z12:              1.5;

@motorway-width-z13:              4;
@motorway-link-width-z13:         2.5;
@trunk-width-z13:                 4;
@primary-width-z13:               3;
@secondary-width-z13:             3;
@tertiary-width-z13:              2.5;
@residential-width-z13:           2;
@living-street-width-z13:         1.5;
@pedestrian-width-z13:            @living-street-width-z13;


@secondary-width-z14:             @secondary-width-z13;
@tertiary-width-z14:              @tertiary-width-z13;
@residential-width-z14:           @residential-width-z13;
@living-street-width-z14:         @living-street-width-z13;
@pedestrian-width-z14:            @living-street-width-z13;
@road-width-z14:                  @residential-width-z13;
@service-width-z14:               @living-street-width-z13;

@motorway-width-z15:             7;
@motorway-link-width-z15:         5.8;
@trunk-width-z15:                7;
@primary-width-z15:              7;
@secondary-width-z15:             6;
@tertiary-width-z15:              6;
@residential-width-z15:           4;
@living-street-width-z15:         4;
@pedestrian-width-z15:            4;


@secondary-width-z16:            6.5;
@tertiary-width-z16:             6.5;
@residential-width-z16:           5;
@living-street-width-z16:         5;
@pedestrian-width-z16:            5;
@road-width-z16:                  3.5;
@service-width-z16:               2.5;
@minor-service-width-z16:         2;


@motorway-width-z17:             12;
@motorway-link-width-z17:        8;
@trunk-width-z17:                12;
@primary-width-z17:              11;
@secondary-width-z17:            11;
@tertiary-width-z17:             11;
@residential-width-z17:          8;
@living-street-width-z17:        8;
@pedestrian-width-z17:           8;
@road-width-z17:                 6;
@service-width-z17:              5;
@minor-service-width-z17:        2.5;

@motorway-width-z18:             16;
@motorway-link-width-z18:        11;
@trunk-width-z18:                16;
@primary-width-z18:              15;
@secondary-width-z18:            15;
@tertiary-width-z18:             14;
@residential-width-z18:          11;
@living-street-width-z18:        11;
@pedestrian-width-z18:           11;
@road-width-z18:                  9;
@service-width-z18:               7;
@minor-service-width-z18:         4;

@motorway-width-z19:             22;
@motorway-link-width-z19:        15;
@trunk-width-z19:                22;
@primary-width-z19:              21;
@secondary-width-z19:            21;
@tertiary-width-z19:             20;
@residential-width-z19:          16;
@living-street-width-z19:        16;
@pedestrian-width-z19:           16;
@road-width-z19:                 11;
@service-width-z19:              9;
@minor-service-width-z19:        6;


@major-casing-width-z11:          0.3;

@casing-width-z12:                0.1;
@secondary-casing-width-z12:      0.3;
@major-casing-width-z12:          0.5;

@casing-width-z13:                0.5;
@residential-casing-width-z13:    0.5;
@secondary-casing-width-z13:      0.35;
@major-casing-width-z13:          0.5;

@casing-width-z14:                0.5;
@secondary-casing-width-z14:      0.35;
@major-casing-width-z14:          0.5;

@casing-width-z15:                0.6;
@secondary-casing-width-z15:      0.7;
@major-casing-width-z15:          0.7;

@casing-width-z16:                0.6;
@secondary-casing-width-z16:      0.7;
@major-casing-width-z16:          0.7;

@casing-width-z17:                0.8;
@secondary-casing-width-z17:      1;
@major-casing-width-z17:          1;

@casing-width-z18:                0.8;
@secondary-casing-width-z18:      1;
@major-casing-width-z18:          1;

@casing-width-z19:                0.8;
@secondary-casing-width-z19:      1;
@major-casing-width-z19:          1;

@bridge-casing-width-z12:         0.1;
@major-bridge-casing-width-z12:   0.5;
@bridge-casing-width-z13:         0.5;
@major-bridge-casing-width-z13:   0.5;
@bridge-casing-width-z14:         0.5;
@major-bridge-casing-width-z14:   0.6;
@bridge-casing-width-z15:         0.75;
@major-bridge-casing-width-z15:   0.75;
@bridge-casing-width-z16:         0.75;
@major-bridge-casing-width-z16:   0.75;
@bridge-casing-width-z17:         0.8;
@major-bridge-casing-width-z17:   1;
@bridge-casing-width-z18:         0.8;
@major-bridge-casing-width-z18:   1;
@bridge-casing-width-z19:         0.8;
@major-bridge-casing-width-z19:   1;

@junction-text-color:             #960000;
@halo-color-for-minor-road: white;

@shield-size: 9;
@shield-size-z16: 10;
@shield-size-z18: 11;
@shield-spacing: 760;
@shield-min-distance: 40;
@shield-font: @book-fonts;
@shield-clip: false;

@shield-motorway-fill: #620728; // Lch(20,40,10), error 0.5
@shield-trunk-fill: #5d1b0b; // Lch(21,40,42), error 0.5
@shield-primary-fill: #4c2e00; // Lch(22,40,74), error 2.9
@shield-secondary-fill: #323b00; // Lch(23,40,106), error 3.4
@shield-tertiary-fill: #3b3b3b; // Lch(25,0,0), error 0.1

.roads-casing, .bridges-casing, .tunnels-casing {
  ::casing {
    [zoom = 9][feature = 'highway_secondary'] {
      line-color: @halo-color-for-minor-road;
      line-width: 2.2;
      line-opacity: 0.4;
      line-join: round;
      //Missing line-cap: round; is intentional. It would cause rendering glow multiple times in some places - what as result of partial transparency would cause differences in rendering
      //Also, bridges - including bridge casings - are rendered on top of roads. Enabling line-cap: round would result in glow from bridges rendered on top of road around bridges.
    }
    [zoom = 10][feature = 'highway_secondary'],
    [zoom = 11][feature = 'highway_secondary'] {
      line-color: @halo-color-for-minor-road;
      line-width: 2.7;
      line-opacity: 0.4;
      line-join: round;
      //Missing line-cap: round; is intentional. It would cause rendering glow multiple times in some places - what as result of partial transparency would cause differences in rendering
      //Also, bridges - including bridge casings - are rendered on top of roads. Enabling line-cap: round would result in glow from bridges rendered on top of road around bridges.
    }
    [zoom = 10][feature = 'highway_tertiary'],
    [zoom = 11][feature = 'highway_tertiary'],
    [zoom = 12][feature = 'highway_unclassified'] {
      line-color: @halo-color-for-minor-road;
      line-width: 2.2;
      line-opacity: 0.3;
      line-join: round;
      //Missing line-cap: round; is intentional. It would cause rendering glow multiple times in some places - what as result of partial transparency would cause differences in rendering
      //Also, bridges - including bridge casings are rendered on top of roads. Enabling line-cap: round would result in glow from bridges rendered on top of road around bridges.
    }

    [zoom >= 12] {
      [feature = 'highway_motorway'] {
        line-width: @motorway-width-z12;
        [zoom >= 13] { line-width: @motorway-width-z13; }
        [zoom >= 15] { line-width: @motorway-width-z15; }
        [zoom >= 17] { line-width: @motorway-width-z17; }
        [zoom >= 18] { line-width: @motorway-width-z18; }
        [zoom >= 19] { line-width: @motorway-width-z19; }
        [link = 'yes'] {
          line-width: @motorway-link-width-z12;
          [zoom >= 13] { line-width: @motorway-link-width-z13; }
          [zoom >= 15] { line-width: @motorway-link-width-z15; }
          [zoom >= 17] { line-width: @motorway-link-width-z17; }
          [zoom >= 18] { line-width: @motorway-link-width-z18; }
          [zoom >= 19] { line-width: @motorway-link-width-z19; }
        }
        line-color: @motorway-low-zoom-casing;
        [zoom >= 13] {
          line-color: @motorway-casing;
        }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_trunk'] {
      [zoom >= 12] {
        line-color: @trunk-low-zoom-casing;
        [zoom >= 13] {
          line-color: @trunk-casing;
        }
        line-width: @trunk-width-z12;
        [zoom >= 13] { line-width: @trunk-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17; }
        [zoom >= 18] { line-width: @trunk-width-z18; }
        [zoom >= 19] { line-width: @trunk-width-z19; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_primary'] {
      [zoom >= 12] {
        line-color: @primary-low-zoom-casing;
        [zoom >= 13] {
          line-color: @primary-casing;
        }
        line-width: @primary-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17; }
        [zoom >= 18] { line-width: @primary-width-z18; }
        [zoom >= 19] { line-width: @primary-width-z19; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_secondary'] {
      [zoom >= 12] {
        line-color: @secondary-low-zoom-casing;
        [zoom >= 13] {
          line-color: @secondary-casing;
        }
        line-width: @secondary-width-z12;
        [zoom >= 13] { line-width: @secondary-width-z13; }
        [zoom >= 14] { line-width: @secondary-width-z14; }
        [zoom >= 15] { line-width: @secondary-width-z15; }
        [zoom >= 16] { line-width: @secondary-width-z16; }
        [zoom >= 17] { line-width: @secondary-width-z17; }
        [zoom >= 18] { line-width: @secondary-width-z18; }
        [zoom >= 19] { line-width: @secondary-width-z19; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 13] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_tertiary'] {
      [zoom >= 12] {
        line-color: @tertiary-casing;
        line-width: @tertiary-width-z12;
        [zoom >= 13] { line-width: @tertiary-width-z13; }
        [zoom >= 14] { line-width: @tertiary-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15; }
        [zoom >= 16] { line-width: @tertiary-width-z16; }
        [zoom >= 17] { line-width: @tertiary-width-z17; }
        [zoom >= 18] { line-width: @tertiary-width-z18; }
        [zoom >= 19] { line-width: @tertiary-width-z19; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [zoom >= 13] {
        line-color: @residential-casing;
        line-width: @residential-width-z13;
        [zoom >= 14] { line-width: @residential-width-z14; }
        [zoom >= 15] { line-width: @residential-width-z15; }
        [zoom >= 16] { line-width: @residential-width-z16; }
        [zoom >= 17] { line-width: @residential-width-z17; }
        [zoom >= 18] { line-width: @residential-width-z18; }
        [zoom >= 19] { line-width: @residential-width-z19; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_road'] {
      [zoom >= 14] {
        line-color: @road-casing;
        line-width: @road-width-z14;
        [zoom >= 16] { line-width: @road-width-z16; }
        [zoom >= 17] { line-width: @road-width-z17; }
        [zoom >= 18] { line-width: @road-width-z18; }
        [zoom >= 19] { line-width: @road-width-z19; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_service'] {
      [zoom >= 14][service = 'INT-normal'],
      [zoom >= 16][service = 'INT-minor'] {
        line-color: @service-casing;
        [service = 'INT-normal'] {
          line-width: @service-width-z14;
          [zoom >= 16] { line-width: @service-width-z16; }
          [zoom >= 17] { line-width: @service-width-z17; }
          [zoom >= 18] { line-width: @service-width-z18; }
          [zoom >= 19] { line-width: @service-width-z19; }
        }
        [service = 'INT-minor'] {
          line-width: @minor-service-width-z16;
          [zoom >= 17] { line-width: @minor-service-width-z17; }
          [zoom >= 18] { line-width: @minor-service-width-z18; }
          [zoom >= 19] { line-width: @minor-service-width-z19; }
        }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-color: @pedestrian-casing;
        line-width: @pedestrian-width-z13;
        [zoom >= 14] { line-width: @pedestrian-width-z14; }
        [zoom >= 15] { line-width: @pedestrian-width-z15; }
        [zoom >= 16] { line-width: @pedestrian-width-z16; }
        [zoom >= 17] { line-width: @pedestrian-width-z17; }
        [zoom >= 18] { line-width: @pedestrian-width-z18; }
        [zoom >= 19] { line-width: @pedestrian-width-z19; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_living_street'] {
      [zoom >= 13] {
        line-color: @living-street-casing;
        line-width: @living-street-width-z13;
        [zoom >= 14] { line-width: @living-street-width-z14; }
        [zoom >= 15] { line-width: @living-street-width-z15; }
        [zoom >= 16] { line-width: @living-street-width-z16; }
        [zoom >= 17] { line-width: @living-street-width-z17; }
        [zoom >= 18] { line-width: @living-street-width-z18; }
        [zoom >= 19] { line-width: @living-street-width-z19; }
        .roads-casing {
          line-cap: round;
          line-join: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_track'] {
      [zoom >= 13] {
        line-color: @track-casing;
        line-width: @living-street-width-z13;
        [zoom >= 14] { line-width: @living-street-width-z14; }
        [zoom >= 15] { line-width: @living-street-width-z15; }
        [zoom >= 16] { line-width: @living-street-width-z16; }
        [zoom >= 17] { line-width: @living-street-width-z17; }
        [zoom >= 18] { line-width: @living-street-width-z18; }
        [zoom >= 19] { line-width: @living-street-width-z19; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    /*[feature = 'highway_track'] {
      /* We don't set opacity here, so it's 1.0. Aside from that, it's basically a copy of roads-fill::background in the track part of ::fill */
    /*  .bridges-casing {
        [zoom >= 13][access != 'no'] {
          line-color: @track-casing;
          line-join: round;
          line-width: @track-width-z13 + 2 * @paths-background-width;
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * @paths-background-width;
          }
        }
        [zoom >= 15] {
          line-width: @track-width-z15 + 2 * @paths-background-width;
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z15 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z15 + 2 * @paths-background-width;
          }
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @track-casing;
          line-join: round;
          line-cap: round;
          line-width: @track-width-z13 + 2 * @paths-background-width;
          /* With the heavier dasharrays on grade1 and grade2 it helps to make the casing a bit larger */
        /*  [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * @paths-background-width;
          }

          [zoom >= 15] {
            line-width: @track-width-z15 + 2 * @paths-background-width;
            [tracktype = 'grade1'] {
              line-width: @track-grade1-width-z15 + 2 * @paths-background-width;
            }
            [tracktype = 'grade2'] {
              line-width: @track-grade2-width-z15 + 2 * @paths-background-width;
            }
          }
        }
      }
    }*/

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 4;
          [zoom >= 15] {
            line-width: 5;
          }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_subway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_rail'],
    [feature = 'railway_preserved'],
    [feature = 'railway_monorail'][zoom >= 14] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 6.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 5.7;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'][zoom >= 15],
    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 6;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'aeroway_runway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 13;
          [zoom >= 15] { line-width: 19; }
          [zoom >= 16] { line-width: 25; }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'aeroway_taxiway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 5;
          line-color: @bridge-casing;
          line-join: round;
          [zoom >= 15] { line-width: 7; }
        }
      }
    }
  }

  ::bridges_and_tunnels_background {
    [feature = 'railway_rail'][zoom >= 13],
    [feature = 'railway_preserved'][zoom >= 13],
    [feature = 'railway_monorail'][zoom >= 14] {
      .bridges-casing {
        line-width: 5;
        line-color: white;
        line-join: round;
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'][zoom >= 15],
    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 4.5;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 3;
          [zoom >= 15] {
            line-width: 4;
          }
          line-color: white;
        }
      }
    }

    [feature = 'railway_subway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }
  }
}

/* Data on z<10 comes from osm_planet_roads, data on z>=10 comes from
osm_planet_line. This is for performance reasons: osm_planet_roads contains less
data, and is thus faster. Chosen is for zoom level 10 as cut-off, because
tertiary is rendered from z10 and is not included in osm_planet_roads. */

#roads-low-zoom[zoom < 10],
.roads-fill[zoom >= 10],
.bridges-fill[zoom >= 10],
.tunnels-fill[zoom >= 10] {
  ::fill {
    /*
     * The construction rules for small roads are strange, since if construction is null its assumed that
     * it's a more major road. The line-width = 0 could be removed by playing with the query to set a construction
     * string for non-small roads.
     *
     * Also note that these rules are quite sensitive to re-ordering, since the instances end up swapping round
     * (and then the dashes appear below the fills). See
     * https://github.com/gravitystorm/openstreetmap-carto/issues/23
     * https://github.com/mapbox/carto/issues/235
     * https://github.com/mapbox/carto/issues/237
     */
    [feature = 'highway_construction'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #9cc;

        [construction = 'motorway'],
        [construction = 'motorway_link'] {
          line-color: @motorway-fill;
        }
        [construction = 'trunk'],
        [construction = 'trunk_link'] {
          line-color: @trunk-fill;
        }
        [construction = 'primary'],
        [construction = 'primary_link'] {
          line-color: @primary-fill;
        }
        [construction = 'secondary'],
        [construction = 'secondary_link'] {
          line-color: @secondary-fill;
        }
        [construction = 'tertiary'],
        [construction = 'tertiary_link'],
        [construction = 'residential'],
        [construction = 'unclassified'],
        [construction = 'living_street'] {
          line-color: @residential-construction;
          [zoom < 13] {
            line-width: 0;
            b/line-width: 0;
          }
          [zoom >= 13][zoom < 14] {
            line-width: 3;
            b/line-width: 2;
            b/line-dasharray: 5,3;
          }
        }
        [construction = 'service'] {
          line-color: @service-construction;
          [zoom < 14] {
            line-width: 0;
            b/line-width: 0;
          }
        }
        b/line-width: 2;
        b/line-dasharray: 4,2;
        b/line-color: white;
        [zoom >= 13] {
          line-width: 4;
          b/line-width: 3.5;
          b/line-dasharray: 6,4;
        }
        [zoom >= 16] {
          line-width: 8;
          b/line-width: 7;
          b/line-dasharray: 8,6;
        }
        /* [construction = 'footway'],
        [construction = 'cycleway'],
        [construction = 'bridleway'],
        [construction = 'path'],
        [construction = 'track'] {
          [zoom < 14] {
            line-width: 0;
            b/line-width: 0;
          }
          line-color: white;
          line-width: 3;
          line-opacity: 0.4;
          b/line-width: 1.2;
          b/line-color: #69f;
          b/line-dasharray: 2,6;
        } */
      }
    }

    [feature = 'highway_motorway'] {
      [zoom >= 5] {
        line-color: @motorway-low-zoom;
        line-width: @motorway-width-z5;
      }
      [zoom >= 7] { line-width: @motorway-width-z7; }
      [zoom >= 8] { line-width: @motorway-width-z8; }
      [zoom >= 9] { line-width: @motorway-width-z9; }
      [zoom >= 10] { line-width: @motorway-width-z10; }
      [zoom >= 11] { line-width: @motorway-width-z11; }
      [zoom >= 12] {
        line-color: @motorway-fill;
        line-width: @motorway-width-z12 - 2 * @major-casing-width-z12;
        [zoom >= 13] { line-width: @motorway-width-z13 - 2 * @major-casing-width-z13; }
        [zoom >= 15] { line-width: @motorway-width-z15 - 2 * @major-casing-width-z15; }
        [zoom >= 17] { line-width: @motorway-width-z17 - 2 * @major-casing-width-z17; }
        [zoom >= 18] { line-width: @motorway-width-z18 - 2 * @major-casing-width-z18; }
        [zoom >= 19] { line-width: @motorway-width-z19 - 2 * @major-casing-width-z19; }
        [link = 'yes'] {
          line-width: @motorway-link-width-z12 - 2 * @casing-width-z12;
          [zoom >= 13] { line-width: @motorway-link-width-z13 - 2 * @casing-width-z13; }
          [zoom >= 15] { line-width: @motorway-link-width-z15 - 2 * @casing-width-z15; }
          [zoom >= 17] { line-width: @motorway-link-width-z17 - 2 * @casing-width-z17; }
          [zoom >= 18] { line-width: @motorway-link-width-z18 - 2 * @casing-width-z18; }
          [zoom >= 19] { line-width: @motorway-link-width-z19 - 2 * @casing-width-z19; }
        }
        .tunnels-fill {
          line-color: @motorway-tunnel-fill;
        }
        .bridges-fill {
          line-width: @motorway-width-z12 - 2 * @major-bridge-casing-width-z12;
          [zoom >= 13] { line-width: @motorway-width-z13 - 2 * @major-bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @motorway-width-z15 - 2 * @major-bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @motorway-width-z17 - 2 * @major-bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @motorway-width-z18 - 2 * @major-bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @motorway-width-z19 - 2 * @major-bridge-casing-width-z19; }
          [link = 'yes'] {
            line-width: @motorway-link-width-z12 - 2 * @bridge-casing-width-z12;
            [zoom >= 13] { line-width: @motorway-link-width-z13 - 2 * @bridge-casing-width-z13; }
            [zoom >= 15] { line-width: @motorway-link-width-z15 - 2 * @bridge-casing-width-z15; }
            [zoom >= 17] { line-width: @motorway-link-width-z17 - 2 * @bridge-casing-width-z17; }
            [zoom >= 18] { line-width: @motorway-link-width-z18 - 2 * @bridge-casing-width-z18; }
            [zoom >= 19] { line-width: @motorway-link-width-z19 - 2 * @bridge-casing-width-z19; }
          }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_trunk'] {
      [zoom >= 5] {
        line-width: @trunk-width-z5;
        line-color: @trunk-low-zoom;
      }
      [zoom >= 7] { line-width: @trunk-width-z7; }
      [zoom >= 8] { line-width: @trunk-width-z8; }
      [zoom >= 9] { line-width: @trunk-width-z9; }
      [zoom >= 10] { line-width: @trunk-width-z10; }
      [zoom >= 11] { line-width: @trunk-width-z11; }
      [zoom >= 12] {
        line-color: @trunk-fill;
        line-width: @trunk-width-z12 - 2 * @major-casing-width-z12;
        [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @major-casing-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @major-casing-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @major-casing-width-z17; }
        [zoom >= 18] { line-width: @trunk-width-z18 - 2 * @major-casing-width-z18; }
        [zoom >= 19] { line-width: @trunk-width-z19 - 2 * @major-casing-width-z19; }
        .tunnels-fill {
          line-color: @trunk-tunnel-fill;
        }
        .bridges-fill {
          line-width: @trunk-width-z12 - 2 * @major-bridge-casing-width-z12;
          [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @major-bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @major-bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @major-bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @trunk-width-z18 - 2 * @major-bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @trunk-width-z19 - 2 * @major-bridge-casing-width-z19; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_primary'] {
      [zoom >= 8] {
        line-width: @primary-width-z8;
        line-color: @primary-low-zoom;
      }
      [zoom >= 9] { line-width: @primary-width-z9; }
      [zoom >= 10] { line-width: @primary-width-z10; }
      [zoom >= 11] { line-width: @primary-width-z11; }
      [zoom >= 12] {
        line-color: @primary-fill;
        line-width: @primary-width-z12 - 2 * @major-casing-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13 - 2 * @major-casing-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15 - 2 * @major-casing-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17 - 2 * @major-casing-width-z17; }
        [zoom >= 18] { line-width: @primary-width-z18 - 2 * @major-casing-width-z18; }
        [zoom >= 19] { line-width: @primary-width-z19 - 2 * @major-casing-width-z19; }
        .tunnels-fill {
          line-color: @primary-tunnel-fill;
        }
        .bridges-fill {
          line-width: @primary-width-z12 - 2 * @major-bridge-casing-width-z12;
          [zoom >= 13] { line-width: @primary-width-z13 - 2 * @major-bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @primary-width-z15 - 2 * @major-bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @primary-width-z17 - 2 * @major-bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @primary-width-z18 - 2 * @major-bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @primary-width-z19 - 2 * @major-bridge-casing-width-z19; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_secondary'] {
      [zoom >= 9] {
        line-color: @unimportant-road;
        line-width: @secondary-width-z9;
      }
      [zoom >=10] {
        line-color: @unimportant-road;
        line-width: @secondary-width-z10;
      }
      [zoom >= 11] { line-width: @secondary-width-z11; }
      [zoom >= 12] {
        line-color: @secondary-fill;
        line-width: @secondary-width-z12 - 2 * @secondary-casing-width-z12;
        line-cap: round;
        line-join: round;
        [zoom >= 13] {
          [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @secondary-casing-width-z13; }
          [zoom >= 14] { line-width: @secondary-width-z14 - 2 * @secondary-casing-width-z14; }
          [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @secondary-casing-width-z15; }
          [zoom >= 16] { line-width: @secondary-width-z16 - 2 * @secondary-casing-width-z16; }
          [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @secondary-casing-width-z17; }
          [zoom >= 18] { line-width: @secondary-width-z18 - 2 * @secondary-casing-width-z18; }
          [zoom >= 19] { line-width: @secondary-width-z19 - 2 * @secondary-casing-width-z19; }
          .tunnels-fill {
            line-color: @secondary-tunnel-fill;
          }
          .bridges-fill {
            line-width: @secondary-width-z12 - 2 * @bridge-casing-width-z12;
            [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @major-bridge-casing-width-z13; }
            [zoom >= 14] { line-width: @secondary-width-z14 - 2 * @major-bridge-casing-width-z14; }
            [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @major-bridge-casing-width-z15; }
            [zoom >= 16] { line-width: @secondary-width-z16 - 2 * @major-bridge-casing-width-z16; }
            [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @major-bridge-casing-width-z17; }
            [zoom >= 18] { line-width: @secondary-width-z18 - 2 * @major-bridge-casing-width-z18; }
            [zoom >= 19] { line-width: @secondary-width-z19 - 2 * @major-bridge-casing-width-z19; }
          }
        }
      }
    }

    [feature = 'highway_tertiary'] {
      [zoom >= 10] {
        line-color: @unimportant-road;
        line-width: 0.55;
      }
      [zoom >= 12] {
        line-color: @tertiary-fill;
        line-width: @tertiary-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @tertiary-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @tertiary-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @tertiary-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @tertiary-width-z19 - 2 * @casing-width-z19; }
        .tunnels-fill {
          line-color: @tertiary-tunnel-fill;
        }
        .bridges-fill {
          line-width: @tertiary-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @tertiary-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @tertiary-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @tertiary-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @tertiary-width-z19 - 2 * @bridge-casing-width-z19; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [zoom = 12][feature = 'highway_residential'] {
        line-color: @unimportant-road;
        line-width: 0.4;
      }
      [zoom = 12][feature = 'highway_unclassified'] {
        line-color: @unimportant-road;
        line-width: 1;
      }
      [zoom >= 13] {
        line-width: @residential-width-z13 - 2 * @residential-casing-width-z13;
        [zoom >= 14] { line-width: @residential-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @residential-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @residential-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @residential-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @residential-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @residential-width-z19 - 2 * @casing-width-z19; }
        .roads-fill, .bridges-fill {
          line-color: @residential-fill;
        }
        .tunnels-fill {
          line-color: @residential-tunnel-fill;
        }
        .bridges-fill {
          line-width: @residential-width-z13 - 2 * @bridge-casing-width-z13;
          [zoom >= 14] { line-width: @residential-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @residential-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @residential-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @residential-width-z17 - 2 * @bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @residential-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @residential-width-z19 - 2 * @bridge-casing-width-z19; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_living_street'] {
      [zoom >= 13] {
        line-width: @living-street-width-z13 - 2 * @casing-width-z13;
        [zoom >= 14] { line-width: @living-street-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @living-street-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @living-street-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @living-street-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @living-street-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @living-street-width-z19 - 2 * @casing-width-z19; }
        .roads-fill, .bridges-fill {
          line-color: @living-street-fill;
        }
        .tunnels-fill {
          line-color: @living-street-tunnel-fill;
        }
        .bridges-fill {
          line-width: @living-street-width-z13 - 2 * @casing-width-z13;
          [zoom >= 14] { line-width: @living-street-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @living-street-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @living-street-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @living-street-width-z17 - 2 * @bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @living-street-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @living-street-width-z19 - 2 * @bridge-casing-width-z19; }
        }
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_road'] {
      [zoom >= 10] {
        line-width: 1;
        line-color: @unimportant-road;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 14] {
        line-width: @road-width-z14 - 2 * @casing-width-z14;
        [zoom >= 16] { line-width: @road-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @road-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @road-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @road-width-z19 - 2 * @casing-width-z19; }
        .roads-fill {
          line-color: @road-fill;
        }
        .bridges-fill {
          line-width: @road-width-z14 - 2 * @bridge-casing-width-z14;
          [zoom >= 16] { line-width: @road-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @road-width-z17 - 2 * @bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @road-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @road-width-z19 - 2 * @bridge-casing-width-z19; }
          line-color: @road-fill;
        }
        .tunnels-fill {
          line-color: @road-fill;
        }
      }
    }

    [feature = 'highway_service'] {
      [zoom >= 13][service = 'INT-normal'] {
        line-width: 1;
        line-color: @unimportant-road;
      }
      [zoom >= 14][service = 'INT-normal'],
      [zoom >= 16][service = 'INT-minor'] {
        line-color: @service-fill;
        [service = 'INT-normal'] {
          line-width: @service-width-z14 - 2 * @casing-width-z14;
          [zoom >= 16] { line-width: @service-width-z16 - 2 * @casing-width-z16; }
          [zoom >= 17] { line-width: @service-width-z17 - 2 * @casing-width-z17; }
          [zoom >= 18] { line-width: @service-width-z18 - 2 * @casing-width-z18; }
          [zoom >= 19] { line-width: @service-width-z19 - 2 * @casing-width-z19; }
        }
        [service = 'INT-minor'] {
          line-width: @minor-service-width-z16 - 2 * @casing-width-z16;
          [zoom >= 17] { line-width: @minor-service-width-z17 - 2 * @casing-width-z17; }
          [zoom >= 18] { line-width: @minor-service-width-z18 - 2 * @casing-width-z18; }
          [zoom >= 19] { line-width: @minor-service-width-z19 - 2 * @casing-width-z19; }
        }
        line-join: round;
        line-cap: round;
        .tunnels-fill {
          line-color: darken(white, 5%);
        }
        .bridges-fill {
          [service = 'INT-normal'] {
            line-width: @service-width-z14 - 2 * @bridge-casing-width-z14;
            [zoom >= 16] { line-width: @service-width-z16 - 2 * @bridge-casing-width-z16; }
            [zoom >= 17] { line-width: @service-width-z17 - 2 * @bridge-casing-width-z17; }
            [zoom >= 18] { line-width: @service-width-z18 - 2 * @bridge-casing-width-z18; }
            [zoom >= 19] { line-width: @service-width-z19 - 2 * @bridge-casing-width-z19; }
          }
          [service = 'INT-minor'] {
            line-width: @minor-service-width-z16 - 2 * @bridge-casing-width-z16;
            [zoom >= 17] { line-width: @minor-service-width-z17 - 2 * @bridge-casing-width-z17; }
            [zoom >= 18] { line-width: @minor-service-width-z18 - 2 * @bridge-casing-width-z18; }
            [zoom >= 19] { line-width: @minor-service-width-z19 - 2 * @bridge-casing-width-z19; }
          }
        }
      }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-width: @living-street-width-z13 - 2 * @casing-width-z13;
        [zoom >= 14] { line-width: @pedestrian-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @pedestrian-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @pedestrian-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @pedestrian-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @pedestrian-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @pedestrian-width-z19 - 2 * @casing-width-z19; }
        line-color: @pedestrian-fill;
        .bridges-fill {
          line-width: @pedestrian-width-z13 - 2 * @casing-width-z13;
          [zoom >= 14] { line-width: @pedestrian-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @pedestrian-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @pedestrian-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @pedestrian-width-z17 - 2 * @bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @pedestrian-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @pedestrian-width-z19 - 2 * @bridge-casing-width-z19; }
        }
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_track'] {
      [zoom >= 13] {
        line-width: @living-street-width-z13 - 2 * @residential-casing-width-z13;
        [zoom >= 14] { line-width: @living-street-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @living-street-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @living-street-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @living-street-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @living-street-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @living-street-width-z19 - 2 * @casing-width-z19; }
        .roads-fill, .bridges-fill {
          line-color: @living-street-fill;
        }
        .tunnels-fill {
          line-color: @living-street-tunnel-fill;
        }
        .bridges-fill {
          line-width: @living-street-width-z13 - 2 * @bridge-casing-width-z13;
          [zoom >= 14] { line-width: @living-street-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @living-street-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @living-street-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @living-street-width-z17 - 2 * @bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @living-street-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @living-street-width-z19 - 2 * @bridge-casing-width-z19; }
        }
        line-cap: round;
        line-join: round;
        [tracktype = 'grade3'],
        [tracktype = 'grade4'],
        [tracktype = 'grade5']{
            line/line-color: @track-casing;
            line/line-dasharray: 0.5,2;
        }
      }
    }

    /*[feature = 'highway_track'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        /* The white casing that you mainly see against forests and other dark features */
    /*    .roads-fill[zoom >= 15] {
          background/line-opacity: 0.4;
          background/line-color: @track-casing;
          background/line-join: round;
          background/line-cap: round;
          background/line-width: @track-width-z15 + 2 * @paths-background-width;
          /* With the heavier dasharrays on grade1 and grade2 it helps to make the casing a bit larger */
     /*     [tracktype = 'grade1'] {
            background/line-width: @track-grade1-width-z15 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            background/line-width: @track-grade2-width-z15 + 2 * @paths-background-width;
          }
        }

        /* Set the properties of the brown inside */
    /*    line/line-color: @track-fill;
        line/line-dasharray: 5,4,2,4;
        line/line-cap: round;
        line/line-join: round;
        line/line-opacity: 0.8;
        line/line-clip:false;

        line/line-width: @track-width-z13;

        [tracktype = 'grade1'] {
          line/line-dasharray: 100,0;
        }
        [tracktype = 'grade2'] {
          line/line-dasharray: 8.8,3.2;
        }
        [tracktype = 'grade3'] {
          line/line-dasharray: 5.6,4.0;
        }
        [tracktype = 'grade4'] {
          line/line-dasharray: 3.2,4.8;
        }
        [tracktype = 'grade5'] {
          line/line-dasharray: 1.6,6.4;
        }

        [zoom >= 15] {
          line/line-width: @track-width-z15;
          [tracktype = 'grade1'] {
            line/line-dasharray: 100,0;
          }
          [tracktype = 'grade2'] {
            line/line-dasharray: 11,4;
          }
          [tracktype = 'grade3'] {
            line/line-dasharray: 7,5;
          }
          [tracktype = 'grade4'] {
            line/line-dasharray: 4,6;
          }
          [tracktype = 'grade5'] {
            line/line-dasharray: 2,8;
          }
        }
      }
    }*/

    [feature = 'highway_raceway'] {
      [zoom >= 12] {
        line-color: @raceway-fill;
        line-width: 1.2;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 13] { line-width: 2; }
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 6; }
      [zoom >= 18] { line-width: 8; }
      [zoom >= 19] { line-width: 12; }
      [zoom >= 20] { line-width: 24; }
    }

    [feature = 'highway_platform'] {
      [zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: grey;
        line-cap: round;
        b/line-width: 4;
        b/line-color: #bbbbbb;
        b/line-cap: round;
        b/line-join: round;
      }
    }

    [feature = 'railway_rail'][zoom >= 7],
    [feature = 'railway_INT-spur-siding-yard'][zoom >= 13] {
      [zoom < 13] {
        line-color: #787878;
        line-width: 0.5;
        [zoom >= 8] { line-width: 0.8; }
        [zoom >= 12] { line-width: 0.9; }
        line-join: round;
        .roads_low_zoom[int_tunnel = 'yes'], .tunnels-fill {
          line-dasharray: 5,2;
        }
      }
      [zoom >= 13] {
        .roads-fill, .bridges-fill {
          dark/line-join: round;
          light/line-color: white;
          light/line-join: round;
          [feature = 'railway_rail'] {
            dark/line-color: #787878;
            dark/line-width: 3;
            light/line-width: 1;
            light/line-dasharray: 8,8;
            [zoom >= 15] {
              light/line-dasharray: 0,8,8,1;
            }
            [zoom >= 19] {
              dark/line-width: 4;
              light/line-width: 2;
            }
          }
          [feature = 'railway_INT-spur-siding-yard'] {
            dark/line-width: 2;
            dark/line-color: #aaa;
            light/line-width: 0.8;
            light/line-dasharray: 0,8,8,1;
          }
        }
        .tunnels-fill {
          line-color: #787878;
          line-width: 2.8;
          line-dasharray: 6,4;
          line-clip: false;
          [feature = 'railway_INT-spur-siding-yard'] {
            line-color: #aaa;
            line-width: 1.9;
            line-dasharray: 3,3;
          }
          [feature = 'railway_rail'][zoom >= 19] {
            line-dasharray: 8,6;
            line-width: 3.8;
          }
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [zoom >= 8] {
        line-color: #ccc;
        [zoom >= 10] { line-color: #aaa; }
        [zoom >= 13] { line-color: #666; }
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
        .tunnels-fill {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_miniature'] {
      [zoom >= 15] {
        line/line-width: 1.2;
        line/line-color: #999;
        dashes/line-width: 3;
        dashes/line-color: #999;
        dashes/line-dasharray: 1,10;
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      [zoom >= 12] {
        line-color: #6E6E6E;
        line-width: 0.75;
        [zoom >= 13] {
          line-color: #444;
        }
        [zoom >= 14] {
          line-width: 1;
        }
        [zoom >= 15] {
          line-width: 1.5;
          [feature = 'railway_tram-service'] {
            line-width: 0.5;
          }
        }
        [zoom >= 17] {
          line-width: 2;
          [feature = 'railway_tram-service'] {
            line-width: 1;
          }
        }
        [zoom >= 18] {
          [feature = 'railway_tram-service'] {
            line-width: 1.5;
          }
        }
        [zoom >= 19] {
          [feature = 'railway_tram-service'] {
            line-width: 2;
          }
        }
        .tunnels-fill {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_subway'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #999;
        .tunnels-fill {
          line-dasharray: 5,3;
        }
      }
      .bridges-fill {
        [zoom >= 14] {
          line-width: 2;
          line-color: #999;
        }
      }
    }

    [feature = 'railway_preserved'] {
      [zoom >= 12] {
        dark/line-width: 1.5;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 3;
          dark/line-color: #999999;
          light/line-width: 1;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_INT-preserved-ssy'] {
      [zoom >= 12] {
        dark/line-width: 1;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 2;
          dark/line-color: #999999;
          light/line-width: 0.8;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_monorail'] {
      [zoom >= 14] {
        background/line-width: 4;
        background/line-color: #fff;
        background/line-opacity: 0.4;
        background/line-cap: round;
        background/line-join: round;
        line/line-width: 3;
        line/line-color: #777;
        line/line-dasharray: 2,3;
        line/line-cap: round;
        line/line-join: round;
      }
    }

    [feature = 'railway_construction'] {
      [zoom >= 13] {
        line-color: grey;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
        [zoom >= 14] {
          line-dasharray: 2,3;
        }
        [zoom >= 15] {
          line-width: 3;
          line-dasharray: 3,3;
        }
      }
    }

    [feature = 'railway_disused'] {
      [zoom >= 15] {
        line-color: #aaa;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
      }
    }

    [feature = 'railway_platform'] {
      [zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: grey;
        line-cap: round;
        b/line-width: 4;
        b/line-color: #bbbbbb;
        b/line-cap: round;
        b/line-join: round;
      }
    }

    [feature = 'railway_turntable'] {
      [zoom >= 16] {
        line-width: 1.5;
        line-color: #999;
      }
    }

    [feature = 'aeroway_runway'] {
      [zoom >= 11] {
        line-color: @runway-fill;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 12; }
        [zoom >= 15] { line-width: 18; }
        [zoom >= 16] { line-width: 24; }
      }
    }

    [feature = 'aeroway_taxiway'] {
      [zoom >= 11] {
        line-color: @taxiway-fill;
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
        [zoom >= 14] { line-width: 4; }
        [zoom >= 15] { line-width: 6; }
        [zoom >= 16] { line-width: 8; }
      }
    }
  }
}

#turning-circle-casing {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    marker-fill: @tertiary-casing;
    marker-width: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
    marker-height: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
    [zoom >= 16] {
      marker-width: (@tertiary-width-z16 - 2 * @casing-width-z16) * 1.8 + 2 * @casing-width-z16;
      marker-height: (@tertiary-width-z16 - 2 * @casing-width-z16) * 1.8 + 2 * @casing-width-z16;
    }
    [zoom >= 17] {
      marker-width: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
      marker-height: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
    }
    [zoom >= 18] {
      marker-width: (@tertiary-width-z18 - 2 * @casing-width-z18) * 1.8 + 2 * @casing-width-z18;
      marker-height: (@tertiary-width-z18 - 2 * @casing-width-z18) * 1.8 + 2 * @casing-width-z18;
    }
    [zoom >= 19] {
      marker-width: (@tertiary-width-z19 - 2 * @casing-width-z19) * 1.8 + 2 * @casing-width-z19;
      marker-height: (@tertiary-width-z19 - 2 * @casing-width-z19) * 1.8 + 2 * @casing-width-z19;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      marker-fill: @residential-casing;
      marker-width: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
      marker-height: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
      [zoom >= 16] {
        marker-width: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8 + 2 * @casing-width-z16;
        marker-height: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8 + 2 * @casing-width-z16;
      }
      [zoom >= 17] {
        marker-width: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
        marker-height: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
      }
      [zoom >= 18] {
        marker-width: (@residential-width-z18 - 2 * @casing-width-z18) * 1.8 + 2 * @casing-width-z18;
        marker-height: (@residential-width-z18 - 2 * @casing-width-z18) * 1.8 + 2 * @casing-width-z18;
      }
      [zoom >= 19] {
        marker-width: (@residential-width-z19 - 2 * @casing-width-z19) * 1.8 + 2 * @casing-width-z19;
        marker-height: (@residential-width-z19 - 2 * @casing-width-z19) * 1.8 + 2 * @casing-width-z19;
      }
      marker-allow-overlap: true;
      marker-ignore-placement: true;
      marker-line-width: 0;
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    marker-fill: @living-street-casing;
    marker-width: 14;
    marker-height: 14;
    [zoom >= 16] {
      marker-width: 18;
      marker-height: 18;
    }
    [zoom >= 17] {
      marker-width: 24;
      marker-height: 24;
    }
    [zoom >= 18] {
      marker-width: 27;
      marker-height: 27;
    }
    [zoom >= 19] {
      marker-width: 38;
      marker-height: 38;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'service'][zoom >= 16] {
    marker-fill: @service-casing;
    [int_tc_service = 'INT-normal'] {
      marker-width: 14;
      marker-height: 14;
      [zoom >= 17] {
        marker-width: 16;
        marker-height: 16;
      }
      [zoom >= 18] {
        marker-width: 20;
        marker-height: 20;
      }
      [zoom >= 19] {
        marker-width: 30;
        marker-height: 30;
      }
    }
    [int_tc_service = 'INT-minor'] {
      marker-width: 12;
      marker-height: 12;
      [zoom >= 19] {
        marker-width: 16;
        marker-height: 16;
      }
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }
}

#turning-circle-fill {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    marker-fill: @tertiary-fill;
    marker-width: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8;
    marker-height: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8;
    [zoom >= 17] {
      marker-width: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8;
      marker-height: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8;
    }
    [zoom >= 18] {
      marker-width: (@tertiary-width-z18 - 2 * @casing-width-z18) * 1.8;
      marker-height: (@tertiary-width-z18 - 2 * @casing-width-z18) * 1.8;
    }
    [zoom >= 19] {
      marker-width: (@tertiary-width-z19 - 2 * @casing-width-z19) * 1.8;
      marker-height: (@tertiary-width-z19 - 2 * @casing-width-z19) * 1.8;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      marker-fill: @residential-fill;
      marker-width: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8;
      marker-height: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8;
      [zoom >= 16] {
        marker-width: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8;
        marker-height: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8;
      }
      [zoom >= 17] {
        marker-width: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8;
        marker-height: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8;
      }
      [zoom >= 18] {
        marker-width: (@residential-width-z18 - 2 * @casing-width-z18) * 1.8;
        marker-height: (@residential-width-z18 - 2 * @casing-width-z18) * 1.8;
      }
      [zoom >= 19] {
        marker-width: (@residential-width-z19 - 2 * @casing-width-z19) * 1.8;
        marker-height: (@residential-width-z19 - 2 * @casing-width-z19) * 1.8;
      }
      marker-allow-overlap: true;
      marker-ignore-placement: true;
      marker-line-width: 0;
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    marker-fill: @living-street-fill;
    marker-width: 12;
    marker-height: 12;
    [zoom >= 16] {
      marker-width: 16;
      marker-height: 16;
    }
    [zoom >= 17] {
      marker-width: 22;
      marker-height: 22;
    }
    [zoom >= 18] {
      marker-width: 25;
      marker-height: 25;
    }
    [zoom >= 19] {
      marker-width: 36;
      marker-height: 36;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'service'][zoom >= 16] {
    marker-fill: @service-fill;
    [int_tc_service = 'INT-normal'] {
      marker-width: 12;
      marker-height: 12;
      [zoom >= 17] {
        marker-width: 14;
        marker-height: 14;
      }
      [zoom >= 18] {
        marker-width: 18;
        marker-height: 18;
      }
      [zoom >= 19] {
        marker-width: 28;
        marker-height: 28;
      }
    }
    [int_tc_service = 'INT-minor'] {
      marker-width: 10;
      marker-height: 10;
      [zoom >= 19] {
        marker-width: 14;
        marker-height: 14;
      }
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'track'][zoom >= 15] {
    marker-fill: @track-fill;
    marker-width: 6;
    marker-height: 6;
    [zoom >= 17] {
      marker-width: 10;
      marker-height: 10;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }
}

#highway-area-casing {
  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'] {
    [zoom >= 14] {
      line-color: #999;
      line-width: 1;
    }
  }

  [feature = 'highway_platform'],
  [feature = 'railway_platform'] {
    [zoom >= 16] {
      line-color: grey;
      line-width: 2;
      line-cap: round;
      line-join: round;
    }
  }
}

#highway-area-fill {
  [feature = 'highway_living_street'][zoom >= 14] {
    polygon-fill: @living-street-fill;
  }

  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'],
  [feature = 'highway_service'] {
    [zoom >= 14] {
      polygon-fill: #fff;
    }
  }

  [feature = 'highway_platform'],
  [feature = 'railway_platform'] {
    [zoom >= 16] {
      polygon-fill: #bbbbbb;
      polygon-gamma: 0.65;
    }
  }

  [feature = 'aeroway_runway'][zoom >= 11] {
    polygon-fill: @runway-fill;
  }

  [feature = 'aeroway_taxiway'][zoom >= 13] {
    polygon-fill: @taxiway-fill;
  }

  [feature = 'aeroway_helipad'][zoom >= 16] {
    polygon-fill: @helipad-fill;
  }
}

#junctions {
  [highway = 'motorway_junction'] {
    [zoom >= 11] {
      ref/text-name: "[ref]";
      ref/text-size: 10;
      ref/text-fill: @junction-text-color;
      ref/text-min-distance: 2;
      ref/text-face-name: @oblique-fonts;
      ref/text-halo-radius: 1.5;
      [zoom >= 12] {
        name/text-name: "[name]";
        name/text-size: 9;
        name/text-fill: @junction-text-color;
        name/text-dy: -9;
        name/text-face-name: @oblique-fonts;
        name/text-halo-radius: 1;
        name/text-wrap-character: ";";
        name/text-wrap-width: 2;
        name/text-min-distance: 2;
      }
      [zoom >= 15] {
        ref/text-size: 12;
        name/text-size: 11;
        name/text-dy: -10;
      }
    }
  }

  [junction = 'yes'],
  [highway = 'traffic_signals'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 30;
      text-min-distance: 2;
      [zoom >= 14] {
        text-size: 9;
      }
      [zoom >= 15] {
        text-size: 10;
      }
      [zoom >= 17] {
        text-size: 11;
        /* Offset name on traffic_signals on zoomlevels where they are displayed
        in order not to hide the text */
        [highway = 'traffic_signals'] {
          text-dy: 14;
        }
      }
    }
  }
}

#bridge-text  {
  [man_made = 'bridge'] {
    [zoom >= 12][way_pixels > 62.5] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-min-distance: 2;
      text-wrap-width: 30;
      [way_pixels > 250] {
        text-size: 9;
      }
      [way_pixels > 1000] {
        text-size: 11;
        text-halo-radius: 1.5;
      }
      [way_pixels > 4000] {
        text-size: 12;
      }
      [way_pixels > 16000] {
        text-size: 13;
        text-halo-radius: 2;
      }
    }
  }
}

.access::fill {
  [access = 'destination'] {
    [feature = 'highway_secondary'],
    [feature = 'highway_tertiary'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_residential'],
    [feature = 'highway_living_street'] {
      [zoom >= 15] {
        access/line-width: 6;
        access/line-color: @destination-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
      }
    }
    [feature = 'highway_road'],
    [feature = 'highway_service'][service = 'INT-normal'] {
      [zoom >= 15] {
        access/line-width: 3;
        access/line-color: @destination-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
        [zoom >= 16] { access/line-width: 6; }
      }
    }
    [feature = 'highway_service'][service = 'INT-minor'] {
      [zoom >= 16] {
        access/line-width: 2.5;
        access/line-color: @destination-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
      }
    }
  }
  [access = 'no'] {
    [feature = 'highway_motorway'],
    [feature = 'highway_trunk'],
    [feature = 'highway_primary'],
    [feature = 'highway_secondary'],
    [feature = 'highway_tertiary'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_residential'],
    [feature = 'highway_living_street'] {
      [zoom >= 15] {
        access/line-width: 6;
        access/line-color: @private-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
        [feature = 'highway_motorway'],
        [feature = 'highway_trunk'],
        [feature = 'highway_primary'] {
          access/line-color: @private-marking-for-red;
        }
      }
    }
    [feature = 'highway_road'],
    [feature = 'highway_track'],
    [feature = 'highway_service'][service = 'INT-normal'] {
      [zoom >= 15] {
        access/line-width: 3;
        access/line-color: @private-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
        [zoom >= 16] { access/line-width: 6; }
      }
    }
    [feature = 'highway_footway'],
    [feature = 'highway_path'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_bridleway'],
    [feature = 'highway_steps'] {
      [zoom >= 15] {
        access/line-width: 5;
        access/line-color: @private-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
      }
    }

    [feature = 'highway_service'][service = 'INT-minor'][zoom >= 16] {
      [zoom >= 15] {
        access/line-width: 2.5;
        access/line-color: @private-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
      }
    }
  }
}

#guideways {
  [zoom >= 13] {
    line-width: 3;
    line-color: #6666ff;
    line-join: round;
    b/line-width: 1;
    b/line-color: white;
    b/line-dasharray: 8,12;
    b/line-join: round;
  }
  [zoom >= 14] {
    b/line-dasharray: 0,11,8,1;
  }
}

#roads-text-ref-low-zoom[zoom < 13] {
  [highway = 'motorway'][zoom >= 10],
  [highway = 'trunk'][zoom >= 11],
  [highway = 'primary'][zoom >= 11],
  [highway = 'secondary'][zoom >= 12] {
    shield-name: "[refs]";
    shield-size: @shield-size;
    shield-placement: line;
    shield-spacing: @shield-spacing;
    shield-min-distance: @shield-min-distance;
    shield-face-name: @shield-font;
    shield-clip: @shield-clip;

    [highway = 'motorway'] {
      shield-fill: @shield-motorway-fill;
      shield-file: url("symbols/shields/motorway_[width]x[height].svg");
    }

    [highway = 'trunk'] {
      shield-fill: @shield-trunk-fill;
      shield-file: url("symbols/shields/trunk_[width]x[height].svg");
    }

    [highway = 'primary'] {
      shield-fill: @shield-primary-fill;
      shield-file: url("symbols/shields/primary_[width]x[height].svg");
    }

    [highway = 'secondary'] {
      shield-fill: @shield-secondary-fill;
      shield-file: url("symbols/shields/secondary_[width]x[height].svg");
    }
  }
}

#roads-text-ref {
  [highway = 'motorway'],
  [highway = 'trunk'],
  [highway = 'primary'],
  [highway = 'secondary'],
  [highway = 'tertiary'] {
    [zoom >= 13] {
      shield-name: "[refs]";
      shield-size: @shield-size;

      [zoom >= 16] {
        shield-size: @shield-size-z16;
      }
      [zoom >= 18] {
        shield-size: @shield-size-z18;
      }

      shield-placement: line;
      shield-spacing: @shield-spacing;
      shield-min-distance: @shield-min-distance;
      shield-face-name: @shield-font;
      shield-clip: @shield-clip;

      [highway = 'motorway'] {
        shield-fill: @shield-motorway-fill;
        shield-file: url("symbols/shields/motorway_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/motorway_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/motorway_[width]x[height]_z18.svg");
        }
      }
      [highway = 'trunk'] {
        shield-fill: @shield-trunk-fill;
        shield-file: url("symbols/shields/trunk_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/trunk_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/trunk_[width]x[height]_z18.svg");
        }
      }
      [highway = 'primary'] {
        shield-fill: @shield-primary-fill;
        shield-file: url("symbols/shields/primary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/primary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/primary_[width]x[height]_z18.svg");
        }
      }
      [highway = 'secondary'] {
        shield-fill: @shield-secondary-fill;
        shield-file: url("symbols/shields/secondary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/secondary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/secondary_[width]x[height]_z18.svg");
        }
      }
      [highway = 'tertiary'] {
        shield-fill: @shield-tertiary-fill;
        shield-file: url("symbols/shields/tertiary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/tertiary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/tertiary_[width]x[height]_z18.svg");
        }
      }
    }
  }

  [highway = 'unclassified'],
  [highway = 'residential'] {
    [zoom >= 15] {
      text-name: "[refs]";
      text-size: 8;

      [zoom >= 16] {
        text-size: 9;
      }
      [zoom >= 18] {
        text-size: 10;
      }

      text-fill: #000;
      text-face-name: @book-fonts;
      text-min-distance: 40;
      text-halo-radius: 2;
      text-halo-fill: rgba(255,255,255,0.6);
      text-spacing: 760;
      text-clip: false;
    }
  }

  [highway = 'runway'],
  [highway = 'taxiway'] {
    [zoom >= 15] {
      text-name: "[refs]";
      text-size: 10;
      text-fill: #333;
      text-spacing: 750;
      text-clip: false;
      text-placement: line;
      text-min-distance: 18;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
    }
  }
}

#roads-text-name {
  [highway = 'motorway'],
  [highway = 'trunk'],
  [highway = 'primary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      [tunnel = 'no'] {
        text-halo-radius: 1;
        [highway = 'motorway'] { text-halo-fill: @motorway-fill; }
        [highway = 'trunk'] { text-halo-fill: @trunk-fill; }
        [highway = 'primary'] { text-halo-fill: @primary-fill; }
      }
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
    [zoom >= 17] {
      text-size: 11;
    }
    [zoom >= 19] {
      text-size: 12;
    }
  }
  [highway = 'secondary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: @secondary-fill;
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
    [zoom >= 17] {
      text-size: 11;
    }
    [zoom >= 19] {
      text-size: 12;
    }
  }
  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 9;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: @tertiary-fill;
    }
    [zoom >= 17] {
      text-size: 11;
    }
    [zoom >= 19] {
      text-size: 12;
    }
  }
  [highway = 'construction'] {
    [int_construction_minor = 'no'][zoom >= 13],
    [int_construction_minor = 'yes'][zoom >= 14] {
      text-name: "[name]";
      text-size: 9;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-face-name: @book-fonts;
      [zoom >= 17] {
        text-size: 11;
      }
      [zoom >= 19] {
        text-size: 12;
      }
    }
  }
  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      text-halo-fill: @residential-fill;
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
      text-spacing: 400;
    }
    [zoom >= 19] {
      text-size: 12;
      text-spacing: 400;
    }
  }

  [highway = 'raceway'],
  [highway = 'service'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 9;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      [highway = 'raceway'] { text-halo-fill: @raceway-fill; }
      [highway = 'service'] { text-halo-fill: @service-fill; }
      text-face-name: @book-fonts;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }

  [highway = 'living_street'],
  [highway = 'pedestrian'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      [highway = 'living_street'] { text-halo-fill: @living-street-fill; }
      [highway = 'pedestrian'] { text-halo-fill: @pedestrian-fill; }
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
    }
    [zoom >= 19] {
      text-size: 12;
    }
  }

  [highway = 'track'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-fill: #222;
      text-size: 8;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-vertical-alignment: middle;
      text-dy: 5;
    }
    [zoom >= 16] {
      text-size: 9;
      text-dy: 7;
    }
    [zoom >= 17] {
      text-size: 11;
      text-dy: 9;
    }
  }
}

#roads-area-text-name {
  [way_pixels > 3000],
  [zoom >= 17] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-face-name: @book-fonts;
      text-placement: interior;
      text-wrap-width: 30;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
}
