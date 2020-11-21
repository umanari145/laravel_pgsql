#laravel_pgsqlのサンプル

## postgres基礎

###  ログイン
psql -U postgres(ユーザー) -d postgres(データベース)

\l            DB一覧
\c DB名       DB選択(use DB)
\d            テーブル一覧
\d table名    テーブル定義
\du           MySQLでいうユーザー一覧
\x            select文の結果を縦列で表示。(select文ごとにつけるのではなく、一度入れるとずっと継続。切る場合はもう一度¥x)
\q            終了

pg_dump -Ft -U データベース名 > データベース圧縮ファイル(tar.gz)
pg_restore -c - postgres -d postgres < データベース圧縮ファイル(tar.gz)