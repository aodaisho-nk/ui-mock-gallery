# Handoff: 採用フロー アイコン（Recruitment Flow Icon Set）

## Overview
A set of 8 line icons for the recruitment process: 採用計画 → 求人作成 → 募集 → 書類選考 → 面接 → 内定 → 入社 → 分析. The look is simple, slim and stylish. The bundled HTML page is a showcase/spec sheet. It shows each icon as a step in the flow, at several sizes, and in use on light and dark backgrounds.

## About the Design Files
The file in this bundle (`採用フロー アイコン.html`) is a **design reference created in HTML**. It shows the intended look and behavior; it is not production code to copy directly. Recreate the icons in the target codebase's own environment, for example as React/Vue icon components, an SVG sprite, or an icon font, following its existing patterns. If no environment exists yet, choose the most suitable approach (e.g. one React component per icon, accepting `size`, `strokeWidth`, `className`).

The SVG path data below **is final**. Copy it exactly.

## Fidelity
**High-fidelity.** The icon geometry, stroke settings and showcase styling are final.

## Icon Specification
- Grid: `viewBox="0 0 24 24"`, roughly 2px of padding inside the frame
- `fill="none"`, `stroke="currentColor"`, `stroke-linecap="round"`, `stroke-linejoin="round"`
- Stroke width: **1.5 by default**. Alternatives are 1.25 (slimmer, best at 48px and up) and 2.0 (best at 16px)
- Color comes from `currentColor`, so icons take on the surrounding text color
- Tested sizes: 16, 20, 24, 32, 48, 72px

### SVG source (inner elements)
Wrap each one in:
`<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"> … </svg>`

**01 採用計画 / Planning** (`planning`): clipboard with an upward trend line
```svg
<path d="M9 4H7a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-2"/>
<rect x="9" y="2.75" width="6" height="2.75" rx="1"/>
<polyline points="8.5 16.5 11 13.75 13 15.5 15.5 11"/>
<polyline points="13.25 11 15.5 11 15.5 13.25"/>
```

**02 求人作成 / Job Posting** (`job-posting`): document with a pen
```svg
<path d="M12 21H7a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h7l5 5v2.5"/>
<path d="M14 3v5h5"/>
<line x1="8.5" y1="12" x2="13" y2="12"/>
<line x1="8.5" y1="15.5" x2="11" y2="15.5"/>
<path d="M18.25 13 21 15.75 15.75 21H13v-2.75z"/>
```

**03 募集 / Recruiting** (`recruiting`): megaphone with sound waves
```svg
<path d="M3.5 10v4a1 1 0 0 0 1 1H7l7 4V5L7 9H4.5a1 1 0 0 0-1 1z"/>
<line x1="7.5" y1="15.25" x2="9" y2="20"/>
<path d="M17.25 9.75a3.25 3.25 0 0 1 0 4.5"/>
<path d="M19.75 7.25a6.75 6.75 0 0 1 0 9.5"/>
```

**04 書類選考 / Screening** (`screening`): document with a magnifier
```svg
<path d="M10.5 21H7a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h7l4 4v2.5"/>
<path d="M14 3v4h4"/>
<line x1="8.5" y1="9.5" x2="11.5" y2="9.5"/>
<line x1="8.5" y1="13" x2="10.5" y2="13"/>
<circle cx="15.75" cy="15.25" r="3.5"/>
<line x1="18.25" y1="17.75" x2="20.75" y2="20.25"/>
```

**05 面接 / Interview** (`interview`): two people facing each other across a table
```svg
<circle cx="7" cy="8.5" r="2.5"/>
<circle cx="17" cy="8.5" r="2.5"/>
<path d="M3 17.5a4 4 0 0 1 8 0"/>
<path d="M13 17.5a4 4 0 0 1 8 0"/>
<line x1="2.5" y1="20.5" x2="21.5" y2="20.5"/>
```

**06 内定 / Offer** (`offer`): medal with a check mark and ribbon
```svg
<circle cx="12" cy="9" r="5.75"/>
<polyline points="9.5 9 11.25 10.75 14.5 7.5"/>
<path d="M8.75 13.75 7.5 21l4.5-2.25L16.5 21l-1.25-7.25"/>
```

**07 入社 / Onboarding** (`onboarding`): arrow entering a door
```svg
<path d="M14 3.5h4a1.5 1.5 0 0 1 1.5 1.5v14a1.5 1.5 0 0 1-1.5 1.5h-4"/>
<line x1="4" y1="12" x2="14.5" y2="12"/>
<polyline points="11 8.5 14.5 12 11 15.5"/>
```

**08 分析 / Analytics** (`analytics`): pie chart with one wedge pulled out
```svg
<path d="M11 5a8 8 0 1 0 8 8h-8z"/>
<path d="M13.5 3v7.5H21A7.5 7.5 0 0 0 13.5 3z"/>
```

## Screens / Views (showcase page; optional to reproduce)
- **Page:** background `#f6f6f4`, padding `56px 48px 80px`, content max-width 1240px, centered.
- **Header:** title "採用フロー アイコン" (Noto Sans JP 300, 26px, letter-spacing .08em). Subtitle "Recruitment Icon Set · 24px grid · Line" (JetBrains Mono 11px, `#8a8b8e`, uppercase, .12em). On the right, a segmented stroke-width control with options 1.25 / 1.5 / 2.0. Pills sit on a white background with a `1px #e3e3e0` border; the active pill is `#1d1e20` with white text.
- **Flow grid:** 8 columns, 12px gap.
  - Each card is white, with a `1px #e3e3e0` border, 14px radius and `22px 16px 18px` padding.
  - Inside each card:
    - Step number "01"…"08" at the top left (JetBrains Mono 10px, muted)
    - Icon at 64×64
    - Japanese label (15px, weight 500, .1em)
    - English label (JetBrains Mono 9.5px, uppercase, muted)
  - Between cards there is a 10×1px muted connector line.
  - Hover: the border turns `#1d1e20`, the card moves up 2px (0.2s), and a "↓ SVG" download button fades in.
- **Sizes panel:** each icon in rows at 48 / 32 / 24 / 16px.
- **In Use:** two panels with an icon (20px) plus label, 8px gap. One panel is light (white); the other is dark (`#17181a` background, `#ededeb` text).
- **Responsive:** below 1000px the grids drop to 4 columns, the connectors are hidden, and the In Use panels stack.

## Interactions & Behavior
- The stroke-width toggle re-renders every icon. The selection is saved in `localStorage` under the key `icon-sw`.
- "↓ SVG" downloads `icon-NN-<id>.svg`, with `currentColor` replaced by `#1d1e20`.

## State Management
- `strokeWidth: 1.25 | 1.5 | 2` (default 1.5), saved between visits.

## Design Tokens
- Ink `#1d1e20` · Muted `#8a8b8e` · Line `#e3e3e0` · Background `#f6f6f4` · Card `#ffffff` · Dark panel `#17181a` / `#ededeb`
- Accent (hover on the download link) `oklch(0.58 0.12 250)`
- Radius: 14px (cards/panels), 999px (pills)
- Fonts: Noto Sans JP (300/400/500), JetBrains Mono (400), both from Google Fonts

## Assets
No raster assets. All icons are the inline SVGs listed above.

## Files
- `採用フロー アイコン.html`: the showcase page and the source of truth for the icon data (see the `ICONS` array in its script)
