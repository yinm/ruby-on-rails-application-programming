# memo

## DB

### クエリメソッドの特徴
* クエリメソッドとは、`where`や`joins`などのこと
* `find`や`find_by`などのメソッドと異なり、その場でデータベースアクセスしない 
  * その代わりに、`ActiveRecord::Relation`オブジェクトを返す
  * そして、結果が必要になったところで、初めてDBに問い合わせる (「遅延ロード」)
  * この遅延ロードの性質を使った記法が、「メソッドチェーン」である

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
  
### Unobtrusive JavaScript (控えめなJavaScript)
* HTMLとJSを分離する(HTMlの中にJSが出しゃばらないようにする)と言う考え方
* RailsにおけるJSに対するポリシーも、こちらになる
  * そのため、`data-`の属性がついているものは、Railsが提供しているJSライブラリがその値に基づいて、何らかの処理していると考えればいい
  * e.g.) `<%= link_to 'Destroy', book, method: :delete, data: { confirm: 'Are you sure?' } %>`


