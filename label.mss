@sans_lt: 'Bender Light','Arial Unicode MS Regular';
@sans: 'Bender Regular','Arial Unicode MS Regular';
@sans_bd: 'Bender Bold','Arial Unicode MS Regular';

@tmod: 2;

@land: #686868;
@fill: lighten(#000,10);
@road-text:lighten(#000,20);
@road-halo:lighten(#686868,10);
@country-text:lighten(#000,10);
@country-halo:lighten(#686868,20);
@state-text:lighten(#000,10);
@state-halo:lighten(#686868,20);
@city-text:lighten(#000,20);
@city-text2:lighten(#000,15);
@city-halo:lighten(#686868,20);
@small-text:lighten(#000,10);
@small-halo:lighten(#686868,20);
@halo-dark:lighten(#686868,0);
@text-dark:lighten(#000,15);

#country_label[zoom<=10] {
  text-name: @name;
  text-transform: uppercase;
  text-face-name: @sans;
  text-placement: point;
  text-size: 10 + @tmod;
  text-fill: @country-text;
  text-halo-fill: @country-halo;
  text-halo-radius: 1.5;
  text-line-spacing: -4;
  text-wrap-width: 30;
  text-min-distance: 2;
  [zoom=3] { text-min-distance: 10; }
  [scalerank=1] {
    [zoom=2]  { text-size: 12 + @tmod; text-wrap-width: 60; }
    [zoom=3]  { text-size: 13 + @tmod; text-wrap-width: 60; }
    [zoom=4]  { text-size: 14 + @tmod; text-wrap-width: 90; }
    [zoom=5]  { text-size: 20 + @tmod; text-wrap-width: 120; }
    [zoom>=6] { text-size: 20 + @tmod; text-wrap-width: 120; }
  }
  [scalerank=2] {
    [zoom=3]  { text-size: 12 + @tmod; }
    [zoom=4]  { text-size: 13 + @tmod; }
    [zoom=5]  { text-size: 17 + @tmod; }
    [zoom>=6] { text-size: 20 + @tmod; }
  }
  [scalerank=3] {
    [zoom=4]  { text-size: 11 + @tmod; }
    [zoom=5]  { text-size: 15 + @tmod; }
    [zoom=6]  { text-size: 17 + @tmod; }
    [zoom=7]  { text-size: 18 + @tmod; text-wrap-width: 60; }
    [zoom>=8] { text-size: 20 + @tmod; text-wrap-width: 120; }
  }
  [scalerank=4] {
    [zoom=5] { text-size: 13 + @tmod; }
    [zoom=6] { text-size: 15 + @tmod; text-wrap-width: 60  }
    [zoom=7] { text-size: 16 + @tmod; text-wrap-width: 90; }
    [zoom=8] { text-size: 18 + @tmod; text-wrap-width: 120; }
    [zoom>=9] { text-size: 20 + @tmod; text-wrap-width: 120; }
  }
  [scalerank=5] {
    [zoom=5] { text-size: 12 + @tmod; }
    [zoom=6] { text-size: 13 + @tmod; }
    [zoom=7] { text-size: 14 + @tmod; text-wrap-width: 60; }
    [zoom=8] { text-size: 16 + @tmod; text-wrap-width: 90; }
    [zoom>=9] { text-size: 18 + @tmod; text-wrap-width: 120; }
  }
  [scalerank>=6] {
    [zoom=6] { text-size: 11 + @tmod; }
    [zoom=7] { text-size: 12 + @tmod; }
    [zoom=8] { text-size: 14 + @tmod; }
    [zoom>=9] { text-size: 16 + @tmod; }
  }
}

#state_label[zoom>=4][zoom<=10] {
  text-name: @name;
  text-face-name: @sans;
  text-placement: point;
  text-fill: @state-text;
  text-halo-fill: @state-halo;
  text-halo-radius: 2;
  text-transform: uppercase;
  text-halo-rasterizer: fast;
  text-min-distance: 2;
  text-size: 10;
  [zoom=4] { text-halo-radius:1.5;}
  [zoom>=5][zoom<=6] {
    [area>10000] { text-size: 12; }
    [area>50000] { text-size: 14; }
    text-wrap-width: 40;
  }
  [zoom>=6] {text-face-name:@sans_lt;}
  [zoom>=7][zoom<=8] {
    text-size: 14;
    [area>50000] { text-size: 16; text-character-spacing: 1; }
    [area>100000] { text-size: 18; text-character-spacing: 3; }
    text-wrap-width: 60;
  }
  [zoom>=9][zoom<=10] {
    text-size: 16;
    text-character-spacing: 2;
    [area>50000] { text-size: 18; text-character-spacing: 2; }
    [area>100000] { text-name: "''"; }
    text-wrap-width: 100;
  }
}

// CITIES //

#place_label::citydots[type = 'city'][zoom>=4][zoom<=7] {
  shield-name: @name;
  shield-file:url("img/other/targetdot-15.png");
  [zoom>=6] { shield-file:url("img/other/targetdot-15.png"); }
  shield-size: 13;
  [scalerank>=0][scalerank<=1] {
    shield-file:url("img/other/targetdot-2.png");
    shield-text-dy:22;
    shield-name: "[name_en] + ' Colony'" ;
    [zoom=5]  { shield-size: 0; }
    [zoom>=6] { 
      shield-size: 16;
      shield-file:url("img/other/targetdot-2.png");
    }
    [zoom=7] { shield-size: 16;  }
  }
  [scalerank>=2][scalerank<=3] {
    shield-file:url("img/other/targetdot.png");
    shield-text-dy:17;
    [zoom=5]  { shield-size: 0; }
    [zoom>=6] { 
      shield-size: 14;
      shield-file:url("img/other/targetdot.png");
    }
    [zoom=7] { shield-size: 15; }
  }
  [scalerank>=4][scalerank<=5] {
    [zoom=6] { shield-size: 13; }
    [zoom=7] { shield-size: 14; }
  }
  [zoom<=5] { 
    shield-min-distance: 0;
    shield-size:0;
  }
  shield-face-name: @sans;
  shield-placement: point;
  shield-fill: @city-text2;
  shield-min-distance: 2;
  shield-text-dy: 15;
  shield-halo-fill: @city-halo;
  shield-halo-radius: 2;
  shield-text-transform: uppercase;
}

#place_label[type='city'][zoom>=7][zoom<=15] {
  shield-name: @name;
  shield-face-name: @sans_bd;
  shield-file: url("img/other/targetdot-15.png");
  shield-fill: @city-text;
  shield-wrap-width: 40;
  shield-size: 15;
  shield-halo-fill: @city-halo;
  [zoom>=14] {
    shield-fill: @text-dark; 
    shield-halo-fill: lighten(@halo-dark, 10);
  }
  shield-halo-radius: 2;
  shield-text-dy: 15;
  shield-min-distance: 5;
  shield-text-transform: uppercase;
  shield-line-spacing: 0;
  [scalerank>=0][scalerank<=1] { shield-name: "[name_en] + ' Colony'" ; }
  [zoom>=8][zoom<=14] {
    shield-size: 15;
    shield-wrap-width: 60;
    [scalerank>=0][scalerank<=1] {
      shield-file:url("img/other/targetdot-40.png");
      shield-text-dy:45;
	  shield-size: 20; 
    }
    [scalerank>=2][scalerank<=3] {
      shield-file:url("img/other/targetdot-2.png");
      shield-text-dy:25;
      shield-size: 18; 
    }
    [scalerank>=4][scalerank<=5] { shield-size: 17; }
    [scalerank>=6] { shield-size: 15; }
  }
  [zoom=9] {
    shield-size: 16;
    shield-wrap-width: 60;
    [scalerank>=0][scalerank<=1] { shield-size: 21; }
    [scalerank>=2][scalerank<=3] { shield-size: 19; }
    [scalerank>=4][scalerank<=5] { shield-size: 18; }
    [scalerank>=6] { shield-size: 16; }
  }
  [zoom=10] {
    shield-size: 17;
    shield-wrap-width: 70;
    [scalerank>=0][scalerank<=1] { shield-size: 22; }
    [scalerank>=2][scalerank<=3] { shield-size: 21; }
    [scalerank>=4][scalerank<=5] { shield-size: 19; }
    [scalerank>=6] { shield-size: 17; }
  }
  [zoom=11] {
    shield-size: 18;
    shield-wrap-width: 80;
    [scalerank>=0][scalerank<=1] { shield-size: 22; }
    [scalerank>=2][scalerank<=3] { shield-size: 21; }
    [scalerank>=4][scalerank<=5] { shield-size: 19; }
    [scalerank>=6] { shield-size: 18; }
  }
  [zoom=12] {
    shield-size: 19;
    shield-wrap-width: 100;
    [scalerank>=0][scalerank<=1] { shield-size: 22; }
    [scalerank>=2][scalerank<=3] { shield-size: 21; }
    [scalerank>=4][scalerank<=5] { shield-size: 20; }
    [scalerank>=6] { shield-size: 19; }
  }
  [zoom=13] {
    shield-size: 20;
    shield-wrap-width: 200;
    [scalerank>=0][scalerank<=1] { shield-size: 22; }
    [scalerank>=2][scalerank<=3] { shield-size: 21; }
    [scalerank>=4][scalerank<=5] { shield-size: 21; }
    [scalerank>=6] { shield-size: 20; }
  }
  [zoom=14] {
    shield-size: 21;
    shield-wrap-width: 300;
    shield-file:url('img/other/none.png');
    [scalerank>=0][scalerank<=1] { shield-size: 22; }
    [scalerank>=2][scalerank<=3] { shield-size: 22; }
    [scalerank>=4][scalerank<=5] { shield-size: 21; }
    [scalerank>=6] { shield-size: 21; }
  }
  [zoom=15] {
    shield-size: 21;
    shield-wrap-width: 400;
    [scalerank>=0][scalerank<=1] { shield-size: 22; }
    [scalerank>=2][scalerank<=3] { shield-size: 22; }
    [scalerank>=4][scalerank<=5] { shield-size: 22; }
    [scalerank>=6] { shield-size: 21; }
  }
}

#place_label[type!='city'] {
  shield-name: @name;
  shield-face-name: @sans;
  shield-fill: @small-text;
  shield-size: 12;
  shield-wrap-width: 100;
  shield-wrap-before: true;
  shield-halo-fill: @small-halo;
  shield-halo-radius: 2;
  shield-min-distance:20;
  shield-file:url("img/other/none.png");
  shield-text-transform: uppercase;
  shield-line-spacing: 3;
  //shield-character-spacing: 1;
  shield-text-dy:20;
  [zoom>=14] {
    shield-face-name:@sans_bd;
    shield-fill:@text-dark;
    shield-halo-fill:lighten(@halo-dark, 10);
  }
  [zoom<=13] {
    shield-file:url("img/other/targetdot-15.png");
  }
  [type='town'] {
    shield-size: 14;
    [zoom=9]   { shield-size:0;shield-file:url("img/other/targetdot-15.png");}
    [zoom>=10] { shield-size: 14; shield-file:url("img/other/targetdot.png"); shield-text-dy:25;}
    [zoom>=12] { shield-text-dy:30; shield-size: 15; shield-file:url("img/other/targetdot-2.png");}
    [zoom=11] { shield-size: 13; }
    [zoom=13] {  shield-file:url("img/other/targetdot-15.png"); }
  }
  [type='village'] {
    shield-file:url("img/other/targetdot-15.png");
    [zoom<=11] { shield-size: 0; }
    [zoom>=12] { shield-size: 14; }
    [zoom>=14] { shield-size: 18; }
  }
  [type='hamlet'],
  [type='suburb'] {
    [zoom<=13] { shield-file:url("img/other/targetdot-15.png"); }
    shield-text-dy:18;
    [zoom<=12] { shield-size: 0;}
    [zoom>=14] { shield-size: 14; }
    [zoom>=16] { shield-size: 16; }
  }
}

// ROADS //
#road_label['mapnik::geometry_type'=2] {
  [class='main'],
  [class='street'][zoom>=15],
  [class='street_limited'][zoom>=15] {
    text-name:@name;
    text-face-name: 'Arial Unicode MS Regular';
    text-fill:@road-text;
    text-transform: uppercase;
    text-placement:line;
    text-avoid-edges:true;
    text-halo-fill:@road-halo;
    text-halo-radius:2;
    text-halo-rasterizer:fast;
    [zoom<=12] { text-halo-fill:lighten(@road-halo, 10);}
    [zoom>=14] { text-size: 10; }
    [zoom>=15] { text-size: 11; }
    [zoom>=16] { text-size: 12; }
    [zoom>=17] { text-size: 13; }
    [class='main'][zoom=19] { text-halo-fill:darken(@road-halo, 30);
    text-fill:lighten(@road-halo, 30);
    }
  }
}