# safe_area_height 

Demonstrates how to use the safe_area_height plugin.

## Example

- Add th dependecies in pubspec.yaml 

```
safe_area_height: 0.0.1
```

- Import safe_area_height package;

- Get the top/bottom safe area height like this:

```
Future<void> getSafeAreaHeight() async {
    double safeAreaHeight = 0;
    double safeAreaHeightBottom = 0;

    safeAreaHeight = await SafeAreaHeight.safeAreaHeightTop;
    safeAreaHeightBottom = await SafeAreaHeight.safeAreaHeightBottom;

    setState(() {
      _safeAreaHeight = safeAreaHeight;
      _safeAreaHeightBottom = safeAreaHeightBottom;
    });
  }
```