<h1>EpisoPass CLI</h1>

EpisoPassをコマンドラインから使う

<h2>インストール</h2>

<pre>
  <code>$ gem install episopass</code>
</pre>

<h2>使い方</h2>

EpisoPass画面をブラウザで開いてパスワード文字列を標準出力で得る

<pre>
  <code>% episopass [EpisoPassのHTMLのファイル名またはURL]</code>
</pre>

<code>~/.episopass.html</code> があればこれが使われる


パスワードつきzipを作る

<pre>
  <code>% zip -e my.zip -P `episopass` file1 file2</code>
</pre>

パスワードつきzipを解凍する

<pre>
  <code>% unzip -P `episopass` my.zip</code>
</pre>

<h2>episozip, episounzip</h2>

file1, file2, ... を暗号化して output.zip というzipファイルを作る

<pre>
  <code>% episozip [-P EpisoPassのHTMLのファイル名またはURL] output.zip file1 file2 ...</code>
</pre>

EpisoPass問題を解くと解凍できる

<pre>
  <code>% episounzip output.zip</code>
</pre>

<h2>考察</h2>

秘密ファイルをこれで全部隠しておき、必要になったときEpisoPassで復元すると良いかもしれない

<pre>
  <code>% episozip secretfiles.zip .netrc .gem .npmrc .ssh/id_rsa ...</code>
</pre>

解凍するときパスワードを覚えておかなくて良いのは秀逸と思うのだが

<h2>Issues</h2>

<ul>
  <li>論文化とか</li>
</ul>
