# PaperCut��server-command.exe�ւ̃p�X�B�C���X�g�[���ɂ���ĈقȂ�܂��B
$serverCommandPath = "C:\Program Files\PaperCut MF\server\bin\win\server-command.exe"

# ���[�U���X�g���擾���܂��B
$userList = & $serverCommandPath list-user-accounts

# ���[�U���X�g���G�C���A�X�Ƃ��ēo�^���܂��B
foreach ($user in $userList) {
    # '@'�ȍ~�̕������폜���܂��B
    $userAlias = $user.Split("@")[0]
    & $serverCommandPath set-user-property $user "username-alias" $userAlias
}