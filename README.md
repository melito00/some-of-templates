# some-of-templates

Consolidate common templates for some project as follows:
- Vagrant
- React
- Angular

## いくつかの基準
- 文字列はシングルクォートにする

## webpack の設定を ES6 で記述する。

- 必要な babel 関連モジュールをインストールする
- .babelrc を作成する
- ファイル名を webpack.config.babel.js とする
  webpack は webpack.config.[loader].js を自動的に解釈する

```
yarn add --dev babel-loader babel-core babel-preset-env
```