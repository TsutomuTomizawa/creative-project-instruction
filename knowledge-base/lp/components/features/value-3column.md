# value-3column: 3カラム特徴説明

## 推奨用途
- 主要な3つの価値を並列表示
- 機能比較
- サービスの特徴説明

## レスポンシブ対応
```
デスクトップ: 3カラム横並び
タブレット: 3カラム（狭め）または2-1配置
モバイル: 1カラム縦積み
```

## 各カラムの構成
```
[アイコン/イラスト]
 ↓ 20px
[見出し] - 太字、20文字以内
 ↓ 10px
[説明文] - 60-80文字
 ↓ 15px
[詳細リンク]（オプション）
```

## デザインバリエーション
1. **アイコン上配置型**: 中央揃え、シンプル
2. **左アイコン型**: アイコンと見出しを横並び
3. **カード型**: 背景色付き、影付き、ホバー効果

## アイコン仕様
- サイズ: 60-80px
- スタイル: Line/Filled/Duotone統一
- 色: ブランドカラーまたはグレースケール

## 業界別推奨構成での使用例
**SaaS/B2B（標準7セクション）**:
```
1. hero-split
2. social-logos（信頼性）
3. value-process（仕組み説明）
4. value-3column（主要機能） ← このコンポーネント
5. social-testimonials（事例）
6. pricing-comparison（料金）
7. cta-primary + faq-accordion
```

**EC/D2C（標準6セクション）**:
```
1. hero-fullscreen
2. value-3column（商品特徴） ← このコンポーネント
3. social-testimonials（レビュー）
4. urgency-timer（限定性）
5. guarantee-badge（保証）
6. cta-sticky（モバイル固定）
```

## 関連コンポーネント
- [value-beforeafter](../features/value-beforeafter.md) - 比較形式での価値提案
- [value-process](../features/value-process.md) - プロセス説明
- [social-testimonials](../social-proof/social-testimonials.md) - 価値の証明