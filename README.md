![version](https://img.shields.io/badge/version-20%2B-E23089)
[![license](https://img.shields.io/github/license/miyako/4d-tips-jsgraph)](LICENSE)

# 4d-tips-jsgraph
[jsGraph](https://github.com/NPellet/jsGraph)の例題

<img src="https://github.com/user-attachments/assets/3b884296-ae5c-4a85-90cb-35755700751b" width=400 height=auto />

## ラインの描画

```4d
WA EXECUTE JAVASCRIPT FUNCTION(*; "graph"; "drawGraph"; *; $values; "high"; "blue"; 3; "-5,-5 0,0 5,-5"; "blue"; 5)
```

```js
function drawGraph(data, name, lineColor, lineWidth, markerPath, markerColor, markerWidth){

  const wave = Graph.newWaveform().setData(data[0], data[1]);
  
  const serie = g.newSerie(name, {
      lineColor: lineColor,
      lineWidth: lineWidth,
      markers: true,
      markerStyles: {
          unselected: {
              default: {
                  shape: 'polyline',
                  points: markerPath,
                  strokeWidth: markerWidth,
                  stroke: markerColor,
                  fill: 'none'
              }
          }
      }
  })
  .autoAxis()
  .setWaveform(wave)
  
  g.autoScaleAxes();
  g.draw();
}
```
