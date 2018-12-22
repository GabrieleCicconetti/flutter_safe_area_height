# safe_area_height 

Demonstrates how to use the safe_area_height plugin.

## Example

- Import safe_area_height package;

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