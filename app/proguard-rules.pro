# 保留 WebView
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keep public class android.webkit.** { *; }
-dontwarn android.webkit.**
