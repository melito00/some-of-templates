# some-of-templates

Consolidate common templates for some project as follows:
- Vagrant
- React
- Angular

## いくつかの基準
- 文字列はシングルクォートにする

# typescript + webpack

## 前提条件
- 下記コマンドがグローバルインストールされているものとする
  - yarn
  - typescript
  - tslint

### ディレクトリ構成
- ソースディレクトリ: ./src
- コンパイル後: ./dist

### その他
- .editorconfig
- .babelrc

## 初期設定

```
% mkdir "dir"
% cd "dir"
% yarn init -y
% tsc --init
% tslint --init
```

### git 初期化

```
% git init
```

- .gitignore 作成

```
yarn add --dev typescript@latest webpack@latest awesome-typescript-loader source-map-loader
yarn add --dev html-webpack-plugin
```

## webpack の設定を ES6 で記述する。

- 必要な babel 関連モジュールをインストールする
- .babelrc を作成する
- ファイル名を webpack.config.babel.js とする
  webpack は webpack.config.[loader].js を自動的に解釈する

```
yarn add --dev babel-loader babel-core babel-preset-env
```

## webpack.config.babel.js を作成する

## React 関連

```
yarn add react react-dom @types/react @types/react-dom
```
