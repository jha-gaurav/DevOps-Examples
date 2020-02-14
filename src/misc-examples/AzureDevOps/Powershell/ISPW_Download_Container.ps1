﻿param(
    [string]$workspaceRoot,
    [string]$hostUri,
    [string]$hostPort,
    [string]$hostUser,
    [string]$hostPassword,
    [string]$hostCodePage,
    [string]$ispwConfig,
    [string]$ispwContainerName,
    [string]$ispwContainerType,
    [string]$ispwDownloadLevel,
    [string]$cliPath
 )

[string]$cliWorkpace = ".\TopazCliWkspc"

CD $workspaceRoot

cmd.exe /c $cliPath\SCMDownloaderCLI.bat `
    -pass $hostPassword `
    -data $cliWorkpace `