---
marker: #AUDIENCE_INSIGHT
prefix: "RESEARCH_CONTEXT: ターゲット視聴者分析 - 世代別・デバイス別・シーン別の視聴行動インサイト"
title: ターゲット視聴者分析
priority: standard
cache_hint: stable
category: research
tags: [ターゲット分析, 視聴行動, ペルソナ, 視聴環境]
dependencies:
  required: []
  recommended: [#HOOK_METHODOLOGY]
conversation_tracking:
  - 特定したターゲット層
  - 視聴環境の設定
  - 行動特性の分析結果
version: 1.0
last_updated: 2025-01-24
---

# RESEARCH_CONTEXT: ターゲット視聴者分析 - 世代別・デバイス別・シーン別の視聴行動インサイト

## 概要
動画広告のターゲット視聴者を多角的に分析し、効果的な動画設計のためのインサイトを提供します。

## 入力・出力仕様

### 入力
- 商品・サービス情報
- 想定ターゲット層（年齢・性別・地域等）
- 配信プラットフォーム候補
- キャンペーン目的

### 出力
- 詳細なペルソナ設定
- 視聴行動パターン分析
- プラットフォーム選定推奨
- コンテンツ設計指針

## 世代別視聴特性

### Z世代（18-25歳）
**視聴習慣**:
- 短尺動画中心（15-30秒）
- 倍速視聴も一般的
- マルチタスク視聴
- 平均視聴時間: 日3時間以上

**好まれるコンテンツ**:
- エンタメ性重視
- 共感性・リアリティ
- インフルエンサー活用
- ミーム文化・トレンド要素

**プラットフォーム選好**:
1. TikTok（80%）
2. Instagram（75%）
3. YouTube（60%）

### ミレニアル世代（26-40歳）
**視聴習慣**:
- 中尺動画も視聴（30-60秒）
- 情報収集目的
- レビュー・比較重視
- 平均視聴時間: 日2時間

**好まれるコンテンツ**:
- 実用的価値
- ライフハック
- 体験談・レビュー
- ブランドストーリー

**プラットフォーム選好**:
1. YouTube（85%）
2. Facebook（60%）
3. Instagram（55%）

### X世代以上（41歳以上）
**視聴習慣**:
- 長尺も許容（60秒以上）
- PC視聴率高い
- じっくり視聴
- 平均視聴時間: 日1.5時間

**好まれるコンテンツ**:
- 信頼性重視
- 詳細な説明
- 専門家登場
- 実績・データ

**プラットフォーム選好**:
1. YouTube（70%）
2. Facebook（65%）
3. LinkedIn（30%）

## 視聴デバイス別考慮点

### モバイル視聴（70%）
**技術仕様**:
- 縦型 or 正方形優先
- 字幕必須（85%が無音視聴）
- タップ可能なCTA
- 高速読み込み（3秒以内）

**設計ポイント**:
- 画面サイズを考慮した文字サイズ
- 親指リーチ内のCTA配置
- 縦スクロールとの親和性
- データ通信量への配慮

### PC視聴（25%）
**技術仕様**:
- 横型フル活用
- 高画質対応（1080p以上）
- 詳細情報OK
- マウスオーバー考慮

**設計ポイント**:
- 大画面を活かした演出
- 複数の情報レイヤー
- インタラクティブ要素
- 長時間視聴への対応

### タブレット視聴（5%）
**技術仕様**:
- 両方向対応
- 中間的な画面サイズ
- タッチ操作前提

## 視聴シーン分析

### 時間帯別視聴行動

**早朝（6-9時）**
- 場所: 自宅、通勤中
- 状態: 準備中、移動中
- 音声: OFF（70%）
- 適した内容: ニュース、天気、短い情報

**日中（9-18時）**
- 場所: オフィス、外出先
- 状態: 仕事の合間、休憩中
- 音声: OFF（85%）
- 適した内容: 仕事関連、スキルアップ

**夜間（18-22時）**
- 場所: 自宅、リビング
- 状態: リラックス
- 音声: ON（60%）
- 適した内容: エンタメ、趣味、買い物

**深夜（22時以降）**
- 場所: ベッド、個室
- 状態: 就寝前
- 音声: イヤホン（50%）
- 適した内容: 癒し系、ASMR、長尺コンテンツ

### 場所別視聴特性

**公共交通機関**
- 音声: 必ずOFF
- 視聴時間: 5-30分
- 画面: 縦持ち
- 注意: 揺れ、混雑

**自宅リビング**
- 音声: ON可能
- 視聴時間: 制限なし
- 画面: 自由
- 注意: 家族の存在

**職場・オフィス**
- 音声: OFF/イヤホン
- 視聴時間: 短時間
- 画面: PC多い
- 注意: 周囲の目

## ターゲット分析テンプレート

### 視聴者プロファイル作成
```
基本属性:
- 年齢層：[記入]
- 性別：[記入]
- 職業/役職：[記入]
- 年収層：[記入]
- 居住地域：[記入]

ライフスタイル:
- 趣味・関心：[記入]
- メディア接触：[記入]
- 購買行動：[記入]
- 価値観：[記入]
```

### 視聴環境マッピング
```
メインデバイス:
□ スマートフォン（  %）
□ PC（  %）
□ タブレット（  %）

音声環境:
□ ON（  %）
□ OFF（  %）
□ イヤホン（  %）

主な視聴場所:
□ 自宅（  %）
□ 通勤中（  %）
□ オフィス（  %）
□ その他（  %）
```

### 視聴行動特性
```
動画視聴習慣:
- 1日の視聴時間：[記入]
- よく見るジャンル：[記入]
- 好む動画の長さ：[記入]
- スキップ傾向：[記入]

注目ポイント:
- 最初の3秒で判断する要素：[記入]
- スキップ/離脱の理由：[記入]
- 最後まで見る理由：[記入]
- CTAクリックの理由：[記入]
```

## 心理状態別アプローチ

### 情報収集モード（能動的）
**特徴**: 具体的な目的あり
**求める情報**: 詳細、比較、スペック
**効果的な訴求**: 論理的、データ重視
**動画設計**: 構造的、段階的説明

### 暇つぶしモード（受動的）
**特徴**: 時間消費目的
**求める情報**: エンタメ、新発見
**効果的な訴求**: 感情的、サプライズ
**動画設計**: テンポ良く、飽きさせない

### 悩み解決モード（切実）
**特徴**: 問題意識が明確
**求める情報**: 解決策、体験談
**効果的な訴求**: 共感、実績提示
**動画設計**: 問題→解決の明確な流れ

### 学習モード（向上心）
**特徴**: スキルアップ意欲
**求める情報**: ノウハウ、専門知識
**効果的な訴求**: 権威性、成長実感
**動画設計**: ステップバイステップ

## プラットフォーム別最適化

### YouTube
**ユーザー特性**:
- 幅広い年齢層
- 長時間視聴も可
- 検索での流入多い

**最適化ポイント**:
- SEO対策（タイトル、説明文）
- サムネイル重視
- エンドスクリーン活用
- チャプター機能

### TikTok
**ユーザー特性**:
- 若年層中心
- 短尺動画のみ
- アルゴリズム依存

**最適化ポイント**:
- 最初の1秒勝負
- トレンド要素必須
- BGM選定重要
- ループ再生考慮

### Instagram
**ユーザー特性**:
- ビジュアル重視
- ストーリーズ活用
- インフルエンサー多い

**最適化ポイント**:
- 美しい映像
- 縦型対応必須
- ハッシュタグ戦略
- IGTVとリールの使い分け

### Facebook
**ユーザー特性**:
- 中高年層多い
- シェア文化
- コミュニティ重視

**最適化ポイント**:
- 字幕必須
- 感動系強い
- シェアされやすさ
- 3秒オートプレイ対応

## 行動促進要因

### 視聴継続の要因
1. **最初の3秒のインパクト**
2. **ストーリーの引き込み**
3. **視覚的な変化**
4. **期待感の醸成**

### CTAクリックの要因
1. **明確なベネフィット**
2. **限定性・緊急性**
3. **簡単な次のステップ**
4. **信頼性の担保**

### シェア・拡散の要因
1. **感情的な共感**
2. **有益な情報**
3. **エンタメ性**
4. **社会的意義**

## チェックリスト

### ターゲット設定時
- [ ] 年齢層の明確化
- [ ] 視聴デバイスの想定
- [ ] 視聴シーンの特定
- [ ] 心理状態の理解

### プラットフォーム選定時
- [ ] ターゲットとの親和性
- [ ] 技術仕様の確認
- [ ] 競合の配信状況
- [ ] 予算との整合性

### 動画設計時
- [ ] 音声ON/OFF両対応
- [ ] デバイス最適化
- [ ] 視聴シーン考慮
- [ ] 行動促進要因の組み込み

## まとめ
ターゲット視聴者の特性を深く理解し、視聴環境や心理状態に合わせた動画設計を行うことで、効果的な動画広告が実現します。データに基づいた分析と、人間心理への理解を組み合わせて活用してください。