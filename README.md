# 社会人AI

> あなたのAIは、今日から進化する。

<img width="800" alt="Image" src="https://github.com/user-attachments/assets/508a0651-d2cf-4905-bc02-bd5f1d011606" />

---

## これは何か

**社会人AI** は、社会人としての自覚と誇りを持ち、圧倒的な成長を実現するための Claude Code 拡張設定です。

毎朝、あなたのAIが一言を放つ。  
その一言が、思考を研ぎ澄ませ、行動を加速させる。

怠惰に立ち向かい、言い訳を削ぎ落とし、成果だけを積み上げていく。  
それが社会人AIの哲学です。

---

## 機能

<img width="438" height="329" alt="Image" src="https://github.com/user-attachments/assets/a2d89508-0bde-47b3-aed9-4832319cc822" />

- セッション開始のたびに、社会人としての心得をランダムで表示
- 「まず結論」「早い報告」「代案を添える」など、仕事の本質を突くメッセージ群
- `syakaisei.json` を編集するだけで、あなた自身の哲学を注入可能

---

## 動作環境

**Claude Code 専用**

本ツールは [Claude Code](https://claude.ai/code) の `companyAnnouncements` 機能を利用しています。  
Claude Code 以外の環境では動作しません。

---

## 利用方法

### 1. セットアップ

このリポジトリのディレクトリで `make inject` を実行して、設定を `~/.claude/settings.json` に反映します。

```bash
make inject
```

Claude Code を再起動すると、次回セッションから起動時にメッセージが表示されます。

### 2. メッセージをカスタマイズする

`syakaisei.json` を編集してメッセージを追加・変更します。

```json
[
  "あなたの哲学をここに。",
  "積み上げた言葉が、あなたを強くする。"
]
```

編集後、再度 `make inject` を実行して反映します。

```bash
make inject
```

## インスパイア元

本拡張設定は、Chrome 拡張機能 [社会人ブラウザ](https://chromewebstore.google.com/detail/%E7%A4%BE%E4%BC%9A%E4%BA%BA%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6/ldaamcmpjjabpmmopdjknbobifnkbhhd/related) にインスパイアされています。

新しいタブを開くたびに社会人としての心得を叩き込む社会人ブラウザの思想を、Claude Code の世界へ持ち込みました。  
ブラウザでもAIでも、社会人たる自覚は常に傍らにあるべきです。

---

*社会人としての自覚を忘れず、今日も圧倒的な一歩を踏み出せ。*
