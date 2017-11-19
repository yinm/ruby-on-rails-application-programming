# memo

## コマンド

### railsコマンド - ドキュメント
* http://railsdoc.com/rails
* オプションの一覧や、使用例が載ってる

### `rails db`
* `config/database.yml`で定義した接続情報に従って、データベースクライアントをを起動できる
* `rails dbconsole`の省略形

## デバッグ

### 発行したSQLのログ
* デフォルトのRails5で、developmentのPumaにアクセスした時は、コンソールに発行したSQLのログが表示される

## View

### viewディレクトリの拡張子の意味
* `ファイル名.フォーマット名.テンプレートエンジン名` になっている
  * e.g.) `index.html.erb`: `ERB`を使って、`HTML形式`の出力をするテンプレートファイル
  * e.g.) `index.json.jbuilder`: `JBuilder`を使って、`JSON形式`の出力をするテンプレートファイル
