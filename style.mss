@amenity-orange: #ffa500;
@label-color: #9f8170;

Map {
  background-color: #ffffff;
}


#hill-shade { raster-opacity: 0.5; }
#slope-shape { raster-opacity: 0.5; }
#color-relief { raster-opacity: 0.5; }

#color-relief,
#slope-shade,
#hill-shade {
    raster-scaling: bilinear;
    // note: in TileMill 0.9.x and earlier this is called raster-mode
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
        text-spacing: 50;
    }
  }
}

@book-fonts:    "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";
@bold-fonts:    "DejaVu Sans Bold", "Arundina Sans Bold", "Padauk Bold", "Mukti Narrow Bold", "TSCu_Paranar Bold", "Mallige Bold",
                "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";

@oblique-fonts: "DejaVu Sans Oblique", "Arundina Sans Italic", "TSCu_Paranar Italic", "Mallige NormalItalic",
                "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";


@water-color: #c0f0f0;
@land-color: #f2efe9;

#color-relief {
  raster-opacity:1;
}
