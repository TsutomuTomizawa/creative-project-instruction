---
marker: #COMPONENT_LIBRARY
prefix: "LP_OUTPUT: コンポーネントライブラリ - モジュール別UI要素と実装仕様"
title: コンポーネントライブラリ
priority: standard
cache_hint: stable
category: output
tags: [コンポーネント, UI, デザイン, 実装, レスポンシブ]
dependencies:
  required: [#STORY_MODULES]
  recommended: [#FLOW_DESIGN]
conversation_tracking:
  - コンポーネント選択
  - 実装仕様
  - レスポンシブ対応
  - ビジュアル最適化
version: 1.0
last_updated: 2025-01-24
---

# コンポーネントライブラリ（Component Library）

## 概要

コンポーネントライブラリは、各ストーリーモジュールに対応したUI要素の詳細仕様と実装方法を提供します。効果的なビジュアルコミュニケーションを実現するための実証済みコンポーネント集です。

## ヒーローコンポーネント

### hero-fullscreen（フルスクリーンヒーロー）

#### 仕様
```
用途: インパクトのあるファーストビュー
推奨モジュール: 問題認識、ビジョン、価値提示
サイズ: 100vh（モバイル: 80vh）
```

#### 実装コード
```html
<section class="hero-fullscreen">
  <div class="hero-background">
    <img src="hero-bg.jpg" alt="" loading="eager">
    <div class="overlay"></div>
  </div>
  <div class="hero-content">
    <h1 class="hero-title">売上を3倍にする<br>唯一のCRMツール</h1>
    <p class="hero-subtitle">AIが営業活動を自動化し、本来の仕事に集中できる環境を</p>
    <div class="hero-cta">
      <button class="btn-primary">無料で始める</button>
      <button class="btn-secondary">資料ダウンロード</button>
    </div>
  </div>
  <div class="scroll-indicator">
    <span>SCROLL</span>
    <div class="arrow"></div>
  </div>
</section>
```

#### スタイル
```css
.hero-fullscreen {
  position: relative;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

.hero-background {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
}

.hero-background img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
}

.hero-content {
  text-align: center;
  color: white;
  max-width: 800px;
  padding: 0 20px;
}

.hero-title {
  font-size: clamp(2rem, 5vw, 4rem);
  font-weight: bold;
  margin-bottom: 1rem;
  line-height: 1.2;
}

@media (max-width: 768px) {
  .hero-fullscreen {
    height: 80vh;
  }
}
```

### hero-split（分割型ヒーロー）

#### 仕様
```
用途: テキストとビジュアルのバランス
推奨モジュール: 価値提示、差別化
レイアウト: 50/50分割（モバイル: 縦積み）
```

#### 実装コード
```html
<section class="hero-split">
  <div class="split-content">
    <div class="text-side">
      <h1>業務時間を80%削減</h1>
      <p>AIが定型業務を自動化。あなたは創造的な仕事に集中できます。</p>
      <ul class="benefit-list">
        <li>レポート作成を自動化</li>
        <li>データ分析を瞬時に</li>
        <li>チーム連携をスムーズに</li>
      </ul>
      <button class="btn-primary">今すぐ始める</button>
    </div>
    <div class="visual-side">
      <img src="product-demo.gif" alt="製品デモ">
    </div>
  </div>
</section>
```

## コンテンツコンポーネント

### benefit-cards（ベネフィットカード）

#### 仕様
```
用途: 主要価値の視覚的表現
推奨モジュール: 価値提示、差別化
レイアウト: 3カラムグリッド
```

#### 実装コード
```html
<section class="benefit-cards">
  <div class="container">
    <h2 class="section-title">3つの主要メリット</h2>
    <div class="cards-grid">
      <div class="benefit-card">
        <div class="card-icon">
          <svg><!-- アイコン --></svg>
        </div>
        <h3>時間削減</h3>
        <p>作業時間を80%削減し、本来の営業活動に集中</p>
        <a href="#" class="card-link">詳しく見る →</a>
      </div>
      <!-- 他のカード -->
    </div>
  </div>
</section>
```

#### スタイル
```css
.cards-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 30px;
  margin-top: 50px;
}

.benefit-card {
  background: white;
  padding: 40px 30px;
  border-radius: 10px;
  box-shadow: 0 5px 20px rgba(0,0,0,0.1);
  transition: transform 0.3s;
}

.benefit-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0,0,0,0.15);
}

.card-icon {
  width: 60px;
  height: 60px;
  margin-bottom: 20px;
  color: var(--primary-color);
}
```

### comparison-table（比較表）

#### 仕様
```
用途: 競合との明確な差別化
推奨モジュール: 差別化
表示: レスポンシブテーブル
```

#### 実装コード
```html
<section class="comparison-table">
  <div class="container">
    <h2>他社サービスとの比較</h2>
    <div class="table-wrapper">
      <table>
        <thead>
          <tr>
            <th>機能</th>
            <th class="highlight">弊社</th>
            <th>A社</th>
            <th>B社</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>AI自動化</td>
            <td class="highlight">◎</td>
            <td>△</td>
            <td>×</td>
          </tr>
          <!-- 他の行 -->
        </tbody>
      </table>
    </div>
  </div>
</section>
```

## インタラクティブコンポーネント

### faq-accordion（FAQアコーディオン）

#### 仕様
```
用途: よくある質問への回答
推奨モジュール: 不安解消
動作: クリックで開閉
```

#### 実装コード
```html
<section class="faq-accordion">
  <div class="container">
    <h2>よくある質問</h2>
    <div class="faq-list">
      <div class="faq-item">
        <button class="faq-question">
          <span>導入にはどれくらい時間がかかりますか？</span>
          <svg class="icon"><!-- + アイコン --></svg>
        </button>
        <div class="faq-answer">
          <p>最短1日で導入可能です。専任サポートが設定をお手伝いします。</p>
        </div>
      </div>
      <!-- 他の質問 -->
    </div>
  </div>
</section>
```

#### JavaScript
```javascript
document.querySelectorAll('.faq-question').forEach(button => {
  button.addEventListener('click', () => {
    const item = button.parentElement;
    const answer = item.querySelector('.faq-answer');
    
    item.classList.toggle('open');
    
    if (item.classList.contains('open')) {
      answer.style.maxHeight = answer.scrollHeight + 'px';
    } else {
      answer.style.maxHeight = '0';
    }
  });
});
```

### countdown-timer（カウントダウンタイマー）

#### 仕様
```
用途: 緊急性の演出
推奨モジュール: 限定性、行動促進
更新: 1秒ごと
```

#### 実装コード
```javascript
class CountdownTimer {
  constructor(endDate, element) {
    this.endDate = new Date(endDate);
    this.element = element;
    this.update();
    setInterval(() => this.update(), 1000);
  }
  
  update() {
    const now = new Date();
    const diff = this.endDate - now;
    
    if (diff <= 0) {
      this.element.innerHTML = 'キャンペーン終了';
      return;
    }
    
    const days = Math.floor(diff / (1000 * 60 * 60 * 24));
    const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
    const seconds = Math.floor((diff % (1000 * 60)) / 1000);
    
    this.element.innerHTML = `
      <div class="timer-unit">
        <span class="timer-value">${days}</span>
        <span class="timer-label">日</span>
      </div>
      <div class="timer-unit">
        <span class="timer-value">${hours}</span>
        <span class="timer-label">時間</span>
      </div>
      <div class="timer-unit">
        <span class="timer-value">${minutes}</span>
        <span class="timer-label">分</span>
      </div>
      <div class="timer-unit">
        <span class="timer-value">${seconds}</span>
        <span class="timer-label">秒</span>
      </div>
    `;
  }
}
```

## 信頼構築コンポーネント

### testimonial-carousel（お客様の声カルーセル）

#### 仕様
```
用途: 社会的証明の提示
推奨モジュール: 信頼構築、社会的証明
表示: スライド式
```

#### 実装コード
```html
<section class="testimonial-carousel">
  <div class="container">
    <h2>お客様の声</h2>
    <div class="carousel-wrapper">
      <div class="testimonial-slide">
        <div class="testimonial-content">
          <p class="testimonial-text">
            「導入3ヶ月で売上が2.5倍に。
            特にAI分析機能が素晴らしく、
            営業戦略が劇的に改善しました。」
          </p>
          <div class="testimonial-author">
            <img src="avatar.jpg" alt="山田太郎様">
            <div>
              <p class="author-name">山田太郎 様</p>
              <p class="author-title">株式会社ABC 営業部長</p>
            </div>
          </div>
        </div>
      </div>
      <!-- 他のスライド -->
    </div>
    <div class="carousel-controls">
      <button class="prev">←</button>
      <button class="next">→</button>
    </div>
  </div>
</section>
```

### trust-badges（信頼バッジ）

#### 仕様
```
用途: 認証・実績の可視化
推奨モジュール: 信頼構築
配置: ヘッダー、フッター、CTA付近
```

#### 実装コード
```html
<div class="trust-badges">
  <div class="badge">
    <img src="iso-cert.png" alt="ISO認証">
  </div>
  <div class="badge">
    <img src="ssl-secure.png" alt="SSL保護">
  </div>
  <div class="badge">
    <div class="badge-content">
      <span class="badge-number">10,000+</span>
      <span class="badge-label">導入企業</span>
    </div>
  </div>
</div>
```

## CTAコンポーネント

### floating-cta（フローティングCTA）

#### 仕様
```
用途: 常時表示の行動促進
推奨モジュール: 行動促進
位置: 画面下部固定
```

#### 実装コード
```html
<div class="floating-cta">
  <div class="cta-content">
    <p class="cta-text">今なら初月無料！</p>
    <button class="cta-button">無料で始める</button>
  </div>
</div>
```

#### スタイル
```css
.floating-cta {
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  background: var(--primary-color);
  color: white;
  padding: 15px;
  box-shadow: 0 -5px 20px rgba(0,0,0,0.1);
  z-index: 1000;
  transform: translateY(100%);
  transition: transform 0.3s;
}

.floating-cta.show {
  transform: translateY(0);
}

@media (max-width: 768px) {
  .floating-cta {
    padding: 10px;
  }
  
  .cta-content {
    display: flex;
    flex-direction: column;
    gap: 10px;
  }
}
```

## レスポンシブ対応ガイドライン

### ブレークポイント
```css
/* モバイルファースト */
/* デフォルト: 320px〜 */

/* タブレット */
@media (min-width: 768px) {
  /* タブレット用スタイル */
}

/* デスクトップ */
@media (min-width: 1024px) {
  /* デスクトップ用スタイル */
}

/* 大画面 */
@media (min-width: 1440px) {
  /* 大画面用スタイル */
}
```

### フォントサイズ最適化
```css
/* Clamp関数による自動調整 */
.hero-title {
  font-size: clamp(2rem, 5vw, 4rem);
}

.section-title {
  font-size: clamp(1.5rem, 4vw, 2.5rem);
}

.body-text {
  font-size: clamp(1rem, 2vw, 1.125rem);
}
```

## パフォーマンス最適化

### 画像最適化
```html
<!-- 次世代フォーマット対応 -->
<picture>
  <source srcset="image.avif" type="image/avif">
  <source srcset="image.webp" type="image/webp">
  <img src="image.jpg" alt="説明" loading="lazy">
</picture>

<!-- レスポンシブ画像 -->
<img srcset="small.jpg 300w,
             medium.jpg 600w,
             large.jpg 1200w"
     sizes="(max-width: 600px) 100vw,
            (max-width: 1200px) 50vw,
            600px"
     src="medium.jpg"
     alt="説明">
```

### アニメーション最適化
```css
/* GPUアクセラレーション活用 */
.animate-element {
  will-change: transform;
  transform: translateZ(0);
}

/* Intersection Observerによる遅延実行 */
.fade-in {
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 0.6s, transform 0.6s;
}

.fade-in.visible {
  opacity: 1;
  transform: translateY(0);
}
```

---

**次のステップ**: コンポーネントを選択したら、[#COPYWRITING_FORMULAS](../output/#COPYWRITING_FORMULAS.md)でテキストコンテンツを作成し、[#OPTIMIZATION_GUIDE](../output/#OPTIMIZATION_GUIDE.md)で最適化を行います。