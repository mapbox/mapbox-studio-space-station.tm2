#admin[maritime=0] {
  line-join: round;
  line-color:#000;

  // Countries
  [admin_level=2]{
    line-width: 1.5;
    line-opacity: 0.75;
    [zoom>=2] { line-width: 0.5; }
    [zoom=4]  { line-width: 1; }
    [zoom=5]  { line-width: 1.2; }
    [zoom=6]  { line-width: 2; }
    [zoom=7]  { line-width: 2.5; }
    [zoom>=8] { line-width: 3; }
    [disputed=1] { line-dasharray: 4,4; }
  }

  // States / Provinces / Subregions
  [admin_level>=3]{
    line-color:#000; //82b3d4;
    line-opacity: 0.25;
    line-width: 0.5;
    [zoom=4] { line-width: 1; }
    [zoom>=5] {
      line-opacity: 0.5;
      line-width: 1;
      line-dasharray: 4,2;
    }
    [zoom>=6] {
      line-width: 1.5;
      line-opacity: 0.6;
    }
    [zoom=7] { line-width: 2; }
    [zoom>=8] { line-width: 2.5; }
    [zoom>=12] { line-width: 4; }
  }
}
