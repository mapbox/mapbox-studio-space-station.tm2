// Roads 
/*@road-text: #fff;
@road-halo: lighten(#000,30); //7ac7ff;

#road_label[zoom>=16][class='main'] {
  text-avoid-edges: true;
  text-name: @name;
  text-character-spacing: 0.5;
  text-placement: line;
  text-face-name: @sans;
  text-fill:@text-level1; text-halo-fill:@land-halo2;
  text-size:10;
  text-opacity: @opacity3;
  text-transform: uppercase;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-spacing: 200;
  text-min-distance: 100;
  [zoom=16] 	{text-fill:@road-text;
    			text-opacity: @opacity2;
  				text-size: 11;}
  [zoom>=17] 	{text-size: 12; 
    			text-fill: @road-text;
  				text-opacity: @opacity2;}
  [zoom>=18] 	{text-size: 13; text-fill:@text-level1; text-halo-fill:@land-halo2;}
  [zoom>=19] 	{text-size: 14; text-halo-radius:2; 
  				text-opacity: @opacity1;
  text-fill:@text-level1; text-halo-fill:@land-halo;}
}

// Streets and paths
#road_label[zoom>=17][class='street'], 
#road_label[zoom>=18][class='path'],
#road_label[zoom>=18][class='street_limited'],
#road_label[zoom>=18][class='service'], 
#road_label[zoom>=18][class='driveway'] 
{
  text-avoid-edges: true;
  text-name: @name;
  [zoom>=18] {text-fill:@text-level1; text-halo-fill:@land-halo2;}
  text-character-spacing: 0.5;
  text-placement: line;
  text-transform: uppercase;
  text-face-name: @sans;
  text-fill: @road-text;
  text-size: 10;
  text-halo-fill: @road-halo;
  text-halo-radius: 2;
  text-opacity:@opacity4;
  text-halo-rasterizer: fast;
  text-spacing: 200;
  text-min-distance: 30;
  [zoom>=18] {text-size: 12; 
    	text-opacity:@opacity3;
  		text-face-name:@country;}
  [zoom>=19] {text-size: 13; text-opacity:@opacity2; }
}*/