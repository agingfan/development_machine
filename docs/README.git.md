<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/5.1.0/github-markdown.min.css">

# Gitの運用ルール

## 概要

採用しているgit-flowの運用ルールをまとめたものです。

## 目次

- [ブランチ一覧](#anchor-1)
- [ブランチルール](#anchor-2)
- [ブランチ命名規則](#anchor-3)
- [タグルール](#anchor-4)
- [コミットメッセージルール](#anchor-5)
- [参考リンク](#anchor-6)

<a id="anchor-1"></a>

## ブランチ一覧

- main
- hotfix
- release branches
- develop
- feature branches

<a id="anchor-2"></a>

## ブランチルール

- developはmainの最新から作成
- featureはdevelopの最新から作成
- releaseはリリース対象featureマージ済developの最新から作成
- 各featureのマージ先はdevelop
- releaseはリリース時のバージョン調整などに使用
- リリースモジュールはmainから作成
- リリースバージョンが上がるタイミングでreleaseからmainにマージ
- マージ済featureは削除
- hotfixは致命的バグが発生した場合に使用

<a id="anchor-3"></a>

## ブランチ命名規則

- feature branches : feature/add_new_function/[issue番号] or feature/functional_improvement/[issue番号]
- release branches : release/[tagバージョン]
- hotfix : hotfix/[tagバージョン]

<a id="anchor-4"></a>

## タグルール

- メジャーバージョン・マイナーバージョン・累積バージョンで記載する
  - メジャーバージョン
    - add_new_function時に数字を上げるメジャーバージョンを上げた場合はマイナーバージョン・累積バージョンは0に戻す
  - マイナーバージョン
    - functional_improvement時に数字を上げるマイナーバージョンを上げた場合は累積バージョンは0に戻す
  - 累積バージョン
    - hotfix時に数字を上げる

<a id="anchor-5"></a>

## コミットメッセージルール

コミットメッセージにはコミットの内容を理解しやすくするためにプレフィックスを付けます。

### プレフィックスルール

- feat: 新しい機能
- fix: バグの修正
- docs: ドキュメントのみの変更
- style: 空白、フォーマット、セミコロン追加など
- refactor: 仕様に影響がないコード改善(リファクタ)
- perf: パフォーマンス向上関連
- test: テスト関連
- chore: ビルド、補助ツール、ライブラリ関連

### sample description

feat: ユーザー一覧機能の追加

### Exception

リポジトリ作成後の初回のコミットには以下のコミットメッセージが使用します。

- first commit

<a id="anchor-6"></a>

## 参考リンク

- [github-markdown-css CDN](https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/5.1.0/github-markdown.min.css)
- [Githubで特定のブランチを保護して、直pushや削除を防止する](https://maasaablog.com/development/git/github/2881/#toc3)
- [業務でよくみるGitの運用方法について勉強する](https://qiita.com/kenogi/items/906f69a64be36e2c1b5d)
- [僕が考える最強のコミットメッセージの書き方](https://qiita.com/konatsu_p/items/dfe199ebe3a7d2010b3e)
