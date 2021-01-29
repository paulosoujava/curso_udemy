const STYLE = [
  {
    "featureType": "all",
    "elementType": "geometry",
    "stylers": [
      {"color": "#202c3e"}
    ]
  },
  {
    "featureType": "all",
    "elementType": "labels.text.fill",
    "stylers": [
      {"gamma": 0.01},
      {"lightness": 20},
      {"weight": "1.39"},
      {"color": "#ffffff"}
    ]
  },
  {
    "featureType": "all",
    "elementType": "labels.text.stroke",
    "stylers": [
      {"weight": "0.96"},
      {"saturation": "9"},
      {"visibility": "on"},
      {"color": "#000000"}
    ]
  },
  {
    "featureType": "all",
    "elementType": "labels.icon",
    "stylers": [
      {"visibility": "off"}
    ]
  },
  {
    "featureType": "landscape",
    "elementType": "geometry",
    "stylers": [
      {"lightness": 30},
      {"saturation": "9"},
      {"color": "#29446b"}
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {"saturation": 20}
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {"lightness": 20},
      {"saturation": -20}
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {"lightness": 10},
      {"saturation": -30}
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry.fill",
    "stylers": [
      {"color": "#193a55"}
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry.stroke",
    "stylers": [
      {"saturation": 25},
      {"lightness": 25},
      {"weight": "0.01"}
    ]
  },
  {
    "featureType": "water",
    "elementType": "all",
    "stylers": [
      {"lightness": -20}
    ]
  }
];

const STYLE_2 = [
  {
    "featureType": "all",
    "elementType": "all",
    "stylers": [
      {"visibility": "on"},
      {"hue": "#1c1a1b"}
    ]
  },
  {
    "featureType": "all",
    "elementType": "geometry.fill",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "labels.text.fill",
    "stylers": [
      {"color": "#444444"}
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "all",
    "stylers": [
      {"visibility": "on"},
      {"color": "#202c3e"}
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "geometry",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "geometry.fill",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "geometry.stroke",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "labels",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "landscape",
    "elementType": "all",
    "stylers": [
      {"color": "#f2f2f2"}
    ]
  },
  {
    "featureType": "landscape.man_made",
    "elementType": "all",
    "stylers": [
      {"visibility": "off"},
      {"color": "#202c3e"}
    ]
  },
  {
    "featureType": "landscape.natural.landcover",
    "elementType": "all",
    "stylers": [
      {"visibility": "off"},
      {"color": "#202c3e"}
    ]
  },
  {
    "featureType": "landscape.natural.terrain",
    "elementType": "all",
    "stylers": [
      {"visibility": "off"},
      {"color": "#202c3e"}
    ]
  },
  {
    "featureType": "poi",
    "elementType": "all",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {"visibility": "on"},
      {"color": "#b6e1b2"}
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry.fill",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "poi.attraction",
    "elementType": "geometry",
    "stylers": [
      {"visibility": "off"},
      {"hue": "#ff6300"}
    ]
  },
  {
    "featureType": "poi.attraction",
    "elementType": "geometry.fill",
    "stylers": [
      {"visibility": "on"},
      {"color": "#ff0000"}
    ]
  },
  {
    "featureType": "poi.business",
    "elementType": "all",
    "stylers": [
      {"visibility": "on"},
      {"hue": "#1c1a1b"}
    ]
  },
  {
    "featureType": "poi.government",
    "elementType": "all",
    "stylers": [
      {"visibility": "on"},
      {"hue": "#1c1a1b"}
    ]
  },
  {
    "featureType": "poi.place_of_worship",
    "elementType": "all",
    "stylers": [
      {"visibility": "on"},
      {"hue": "#1c1a1b"}
    ]
  },
  {
    "featureType": "poi.place_of_worship",
    "elementType": "geometry.fill",
    "stylers": [
      {"visibility": "on"},
      {"hue": "#1c1a1b"}
    ]
  },
  {
    "featureType": "poi.school",
    "elementType": "all",
    "stylers": [
      {"visibility": "off"},
      {"hue": "#1c1a1b"}
    ]
  },
  {
    "featureType": "poi.sports_complex",
    "elementType": "all",
    "stylers": [
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "road",
    "elementType": "all",
    "stylers": [
      {"saturation": -100},
      {"lightness": 45}
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry.fill",
    "stylers": [
      {"saturation": "-22"},
      {"lightness": "30"},
      {"gamma": "2.26"},
      {"visibility": "on"},
      {"color": "#b6b6b6"}
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "all",
    "stylers": [
      {"visibility": "simplified"}
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "geometry.fill",
    "stylers": [
      {"visibility": "off"},
      {"color": "#1c1a1b"}
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels.icon",
    "stylers": [
      {"visibility": "off"}
    ]
  },
  {
    "featureType": "transit",
    "elementType": "all",
    "stylers": [
      {"visibility": "off"}
    ]
  },
  {
    "featureType": "water",
    "elementType": "all",
    "stylers": [
      {"color": "#acd3da"},
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry.fill",
    "stylers": [
      {"visibility": "on"},
      {"color": "#c0dfe7"}
    ]
  }
];
