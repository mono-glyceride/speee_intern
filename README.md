# Sample App

メインの Rails アプリケーション

## 環境構築

``` bash
docker-compose build
docker-compose run --rm app yarn install --check-files
docker-compose run --rm app bin/setup
```

## サーバー起動

``` bash
docker-compose up
open http://localhost:3000
```

## docker 内に移動

```
docker exec -it ${CONTAINER ID} bash
```

## テストの実行

``` bash
docker-compose run --rm app bin/rails test
```

## docker 内で Rubocop の実行

rubocop実行
```
bundle exec rubocop
```

rubocopで修正
```
bundle exec rubocop -a
```

rubocopで修正（強制）
```
bundle exec rubocop -A
```

## docker 内で erblint の実行

erblint実行
```
bundle exec erblint --lint-all
```

erblintで修正
```
bundle exec erblint --lint-all -a
```

## docker 内で rake task を実行する手順
※ db/seeds.rb のモックデータがDBに入っていないか確認してからrakeを実行する

1.都道府県データをインポート
```
bundle exec rake import_prefecture
```

2.市区町村データをインポート
```
bundle exec rake import_city
```

3.企業データをインポート
```
bundle exec rake import_company
```

4.口コミデータをインポート
```
bundle exec rake import_review
```

## docker 内で rspec を実行
実行コマンド
```
bundle exec rspec example_spec.rb
```

※ ファイル名は下記のように`spec`を最後につける
```
example_spec.rb
```

## サーバへのデプロイ

0. (初回のみ) `aws ecs run-task --cluster internship-sep2022-1 --task-definition internship-sep2022-1-db-create --launch-type FARGATE --network-configuration '{"awsvpcConfiguration":{"subnets":["subnet-0334f01a7f2e84910","subnet-06e60f8f517606654","subnet-0df45f1bdece2446d"],"securityGroups": ["sg-03bfb5efe23f023fe"],"assignPublicIp":"ENABLED"}}' --count 1` で `rails db:create` を本番環境のDBに適用し、この Rails アプリが使用する MySQL のデータベースを作成する。
1. [GitHub Actions タブの deploy ワークフロー](https://github.com/speee/hr-eng-internship-2022-2nd-team-1/actions) に移動
2. `This workflow has a workflow_dispatch event trigger.` の右側にある `Run Workflow` ボタンをクリック
3. `Use workflow from` のセレクトボックスからデプロイ対象のブランチを選択
4. `Run Workflow` ボタンをクリック

## ステージング
https://sep2022-1.intern.speee.in
