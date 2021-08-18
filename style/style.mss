Map {
  background-color: @land-color;
}

@water-color: #aad3df;
@land-color: #f2efe9;

@standard-halo-radius: 1;
@standard-halo-fill: rgba(255,255,255,0.8);

/// --- New variables ---
@amenity-orange: #ffa500;
@label-color: #9f8170;

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
    line-width: 0.2;
    line-color: @label-color;
    [zoom >= 15] {
      line-width: 0.6;
      [zoom >= 17] {
        line-width: 1;
      }
    }
   }
}
#contour-major {
  [zoom >= 10] {
    line-width: 0.4;
    line-color: @label-color;
    [zoom >= 15] {
      line-width: 1;
      [zoom >= 17] {
        line-width: 1.5;
      }
    }
   }
}
#contour-text {
  [major = 1][zoom >= 14]::text {
    text-name: "[elev]";
    text-face-name: @book-fonts;
    text-fill: darken(@label-color, 15%);
    text-size: 8;
    text-dy: 1;
    text-placement: line;
    text-halo-radius: @standard-halo-radius;
    text-spacing: 250;
    text-halo-fill: rgba(255,255,255,0.8);
    [zoom >= 16] {
        text-size: 10;
    }
    [zoom >= 17] {
        text-size: 12;
        text-spacing: 400;
        text-dy: 2;
    }
  }
  [major = 0][zoom >= 17]::text {
    text-name: "[elev]";
    text-face-name: @book-fonts;
    text-fill: darken(@label-color, 15%);
    text-size: 10;
    text-dy: 1;
    text-placement: line;
    text-halo-radius: @standard-halo-radius;
    text-spacing: 500;
    text-halo-fill: rgba(255,255,255,0.8);
  }
}

#color-relief {
  raster-opacity:1;
}
