---
uid: orc.skia
title: Orc.Skia
---

Find the source at [https://github.com/WildGums/Orc.Skia](https://github.com/WildGums/Orc.Skia).

| | |
|-|-|
| Chat | [![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Skia) |
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.Skia.svg)](https://www.nuget.org/packages/Orc.Skia) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.Skia.svg)](https://www.nuget.org/packages/Orc.Skia) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.Skia.svg)](https://www.nuget.org/packages/Orc.Skia) |


This library provides a XAML canvas for XAML platforms (WPF & UWP) to provide a DPI-aware Skia canvas.

## Key features

- DPI-aware rendering using [SkiaSharp](https://github.com/mono/SkiaSharp)
- Supports both WPF and UWP platforms
- Provides a `SkiaCanvas` control that integrates seamlessly with XAML layouts
- Handles HiDPI and multi-monitor scenarios automatically

## Getting started

Add the `Orc.Skia` NuGet package to your project, then add the `SkiaCanvas` control to your XAML:

```xml
xmlns:orcskia="http://schemas.wildgums.com/orc/skia"

<orcskia:SkiaCanvas x:Name="skiaCanvas" />
```

Subscribe to the `DrawSurface` event to draw on the canvas using SkiaSharp:

```csharp
skiaCanvas.DrawSurface += OnDrawSurface;

private void OnDrawSurface(object sender, SKPaintSurfaceEventArgs e)
{
    var canvas = e.Surface.Canvas;
    canvas.Clear(SKColors.White);

    using var paint = new SKPaint
    {
        Color = SKColors.Blue,
        IsAntialias = true,
        StrokeWidth = 2,
        Style = SKPaintStyle.Stroke
    };

    canvas.DrawCircle(100, 100, 50, paint);
}
```

Call `InvalidateVisual()` on the canvas to trigger a redraw when your data changes.
