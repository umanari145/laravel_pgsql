#laravel_pgsqlのサンプル

## postgres基礎

###  ログイン
```
psql -U postgres(ユーザー) -d postgres(データベース)

\l            DB一覧
\c DB名       DB選択(use DB)
\d            テーブル一覧
\d table名    テーブル定義
\du           MySQLでいうユーザー一覧
\x            select文の結果を縦列で表示。(select文ごとにつけるのではなく、一度入れるとずっと継続。切る場合はもう一度¥x)
\q            終了
```

```
pg_dump -Ft -U データベース名 > データベース圧縮ファイル(tar.gz)
pg_restore -c - postgres -d postgres < データベース圧縮ファイル(tar.gz)
```

### 認証ロジックの作成

認証に関わる自動のルーティングやControllerを自動作成
```
php artisan make:auth
```
その後、下記コマンドでルーティングを確認できる。
```
php artisan route;ost
```


### DIに関する考察
参考URL 
https://qiita.com/harunbu/items/079ea728d2c9cf4f44d5
https://www.geekfeed.co.jp/geekblog/laravel-service-providers

Laravel本体に実際にServiceを組み込むファイル
App\Providers\DiceServiceProvider.php

Providerの設定
App\config\app.php

実際に窓口になるinterface
App\RollableDice

実体となるClass(内部の記述)
App\Dice
App\LoadDice