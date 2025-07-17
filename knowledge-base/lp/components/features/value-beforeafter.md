# value-beforeafter: ビフォーアフター比較

## 推奨用途
- 改善効果の視覚化
- 問題と解決の対比
- 導入前後の変化

## レイアウトパターン
1. **左右分割型**: 中央に分割線
2. **上下配置型**: モバイル向き
3. **スライダー型**: インタラクティブ

## 視覚的な差別化
```
Before側:
- 彩度: 低め（グレー寄り）
- 明度: 暗め
- アイコン: ネガティブ（×、😞）

After側:
- 彩度: 高め（鮮やか）
- 明度: 明るめ
- アイコン: ポジティブ（✓、😊）
```

## コンテンツ例
```
Before:
- 手作業で8時間
- エラー率15%
- 月末は深夜残業

After:
- 自動化で30分
- エラー率0.1%
- 定時退社可能
```

## 業界別推奨構成での使用例
**教育/コース（標準8セクション）**:
```
1. hero-video（講師メッセージ）
2. value-beforeafter（成果） ← このコンポーネント
3. value-process（カリキュラム）
4. social-testimonials（受講生の声）
5. pricing-single（受講料）
6. guarantee-badge（返金保証）
7. faq-accordion（よくある質問）
8. cta-primary（申込み）
```

## 関連コンポーネント
- [value-3column](../features/value-3column.md) - 並列での価値提案
- [social-testimonials](../social-proof/social-testimonials.md) - 実際の成果の証明
- [value-process](../features/value-process.md) - 変化への道筋を説明