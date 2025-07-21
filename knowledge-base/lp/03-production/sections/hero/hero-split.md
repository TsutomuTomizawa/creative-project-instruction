# hero-split: スプリットヒーロー

## 推奨用途
- SaaS、B2Bサービス
- 説明が必要な商品
- デモ画面を見せたい場合

## レイアウト比率
```
デスクトップ: 50:50 または 40:60
タブレット: 50:50
モバイル: 縦積み（テキスト→ビジュアル）
```

## 左側（テキスト）要素
```
□ 見出し（30-40文字）
□ 説明文（80-120文字）
□ 箇条書き（3-5項目、各20文字以内）
□ CTAボタン（プライマリ＋セカンダリ）
□ 信頼性要素（認証マーク等）
```

## 右側（ビジュアル）要素
```
□ 製品スクリーンショット
□ 動画プレイヤー（サムネイル付き）
□ インタラクティブデモ
□ イラスト/3Dグラフィック
```

## 実装メモ
- 左右の高さを揃える（Flexbox使用）
- モバイルでの順序制御（order属性）
- ビジュアルは遅延読み込み

## 業界別推奨構成での使用例
**SaaS/B2B（標準7セクション）**:
```
1. hero-split ← このコンポーネント
2. social-logos（信頼性）
3. value-process（仕組み説明）
4. value-3column（主要機能）
5. social-testimonials（事例）
6. pricing-comparison（料金）
7. cta-primary + faq-accordion
```

## 関連コンポーネント
- [hero-fullscreen](../hero/hero-fullscreen.md) - よりビジュアル重視のアプローチ
- [hero-video](../hero/hero-video.md) - 動画背景バージョン
- [value-process](../features/value-process.md) - 仕組み説明との組み合わせ