#tunnel { opacity: 0.5; }

#road::shadow[class!='major_rail'][class!='major_rail_link'][class!='minor_rail_link'][class!='minor_rail'][zoom>=17][zoom>=11],
#bridge::shadow[class!='major_rail'][class!='major_rail_link'][class!='minor_rail_link'][class!='minor_rail'][zoom>=17][zoom>=11],
#tunnel::shadow[class!='major_rail'][class!='major_rail_link'][class!='minor_rail_link'][class!='minor_rail'][zoom>=17][zoom>=11]{
  line-width: 3;
  line-join: round;
  line-color: #000;
  line-opacity: 0.25;
  line-cap: round;
  [zoom=16] {
    line-width: 1; 
    line-opacity: 0.3;
  }
  [zoom>=17]  {
    line-pattern-file: url(img/lines/borderline1-2px.jpg);
    line-width: 2; 
    line-geometry-transform: translate(1,1);
  }
  [zoom>=18] { line-geometry-transform:translate(1.5,1.5); }
  [zoom>=19] { line-geometry-transform:translate(2,2); }
  line-clip: false; 
  line-pattern-file: url(img/lines/borderline1-10px.jpg);
}

#bridge::case[class='motorway'][zoom>14],
#bridge::case[class='main'][zoom>14],
#bridge::case[class='motorway_link'][zoom>14],
#bridge::case[class='main_link'][zoom>14],
#road::case[class='motorway'][zoom>14],
#road::case[class='main'][zoom>14],
#road::case[class='motorway_link'][zoom>14],
#road::case[class='main_link'][zoom>14],
#tunnel::case[class='motorway'][zoom>14],
#tunnel::case[class='main'][zoom>14],
#tunnel::case[class='motorway_link'][zoom>14],
#tunnel::case[class='main_link'][zoom>14] {
  line-color:lighten(#000,70); 
  line-width:0;
  [zoom=12] { line-width: 1; }
  [zoom=13] { line-width: 2; }
  [zoom=14] { 
    line-width: 3; 
    line-color: lighten(#000,30); 
  }
  [zoom=15] { 
    line-width: 2;  
    line-color: lighten(#000,30); 
  }
  [zoom=16] { line-width: 6; }
  [zoom=17] { line-width: 8; }
  [zoom=18] { line-width: 11; }
  [zoom=19] { line-width: 25; }
}

#bridge::fill[class='motorway'][zoom>14],
#bridge::fill[class='main'][zoom>14],
#bridge::fill[class='motorway_link'][zoom>14],
#bridge::fill[class='main_link'][zoom>14],
#road::fill[class='motorway'][zoom>14],
#road::fill[class='main'][zoom>14],
#road::fill[class='motorway_link'][zoom>14],
#road::fill[class='main_link'][zoom>14],
#tunnel::fill[class='motorway'][zoom>14],
#tunnel::fill[class='main'][zoom>14],
#tunnel::fill[class='motorway_link'][zoom>14],
#tunnel::fill[class='main_link'][zoom>14] {
      line-color:lighten(#000,20); 
      line-width:0;
      [zoom=11] { line-width: 0.4;}
      [zoom=12] { line-width: 0.5; }
      [zoom=13] { line-width: 0.75; }
      [zoom=14] { line-width: 1; line-opacity:1;}
      [zoom>=15] { line-width: 1; line-opacity:1; line-color:lighten(#000,30);   }
      [zoom>=16] { line-pattern-file:url('img/lines/roadline1-3px.jpg'); }
      [zoom>=17] { line-pattern-file:url('img/lines/roadline1-5px.jpg'); }
      [zoom>=18] { line-pattern-file:url('img/lines/roadline1-8px.jpg'); }
      [zoom>=19] { line-pattern-file:url('img/lines/roadline1-30px.jpg');}
  }

#road, 
#bridge,
#tunnel{
    line-opacity: 1;
    line-width: 0.25;
    [class='motorway'],
    [class='main'],
    [class='motorway_link'],
    [class='main_link']
      {
      [zoom<=13] {line-color:#fff;}
      [zoom<=5] { line-width: 0.2; }
      [zoom=6]  { line-width: 0.2; }
      [zoom=7]  { line-width: 0.2; }
      [zoom=9]  { line-opacity:0.7;}
      [zoom=10] { line-width:0.3; line-opacity:0.8;}
      [zoom=11] { line-width:0.3; line-opacity:0.9;}
      [zoom=12] { line-width:0.4; line-opacity:0.75;}
      [zoom=13] { line-width:0.5; line-opacity:0.75; line-color:lighten(#000, 20);}
      [zoom=14] { line-width:0.75; line-opacity:0.5;}
    }
    [class='street'],[class='street_link'], [class='street_limited'] {
      [zoom>=11]  {line-width: 0.2; line-color:#fff;}
      [zoom=13]  {line-width: 0.25; line-color:#fff;}
      [zoom>=14] { line-width: 0.25; }
      [zoom>=15] { line-width:0.65; line-color:lighten(#000,20);}
      [zoom=16] { line-pattern-file:url('img/lines/roadline1-2px.jpg');
    	[class='street_limited']{
        line-width:0.65; line-color:lighten(#000,20);}
      }
      [zoom>=17] { line-pattern-file:url('img/lines/roadline1-2px.jpg'); line-opacity: 1;}
      [zoom>=18] { line-pattern-file:url('img/lines/roadline1-3px.jpg'); }
      [zoom>=19] { line-pattern-file:url('img/lines/roadline1-5px.jpg'); }
     }
	[class='path'], [class='path_link'], [class='service_link'], 
    [class='service'], [class='driveway']{
      line-opacity: 0.75;
      line-dasharray: 1 , 1;
    [zoom>=16] { line-dasharray: 1.5 , 2; }
    [zoom=14] { line-width: 0.5; }
    [zoom>=15] { line-width: 1; line-color:#fff; }
    [zoom=16] { line-width: 1.5; }
    [zoom=17] { line-width: 2; line-dasharray: 2 , 2; }
    [zoom=18] { line-width: 2; line-dasharray: 2 , 3; }
    [zoom=19] { line-width: 2.5; line-dasharray: 2.5 , 3; }
	}
    [class='major_rail'], [class='major_rail_link'],[class='minor_rail_link'], [class='minor_rail']{
      line-color:#fff;
      [zoom<=13] {line-width:0.1;}
      [zoom=14] {line-width:0.15;}
      [zoom=15] { line-width:1; line-opacity:0.4;}
      [zoom>=16] { line-pattern-file:url('img/lines/neonblue-2px.png'); }
      [zoom>=17] { line-pattern-file:url('img/lines/neonblue-3px.png');}
      [zoom>=18] { line-pattern-file:url('img/lines/neonblue-5px.png'); }
      [zoom>=19] { line-pattern-file:url('img/lines/neonblue-10px.png');}
    }
}
