# EpisoPass

- EpisoPassをCLIから使う

## インストール

    $ gem install episopass

## 使い方

EpisoPass画面をブラウザで開いてパスワード文字列を標準出力で得る

    % episopass [EpisoPassのHTMLのファイル名またはURL]

パスワードつきzipを作る

    % zip -e my.zip -P `episopass` file1 file2

パスワードつきzipを解凍する

    % unzip -P `episopass` my.zip
