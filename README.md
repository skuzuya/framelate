## ■サービス概要

  Timesを中心に、必要なテンプレートを自由に投稿・保存・共有・管理ができるサービスです。
  <br>
  日付の自動入力、学習時間の自動計算（週・月単位、総計など）、投稿プレビューの確認ができます。
  <br>
  Timesに関しては、アプリから直接自分のTimesに投稿することができます。


## ■ このサービスへの思い・作りたい理由

  RUNTEQ生の多くが毎日のTimes投稿に個別のテンプレートを持っていることに気づきました。
  <br>
  私自身、投稿の継続を苦手としており、「型」が決まっていないため投稿が億劫になるのが一つの原因と考えました。
  <br>
  そこで、共有・利用できるテンプレートがあれば、入学して間もない方々やアウトプットに悩む方々が活用しやすくなると考えました。
  <br>
  このサービスは、投稿の質を向上させ、継続しやすくすることを目指しています。
  <br>


## ■ ユーザー層について

  ・Timesを利用している方々
  <br>
  ・RUNTEQ入学から日が浅い方々
  <br>
  ・アウトプットが苦手な方々
  <br>
  ・投稿継続力を身に付けたい方々
  <br>
  <br>
  Timesの投稿について、最初から高クオリティな投稿をしたい方々や、徐々に投稿が滞りがちになる方々のモチベーション維持という理由から上記ターゲット設定としました。
  <br>
  またサブターゲットとして、Timesの投稿に限らずアウトプットを行う際にテンプレートが必要な方々にも利用していただけるように設計しています。
  <br>


## ■ サービスの利用イメージ

  アウトプット投稿が面倒と感じている方々が手軽にクオリティの高いテンプレートを活用でき、投稿や継続のハードルを下げることができます。
  <br>
  また「テンプレートを探す」→「使う」→「カスタマイズする」→「投稿して管理する」という流れで、より多彩なテンプレートの共有・活用ができます。
  <br>


## ■ ユーザーの獲得について

  ・作成したテンプレートの末尾にアプリ名とURLを記載（例: created by "アプリ名"）するようにし、閲覧者をアプリに誘導します。
  <br>
  ・テンプレートをXで共有できる機能を設けます。
  <br>


## ■ サービスの差別化ポイント・推しポイント

  他のサービスと比較して、以下の点で差別化されています：
  <br>
  <br>

  ・作成したテンプレートにサービス名やタグを付けて共有・管理できる機能（Gmailのラベリングのようなイメージ）
  <br>
  ・個別にテンプレ管理機能のないアプリケーション用のテンプレート管理に対応
  <br>


## ■ 機能候補

  MVPリリース時
  <br>
  ・ユーザー登録、ログイン機能
  <br>
  ・テンプレートのCRUD機能
  <br>
  ・いいね機能、コメント機能、タグ付け機能
  <br>
  <br>

  本リリース時
  <br>
  ・Googleアカウントでのログイン機能
  <br>
  ・Times関連の投稿テンプレートプレビュー機能
  <br>
  ・Times関連のMattermostへの投稿機能
  <br>
  ・Times関連の学習時間自動計算機能（今日、今週、今月、n/1000時間）
  <br>
  ・Times投稿が行われていない場合のLINE通知機能
  <br>


## ■ 機能の実装方針予定

  開発環境:	Docker
  <br>
  フロントエンド:	TailwindCSS / Hotwire
  <br>
  バックエンド:	Ruby 3.2.3 / Ruby on Rails7
  <br>
  データベース:	PostgreSQL
  <br>
  インフラ:	Render
  <br>
  API: Google API, Mattermost API, LINE Messaging API
  <br>
