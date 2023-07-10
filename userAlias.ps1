# PaperCutのserver-command.exeへのパス。インストールによって異なります。
$serverCommandPath = "C:\Program Files\PaperCut MF\server\bin\win\server-command.exe"

# ユーザリストを取得します。
$userList = & $serverCommandPath list-user-accounts

# ユーザリストをエイリアスとして登録します。
foreach ($user in $userList) {
    # '@'以降の部分を削除します。
    $userAlias = $user.Split("@")[0]
    & $serverCommandPath set-user-property $user "username-alias" $userAlias
}