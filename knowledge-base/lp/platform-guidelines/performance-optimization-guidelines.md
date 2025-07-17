# ランディングページ・パフォーマンス最適化ガイドライン

## 📋 Core Web Vitals最適化

### 主要指標と目標値
```
Largest Contentful Paint (LCP):
- 目標: 2.5秒以内
- 最大許容: 4.0秒
- 測定対象: 最大の画像・テキストブロック
- 改善方法: 画像最適化、CDN活用、サーバー応答改善

First Input Delay (FID):
- 目標: 100ミリ秒以内
- 最大許容: 300ミリ秒
- 測定対象: ユーザー最初の操作への応答時間
- 改善方法: JavaScript最適化、メインスレッド負荷軽減

Cumulative Layout Shift (CLS):
- 目標: 0.1以下
- 最大許容: 0.25
- 測定対象: 視覚的安定性
- 改善方法: 画像・広告サイズ指定、フォント読込最適化
```

### 測定ツール
```
主要ツール:
- Google PageSpeed Insights
- Lighthouse (Chrome DevTools)
- WebPageTest
- GTmetrix
- Chrome User Experience Report

モニタリング:
- Search Console Core Web Vitals
- Real User Monitoring (RUM)
- Synthetic Monitoring
- Custom Performance Tracking
```

## 🖼️ 画像最適化戦略

### 画像フォーマット選択
```
フォーマット比較:
WebP:
- 圧縮率: JPEGより25-35%削減
- 透過対応: あり
- ブラウザサポート: 95%+
- 推奨用途: 写真、複雑な画像

AVIF:
- 圧縮率: WebPより20%削減
- 品質: 最高
- ブラウザサポート: 70%+
- 推奨用途: 高品質要求画像

JPEG:
- 圧縮率: 標準
- 透過対応: なし
- ブラウザサポート: 100%
- 推奨用途: フォールバック

PNG:
- 圧縮率: 低い
- 透過対応: あり
- ブラウザサポート: 100%
- 推奨用途: ロゴ、アイコン
```

### レスポンシブ画像実装
```html
<!-- srcset実装例 -->
<img 
  srcset="hero-320w.webp 320w,
          hero-640w.webp 640w,
          hero-1280w.webp 1280w,
          hero-1920w.webp 1920w"
  sizes="(max-width: 640px) 100vw,
         (max-width: 1024px) 50vw,
         1280px"
  src="hero-1280w.jpg"
  alt="ヒーローイメージ"
  loading="lazy"
  decoding="async"
>

<!-- picture要素での実装 -->
<picture>
  <source type="image/avif" srcset="hero.avif">
  <source type="image/webp" srcset="hero.webp">
  <img src="hero.jpg" alt="ヒーローイメージ" loading="lazy">
</picture>
```

### 画像最適化チェックリスト
```
圧縮・最適化:
- [ ] 適切な圧縮率（品質85%程度）
- [ ] 次世代フォーマット対応
- [ ] 適切なサイズでの配信
- [ ] Lazy Loading実装
- [ ] CDN経由での配信

実装確認:
- [ ] srcset/sizes属性の設定
- [ ] フォールバック画像の用意
- [ ] alt属性の適切な設定
- [ ] width/height属性の指定
- [ ] アスペクト比の保持
```

## ⚡ JavaScript最適化

### バンドルサイズ削減
```javascript
// Code Splitting実装例
// React環境での動的インポート
const HeavyComponent = lazy(() => import('./HeavyComponent'));

function App() {
  return (
    <Suspense fallback={<Loading />}>
      <HeavyComponent />
    </Suspense>
  );
}

// Webpack設定例
module.exports = {
  optimization: {
    splitChunks: {
      chunks: 'all',
      cacheGroups: {
        vendor: {
          test: /[\\/]node_modules[\\/]/,
          priority: 10
        }
      }
    }
  }
};
```

### Critical JavaScript
```javascript
// Critical Path最適化
// 1. インライン化すべきスクリプト
<script>
  // フォント読み込み最適化
  document.fonts.load('1rem Inter');
  
  // Critical CSS適用
  document.documentElement.className = 'js';
</script>

// 2. 非同期読み込み
<script src="non-critical.js" async></script>
<script src="analytics.js" defer></script>

// 3. Resource Hints
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="dns-prefetch" href="https://api.example.com">
```

## 🎨 CSS最適化

### Critical CSS抽出
```css
/* Critical CSS (インライン化) */
<style>
  /* Above-the-fold styles */
  body { margin: 0; font-family: system-ui; }
  .hero { height: 100vh; background: #f0f0f0; }
  .hero-title { font-size: 3rem; margin: 0; }
  /* ... 最小限のスタイル ... */
</style>

/* Non-critical CSS (非同期読み込み) */
<link rel="preload" href="styles.css" as="style" onload="this.onload=null;this.rel='stylesheet'">
<noscript><link rel="stylesheet" href="styles.css"></noscript>
```

### CSS最小化戦略
```
最適化手法:
- 未使用CSSの削除（PurgeCSS）
- CSSの圧縮（cssnano）
- CSS-in-JSの最適化
- CSS Modulesの活用
- PostCSSでの自動最適化

パフォーマンス目標:
- Critical CSS: 14KB以下
- Total CSS: 50KB以下
- 初回レンダリング: 1秒以内
```

## 🌐 ネットワーク最適化

### HTTP/2・HTTP/3活用
```
設定項目:
- Server Push（慎重に使用）
- 多重化の活用
- ヘッダー圧縮
- 優先度制御
- 0-RTTハンドシェイク（HTTP/3）

最適化効果:
- 並列リクエスト処理
- レイテンシ削減
- 帯域幅効率化
- 接続再利用
```

### CDN戦略
```
CDN設定:
- エッジロケーション選択
- キャッシュルール設定
- 画像最適化機能
- 圧縮設定
- セキュリティ機能

推奨プロバイダ:
- Cloudflare
- Fastly
- Amazon CloudFront
- Akamai
- Google Cloud CDN
```

## 📱 モバイル最適化

### モバイルファースト実装
```css
/* モバイルファーストCSS */
/* Base styles (mobile) */
.container {
  padding: 1rem;
  width: 100%;
}

/* Tablet and up */
@media (min-width: 768px) {
  .container {
    padding: 2rem;
    max-width: 768px;
    margin: 0 auto;
  }
}

/* Desktop */
@media (min-width: 1024px) {
  .container {
    max-width: 1200px;
  }
}
```

### タッチ最適化
```javascript
// タッチイベント最適化
let touchStartY = 0;

element.addEventListener('touchstart', (e) => {
  touchStartY = e.touches[0].clientY;
}, { passive: true });

element.addEventListener('touchmove', (e) => {
  const touchY = e.touches[0].clientY;
  const deltaY = touchY - touchStartY;
  
  // スクロール処理
  requestAnimationFrame(() => {
    handleScroll(deltaY);
  });
}, { passive: true });
```

## 🔧 サーバーサイド最適化

### キャッシュ戦略
```
Cache-Control設定:
# 静的アセット（1年）
Cache-Control: public, max-age=31536000, immutable

# HTML（キャッシュなし）
Cache-Control: no-cache, no-store, must-revalidate

# API レスポンス（5分）
Cache-Control: private, max-age=300

# 画像（1ヶ月）
Cache-Control: public, max-age=2592000
```

### 圧縮設定
```nginx
# Nginx gzip設定
gzip on;
gzip_vary on;
gzip_min_length 1024;
gzip_types text/plain text/css text/xml text/javascript 
           application/javascript application/xml+rss 
           application/json application/x-font-ttf 
           font/opentype image/svg+xml;

# Brotli圧縮
brotli on;
brotli_comp_level 6;
brotli_types text/plain text/css application/javascript 
             application/json image/svg+xml;
```

## 📊 パフォーマンス監視

### Real User Monitoring (RUM)
```javascript
// パフォーマンス計測実装
const perfData = {
  navigationStart: performance.timing.navigationStart,
  firstPaint: 0,
  firstContentfulPaint: 0,
  largestContentfulPaint: 0,
  firstInputDelay: 0,
  cumulativeLayoutShift: 0
};

// Paint Timing API
new PerformanceObserver((list) => {
  for (const entry of list.getEntries()) {
    if (entry.name === 'first-paint') {
      perfData.firstPaint = entry.startTime;
    }
  }
}).observe({ entryTypes: ['paint'] });

// LCP観測
new PerformanceObserver((list) => {
  const entries = list.getEntries();
  const lastEntry = entries[entries.length - 1];
  perfData.largestContentfulPaint = lastEntry.renderTime || lastEntry.loadTime;
}).observe({ entryTypes: ['largest-contentful-paint'] });
```

### カスタムメトリクス
```javascript
// ビジネスメトリクスの計測
class PerformanceTracker {
  constructor() {
    this.metrics = {};
  }
  
  // Time to Interactive
  measureTTI() {
    return new Promise((resolve) => {
      if ('PerformanceLongTaskTiming' in window) {
        const observer = new PerformanceObserver((list) => {
          // Long Task終了後のアイドル時間を検出
          // TTI計算ロジック
        });
        observer.observe({ entryTypes: ['longtask'] });
      }
    });
  }
  
  // Custom Business Metrics
  trackConversionPath() {
    this.metrics.conversionStart = performance.now();
    // フォーム入力、クリックなどを追跡
  }
}
```

## 🚀 最適化優先順位

### インパクト vs 実装難易度
```
高インパクト・低難易度:
1. 画像最適化（WebP採用）
2. gzip/Brotli圧縮
3. ブラウザキャッシュ設定
4. 不要なJavaScript削除
5. Critical CSS抽出

中インパクト・中難易度:
1. CDN導入
2. Code Splitting
3. Lazy Loading実装
4. Resource Hints追加
5. フォント最適化

低インパクト・高難易度:
1. Service Worker実装
2. Server Side Rendering
3. Edge Computing
4. カスタムビルドツール
5. マイクロ最適化
```

## ✅ パフォーマンス最適化チェックリスト

### 初期読込最適化
- [ ] Critical CSS インライン化
- [ ] 非Critical CSS 非同期読込
- [ ] Critical JavaScript 最小化
- [ ] Resource Hints 実装
- [ ] Above-the-fold 最適化

### アセット最適化
- [ ] 画像の次世代フォーマット
- [ ] 適切な画像サイズ
- [ ] Lazy Loading 実装
- [ ] JavaScript バンドル最適化
- [ ] CSS 最小化

### ネットワーク最適化
- [ ] HTTP/2 有効化
- [ ] gzip/Brotli 圧縮
- [ ] CDN 活用
- [ ] キャッシュ戦略実装
- [ ] API 最適化

### 測定・監視
- [ ] Core Web Vitals 測定
- [ ] RUM 実装
- [ ] 定期的な監査
- [ ] 競合比較
- [ ] 改善サイクル確立

### モバイル最適化
- [ ] レスポンシブ実装
- [ ] タッチ最適化
- [ ] モバイル向けアセット
- [ ] 帯域幅考慮
- [ ] オフライン対応