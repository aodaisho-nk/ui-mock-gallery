# Handoff: AIX 採用ラストワンマイル LP

## Overview
AIX（採用業務の下流工程＝「ラストワンマイル」に残る手作業を、業務整理・運用設計・テンプレート化・標準化・定着支援まで伴走して解消するサービス）のランディングページ。目的は課題共感 → サービスの考え方の理解 → 無料相談／資料DLへの誘導。

## About the Design Files
本フォルダの `AIX LP.html` は **HTMLで作成したデザインリファレンス（プロトタイプ）** です。そのまま本番に載せるコードではありません。対象コードベースの既存環境（React / Next.js / Vue / Astro 等）のパターンとライブラリで **再実装** してください。環境がない場合は、静的LPに適したフレームワーク（例: Next.js + CSS Modules / Tailwind、または Astro）を選定してください。

## Fidelity
**High-fidelity（原型ベースのhifi）**。色・タイポグラフィ・余白・ホバー挙動は最終想定値。ただしコピーの一部（各課題の補足説明文、ステップ説明文、締めの一文）と画像はプレースホルダーで、クライアント確認後に差し替え予定。

---

## Global Layout
- コンテナ: `max-width: 1180px; margin: 0 auto; padding: 0 40px`（≤960px で `0 24px`）
- セクション縦余白: `140px 0`（≤960px で `96px 0`）
- セクション見出し（`.sec-head`）: 2カラム grid `280px 1fr`, gap 48px, 下マージン 72px。左にラベル、右に h2 + リード文（リード文 `margin-top:24px; max-width:640px; color:#55524c`）
- ラベル（`.label`）: JetBrains Mono 12px, letter-spacing .14em, uppercase, color `#8d8981`。前に 6×6px のアクセント色の正方形（gap 10px）
- body: Noto Sans JP 16px / line-height 1.9, `font-feature-settings:"palt"`, antialiased
- 見出し: Zen Kaku Gothic New 700, line-height 1.4, letter-spacing .02em, `text-wrap: pretty`

## Screens / Sections

### 0. Header（sticky）
- 高さ 72px、`position: sticky; top:0; z-index:20`
- 背景 `color-mix(in oklab, #f6f5f2 88%, transparent)` + `backdrop-filter: blur(10px)`、下線 1px `#d9d6cf`
- ロゴ: 「AIX」JetBrains Mono 500 22px, letter-spacing .08em。左に 14×14px のアクセント色正方形を45°回転（ひし形）, gap 10px
- ナビ: 14px `#55524c`, gap 36px（hover `#1b1a18`）。項目「お悩み」#problem /「AIXの考え方」#concept /「支援内容」#support
- ナビCTA: Primaryボタン（高さ44px, padding 0 20px, 14px）「無料相談 →」→ #contact
- ≤960px: テキストリンク非表示、CTAのみ

### 1. Hero
- padding-top 120px（≤960px: 72px）
- ラベル「Recruiting ── Last One Mile」（下マージン36px）
- h1: Zen Kaku Gothic New 400（通常ウェイト）, `font-size: clamp(40px, 5.6vw, 76px)`, line-height 1.3, letter-spacing .01em
  - コピー: 「ツールを入れても、<br>現場の手作業は**減らない。**」（「減らない。」はアクセント色）
- サブ行: grid `1fr auto`, gap 48px, align-items end, margin-top 48px, padding-bottom 88px（≤960px で1カラム）
  - リード: 17px `#55524c`, max-width 560px
    「AIXは、採用の“ラストワンマイル”に残る手作業を対象に、業務整理から運用設計、テンプレート化、標準化、定着支援まで伴走します。」
  - ボタン: Primary「無料で相談する →」/ Ghost「資料をダウンロード」gap 12px

#### Hero内 パイプライン図（`.pipe`）
- 全幅帯: 背景 `#eeece7`, 上下線 1px `#d9d6cf`, 内側 padding 48px 0
- 上部行: 左「HIRING PIPELINE」右「UPSTREAM ─────── DOWNSTREAM」JetBrains Mono 12px `#8d8981` letter-spacing .1em, 下マージン24px
- 工程セル: grid 8列, gap 4px（≤960px: 4列）
  - セル: 背景 `#f6f5f2`, padding 18px 14px 16px, min-height 120px, flex column space-between
  - 上: 番号 JetBrains Mono 11px `#8d8981` / 下: 工程名 Zen Kaku Gothic New 700 14px lh1.45
  - 1–3: 「採用計画」「母集団形成」「応募管理」（番号 00、通常セル）
  - 4–8（manual）: 「求人票作成」「応募者のスクリーニング」「面接日程調整」「評価シート作成」「候補者対応」（番号01–05、番号色アクセント）
    背景 `repeating-linear-gradient(135deg, accent/10% 0 6px, transparent 6px 12px)` + `#f6f5f2`
- 下段バー: 同じ8列grid, margin-top 12px, 高さ34px, 12px 700 letter-spacing .04em, padding 0 14px
  - 左3列: 黒地 `#1b1a18` / 文字 `#f6f5f2`「ATS・各種ツールで管理」
  - 右5列: 1.5px dashed アクセント枠・アクセント文字, space-between「手作業が溜まる「ラストワンマイル」」/「← AIXの対象」(Mono 500)
  - ≤960px: それぞれ4列フル幅

### 2. Problem（#problem）
- ラベル「01 ── Problem」, h2「こんな悩み、<br>ありませんか？」 `clamp(30px, 3.4vw, 46px)`
- リード「採用管理システムや各種ツールを導入していても、実際には下流工程に手作業が溜まり、現場の負荷が残っている企業様は少なくありません。」
- 課題グリッド: 5列, 上線 1px `#1b1a18`。各カラム右線 1px `#d9d6cf`（最後なし）, padding 32px 24px 40px（先頭は左0）
  - 番号行: Mono 13px アクセント「01」〜「05」、右に「MANUAL」11px `#8d8981` letter-spacing .08em、下マージン56px
  - h3 22px（下14px）、説明 14px `#55524c` lh1.8
  - 内容（説明文は仮）:
    1. 求人票作成 — 職種ごとに一から書き起こし、表現や品質が担当者によってばらつく。
    2. 応募者のスクリーニング — 書類確認に時間がかかり、判断基準も人によって異なる。
    3. 面接日程調整 — 候補者・面接官とのやり取りが往復し、調整だけで1日が終わる。
    4. 評価シート作成 — 面接ごとの記録や評価の整理が後回しになり、比較が難しい。
    5. 候補者対応 — 連絡・フォローが属人化し、対応漏れや遅れが起きやすい。
  - ≤960px: 1カラム、各項目下線、番号下マージン16px
- 締めバナー: margin-top 56px, padding 36px 40px, 背景 `#1b1a18`, 文字 `#f6f5f2`, flex space-between
  - 本文 Zen Kaku Gothic New 700 22px lh1.6「ツールが“入っている”ことと、<br>現場が“楽になっている”ことは、**別の話です。**」（強調アクセント）（仮コピー）
  - 右「THE LAST ONE MILE」Mono 12px `#9a968e`

### 3. Concept（#concept、ダークセクション）
- 背景 `#171614`, 文字 `#f6f5f2`, ラベル `#8d8981`
- ラベル「02 ── Concept」
- 大見出し（p.big-quote）: Zen Kaku Gothic New 400（通常ウェイト） `clamp(34px, 4.6vw, 64px)` lh1.35, max-width 1000px, 下マージン96px
  「AIXは、単なる<br>AI導入ではありません。<br>採用の**ラストワンマイル**に、<br>最後まで伴走します。」
- 比較表: 2列 grid, gap 2px, 背景（=罫線色）`#33312d`（≤960px 1列）
  - 各列 padding 40px（≤960px 28px）
  - 列見出し h3 18px, 右に Mono 11px `#8d8981` サブラベル, 下線1px `#33312d`, padding-bottom 20px
  - 行: padding 18px 0, 下線 `#2a2825`, grid `28px 1fr`, 15px
  - 左「一般的なAI導入 / TOOL FIRST」背景 `#171614` 文字 `#8d8981`、行頭「—」(Mono)
    - ツールを導入して終わり / 使い方は現場任せ / 業務フローは変わらないまま / 担当者ごとに運用がばらつく
  - 右「AIXの伴走支援 / OPERATION FIRST」背景 `#201f1c`、見出しアクセント色、行頭 8×8px アクセント正方形（margin-top 10px）
    - まず業務を整理し、AIが効く工程を特定 / 現場で回る運用を設計 / テンプレート化・標準化で属人化を解消 / 定着するまで継続的に支援

### 4. Support Steps（#support）
- ラベル「03 ── Support」, h2「業務整理から定着まで、<br>5つのステップで伴走。」, リード「導入して終わりではなく、現場で「使われ続ける」状態をゴールに設計します。」
- 5列 grid。全体に横線（top 27px, 1px `#1b1a18`）が通り、各ステップの丸がその上に乗る
  - 丸: 56×56px, 円, 背景 `#f6f5f2`, 1px `#1b1a18` 枠, Mono 14px 番号, 下マージン32px。最後(05)は黒地白文字
  - hover（ステップ全体）: 丸がアクセント地・白文字（transition .25s）
  - 英ラベル Mono 11px uppercase `#8d8981` .12em / h3 24px / 説明 14px `#55524c`
  - 画像プレースホルダー: margin-top 24px, aspect-ratio 4/3, 斜めストライプ背景, 左下に Mono 10px キャプション
  - 内容（説明は仮）:
    1. Organize / 業務整理 — 現状の採用フローを可視化し、手作業が溜まっている工程を洗い出します。
    2. Design / 運用設計 — AIと人の役割分担を決め、現場で無理なく回る運用ルールを設計します。
    3. Template / テンプレート化 — 求人票・評価シート・連絡文面などを、すぐ使える形に整えます。
    4. Standardize / 標準化 — 判断基準や手順を揃え、担当者が変わっても品質が保たれる状態へ。
    5. Adopt / 定着支援 — 運用開始後も振り返りと改善を重ね、現場に根付くまで支援します。
  - ≤960px: 縦タイムライン（線は left 27px の縦線、丸は absolute left0、本文 padding-left 80px、gap 40px）

### 5. CTA（#contact）
- 外側 padding-bottom 140px
- ボックス: 背景アクセント, 白文字, padding 88px 72px（≤960px 56px 28px）, grid `1fr auto` gap 48px align end
- 背景装飾: 「AIX」Mono 500 280px, rgba(255,255,255,.08), 右上 (right -20px, top -60px) にはみ出し、overflow hidden
- ラベル「Contact」（白75%、四角は白）
- h2 900 `clamp(30px, 3.6vw, 48px)` margin 24px 0 20px「まずは、残っている<br>手作業を教えてください。」
- 本文 opacity .88, max-width 520px「現状の採用フローをお伺いし、AIXで解消できる工程と進め方をご提案します。」
- ボタン縦積み gap 12px: Primary（黒地, hover 白地黒文字）「無料で相談する →」/ Ghost（白枠白文字, hover 白地アクセント文字）「資料をダウンロード」

### 6. Footer
- 上線1px `#d9d6cf`, padding 40px 0, 13px `#8d8981`, flex space-between
- 左ロゴ（16px、ひし形10px）右「© 2026 AIX. All rights reserved.」
- ≤960px: 縦積み gap 12px

## Components
### Button
- 共通: inline-flex, gap 12px, 高さ56px, padding 0 28px, 700 15px, border-radius 2px, nowrap, transition .2s
- Primary: 背景 `#1b1a18` / 文字 `#f6f5f2`, hover 背景アクセント
- Ghost: 1px `#1b1a18` 枠, hover 黒地・明色文字
- 矢印「→」は Mono、hover で `translateX(4px)`

## Interactions & Behavior
- アンカーリンクはスムーススクロール（`scroll-behavior: smooth`）。stickyヘッダー分のオフセット（`scroll-margin-top: 72px`）を本実装で追加推奨
- スクロール表示アニメ（`.rv`）: 初期 `opacity:0; translateY(16px)` → 表示時 `opacity:1; none`、`.8s ease`。IntersectionObserver threshold .15、一度だけ発火
  - 課題グリッド・ステップ内の子要素は index × 80ms の stagger
  - `prefers-reduced-motion: reduce` 時は無効化を推奨
- CTAボタンのリンク先（相談フォーム／資料DL）は未定。フォーム画面は未デザイン
- ブレークポイント: 960px の1段階のみ

## State Management
静的LPのため状態なし。フォーム実装時に送信状態・バリデーションが必要（未デザイン）。

## Design Tokens
| Token | Value | 用途 |
|---|---|---|
| --bg | `#f6f5f2` | ベース背景 |
| --bg2 | `#eeece7` | パイプライン帯・プレースホルダー |
| --ink | `#1b1a18` | 本文・黒要素 |
| --ink2 | `#55524c` | サブテキスト |
| --ink3 | `#8d8981` | ラベル・注釈 |
| --line | `#d9d6cf` | 罫線 |
| --accent | `oklch(0.62 0.17 40)`（≒ `#d9562a`） | アクセント（朱） |
| --accent-soft | accent 10% | ストライプ |
| --dark | `#171614` | Conceptセクション背景 |
| dark-alt | `#201f1c` / `#33312d` / `#2a2825` | ダーク内の列背景・罫線 |

**Typography**
- 見出し: Zen Kaku Gothic New（400/500/700/900）
- 本文: Noto Sans JP（400/500/700）
- ラベル・数字: JetBrains Mono（400/500）
- Google Fonts から読み込み

**Type scale**: h1 clamp(40–76px) / big-quote clamp(34–64px) / h2 clamp(30–46px) / h3 18–24px / lead 17px / body 16px / small 14–15px / label 11–13px

**Radius**: ボタン 2px のみ（他は角）。ステップ番号は円。
**Shadow**: なし。

## Assets
- 画像なし。Support の5ステップにプレースホルダー（業務フロー図／運用設計イメージ／テンプレート例／標準化ドキュメント／定着支援の様子）— 実素材の支給待ち
- ロゴは仮（テキスト＋ひし形）。正式ロゴ支給後に差し替え
- アイコン不使用

## Files
- `AIX LP.html` — 単一ファイルのデザインリファレンス（HTML + インラインCSS + 小さなJS）
