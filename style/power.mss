#power-towers {
  [power = 'tower'] {
    [zoom >= 15] {
      marker-file: url('symbols/man_made/power_tower_small.svg');
      marker-width: 3;
    }
    [zoom >= 16] {
      marker-file: url('symbols/man_made/power_tower.svg');
      marker-width: 5;
    }
    [zoom >= 18] {
      marker-width: 7;
    }
  }
  [power = 'pole'][zoom >= 17] {
    marker-file: url('symbols/square.svg');
    marker-fill: #928f8f;
    marker-width: 3;
  }
}
