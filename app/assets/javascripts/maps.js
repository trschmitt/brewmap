// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
mapboxgl.accessToken =
  "pk.eyJ1IjoidHJzY2htaXR0IiwiYSI6ImNqNWxodmx5dzM1M20zM25xaDk2Y3I2cncifQ.GzXoUfDcynmv2cqlIT_2hQ";
var map = new mapboxgl.Map({
  container: "map",
  style: "mapbox://styles/mapbox/streets-v10",
  center: [-110, 45],
  zoom: 5.5
});

map.on("load", function() {
  map.addLayer({
    id: "breweries",
    type: "symbol",
    source: {
      type: "geojson",
      data: {
        type: "FeatureCollection",
        features: [
          {
            type: "Feature",
            geometry: {
              type: "Point",
              coordinates: [-108.5925207, 45.744294]
            },
            properties: {
              title: "Canyon Creek Brewing",
              icon: "circle"
            }
          },
          {
            type: "Feature",
            geometry: {
              type: "Point",
              coordinates: [-114.083249, 48.0642939]
            },
            properties: {
              title: "Flathead Lake Brewing Company",
              icon: "circle"
            }
          },
          {
            type: "Feature",
            geometry: {
              type: "Point",
              coordinates: [-108.7641589, 45.6712348]
            },
            properties: {
              title: "High Plains Brewing",
              icon: "circle"
            }
          },
          {
            type: "Feature",
            geometry: {
              type: "Point",
              coordinates: [-111.178327, 45.775047]
            },
            properties: {
              title: "Outlaw Brewing",
              icon: "circle"
            }
          },
          {
            type: "Feature",
            geometry: {
              type: "Point",
              coordinates: [-108.4978757, 45.7860789]
            },
            properties: {
              title: "Yellowstone Valley Brewing Co.",
              icon: "circle"
            }
          }
        ]
      }
    },
    layout: {
      "icon-image": "{icon}-15",
      "text-field": "{title}",
      "text-font": ["Open Sans Semibold", "Arial Unicode MS Bold"],
      "text-offset": [0, 0.6],
      "text-anchor": "top"
    }
  });

  // When a click event occurs on a feature in the places layer, open a popup at the
  // location of the feature, with description HTML from its properties.
  map.on("click", "breweries", function(e) {
    new mapboxgl.Popup()
      .setLngLat(e.features[0].geometry.coordinates)
      .setHTML(e.features[0].properties.title)
      .addTo(map);
  });

  // Change the cursor to a pointer when the mouse is over the places layer.
  map.on("mouseenter", "breweries", function() {
    map.getCanvas().style.cursor = "pointer";
  });

  // Change it back to a pointer when it leaves.
  map.on("mouseleave", "breweries", function() {
    map.getCanvas().style.cursor = "";
  });
});
