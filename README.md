<h1>EpisoPass CLI</h1>

EpisoPassをコマンドラインから使う

<h2>インストール</h2>

<code>$ gem install episopass</code>

<h2>使い方</h2>

EpisoPass画面をブラウザで開いてパスワード文字列を標準出力で得る

<blockquote>
  <code>% episopass [EpisoPassのHTMLのファイル名またはURL]</code>
</blockquote>

<code>~/.episopass.html</code> があればこれが使われる


パスワードつきzipを作る

<blockquote>
  <code>% zip -e my.zip -P `episopass` file1 file2</code>
</blockquote>

パスワードつきzipを解凍する

<blockquote>
  <code>% unzip -P `episopass` my.zip</code>
</blockquote>

<h2>episozip, episounzip</h2>

<blockquote>
  <code>% episozip [-P EpisoPassのHTMLのファイル名またはURL] output.zip file1 file2 ...</code>
</blockquote>

file1, file2, ... を暗号化して output.zip というzipファイルを作る

<blockquote>
  <code>% episounzip output.zip</code>
</blockquote>

EpisoPass問題を解くと解凍できる

<h2>考察</h2>

秘密ファイルをこれで全部隠しておき、必要になったときEpisoPassで復元すると良いかもしれない

<blockquote>
  <code>% episozip secretfiles.zip .netrc .gem .npmrc .ssh/id_rsa ...</code>
</blockquote>

<h2>Issues</h2>

<ul>
  <li>論文化とか</li>
</ul>
