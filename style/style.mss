Map {
  background-color: @land-color;
}

@water-color: #aad3df;
@land-color: #f2efe9;

@standard-halo-radius: 1;
@standard-halo-fill: rgba(255,255,255,0.6);

/// --- New variables ---
@amenity-orange: #ffa500;
@label-color: #9f8170;
@radius-max: 1.5;
@radius-avg: 0.75;
@radius-min: 0.5;

/// --- Missing variables ---
@aboriginal: #82643a;
@protected-area: #008000;
@standard-font-size: 10;
@standard-wrap-width: 30; // 3 em
@standard-line-spacing-size: -1.5; // -0.15 em
@standard-font: @book-fonts;
@transportation-icon: #0092da;
@transportation-text: #0066ff;

#hill-shade { raster-opacity: 0.5; }
#slope-shape { raster-opacity: 0.5; }
#color-relief { raster-opacity: 0.5; }

#color-relief,
#slope-shade,
#hill-shade {
    raster-scaling: bilinear;
    raster-comp-op: multiply;
    raster-opacity: 0.5;
}


#contour {
  [zoom >= 10] {
    line-width: 0.1;
    line-color: @label-color;
    [zoom >= 14] {
      line-width: 0.4;
      [zoom >= 17] {
        line-width: 0.8;
      }
    }
   }
}
#contour-major {
  [zoom >= 10] {
    line-width: 0.2;
    line-color: @label-color;
    [zoom >= 14] {
      line-width: 0.8;
      [zoom >= 17] {
        line-width: 1.2;
      }
    }
   }
}
#contour-text {
  [zoom >= 14]::text {
    text-name: "[elev]";
    text-face-name: @book-fonts;
    text-fill: darken(@label-color, 15%);
    text-size: 4;
    text-placement: line;
    text-halo-radius: 0.5;
    text-spacing: 50;
    text-halo-fill: rgba(255,255,255,0.8);
    [zoom >= 17] {
        text-size: 6;
        text-halo-radius: 1.0;
        text-spacing: 75;
    }
  }
}

#color-relief {
  raster-opacity:1;
}
