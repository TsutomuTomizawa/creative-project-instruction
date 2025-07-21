# social-testimonials: お客様の声

## 推奨用途
- 信頼性の向上
- 購買不安の解消
- 実績のアピール

## 表示形式
1. **カルーセル型**: 1つずつ表示、自動スライド
2. **グリッド型**: 3-6個を一覧表示
3. **引用型**: 大きな引用符付き

## 必須要素
```
□ 顔写真（またはアバター）
□ 名前（イニシャル可）
□ 所属/肩書き
□ 証言文（100-200文字）
□ 評価（★★★★★）
```

## 信頼性を高める要素
- 具体的な数値を含む
- ビフォーアフターを明記
- 使用期間を記載
- 動画testimonial（可能であれば）

## デザイン仕様
```
写真: 円形、80-100px
テキスト: 読みやすい行間（1.6-1.8）
背景: 薄いグレーまたは白
引用符: ブランドカラー
```

## 業界別推奨構成での使用例
**SaaS/B2B（標準7セクション）**:
```
1. hero-split
2. social-logos（信頼性）
3. value-process（仕組み説明）
4. value-3column（主要機能）
5. social-testimonials（事例） ← このコンポーネント
6. pricing-comparison（料金）
7. cta-primary + faq-accordion
```

**EC/D2C（標準6セクション）**:
```
1. hero-fullscreen
2. value-3column（商品特徴）
3. social-testimonials（レビュー） ← このコンポーネント
4. urgency-timer（限定性）
5. guarantee-badge（保証）
6. cta-sticky（モバイル固定）
```

**教育/コース（標準8セクション）**:
```
1. hero-video（講師メッセージ）
2. value-beforeafter（成果）
3. value-process（カリキュラム）
4. social-testimonials（受講生の声） ← このコンポーネント
5. pricing-single（受講料）
6. guarantee-badge（返金保証）
7. faq-accordion（よくある質問）
8. cta-primary（申込み）
```

## 関連コンポーネント
- [social-logos](../social-proof/social-logos.md) - 企業ロゴでの信頼性
- [social-metrics](../social-proof/social-metrics.md) - 数値での実績
- [value-beforeafter](../features/value-beforeafter.md) - 成果の可視化