## Help

hlog

    Usage:
         
    hlog {error,info,warning} MSG       : Print message.
    hlog {debug}              MSG       : Print message if $DEBUG is defined. 
    hlog {fatal|abort}        MSG       : Print message and fail.
    hlog {errif}              MSG TEST  : Print message and fail if test succedes.
    hlog {file}               NAME DESC : Prnt log filename.

vrun

    Usage: vrun COMMAND...

hget

    Usage: hget [-d DIR] URL [NAME]
    
    Download file to a temporary directory and print name. If the name can't
    be infered from the URL then you can specify a name.

hurl

    Usage:
    
    hurl encode TEXT...
    hurl decode TEXT...
    hurl encode-i < FILE
    hurl decode-i < FILE

vcd

    Usage: vcd [+-] DIRECTORY
    
    Enter and quit from a directory printing a message.

hfile

    Usage: hfile ...
    
    This tool helps creating and modifying text files.
    
        create  [sudo] FILE < CONTENT            : Create file.
        wrapper [sudo] FILE < CONTENT            : Create executable file.
        fcom FILE [TEXT]                         : Print the comment for FILE or comment TEXT.
        fadd [sudo] FILENAME BLOCKNAME [COMMENT] : Add block to file.
        fdel [sudo] FILENAME BLOCKNAME           : Delete block from the file.
        flst [sudo] FILENAME [COMMENT]           : Print list of blocks.
    
        cfadd [sudo] FILE VARIABLE=VALUE ... : Set variable. The VARIABLE=VALUE format.
        cfdel [sudo] FILE VARIABLE           : Delete variable.

hstr

    Usage: hstr ...
    
    optopt VAR[=VAL] [SEP] :
    optarg VAR[=VAR] [SEP] :
    vname STRING...        : Print variable name.
    fname STRING...        : Print function name.
    escape STRING...       : Return single quote escaped string.
    escape2 STRING         : Return double queote escaped string.
    abspath FILENAME       : Return absolute path.
    suffix FILENAME        : Return suffix including the dot. (.tar.gz, ...)
    l-has ITEM LIST...     : Check whether the item is in list.
    u-proto URL            : Get protocol from URL.
    u-{user,pass}  URL     : Get username from URL.
    u-{host,port}  URL     : Get password from URL.
    u-path         URL     : Get content from URL.

hterm

    Usage: hterm ...
    
        iecho ... : Print to `/dev/tty` if available.
        iread ... : Read from `/dev/tty` if available.
        color [COLOR|list] [MESSAGE] : Set/unset color, only for message.
    
        ask    TXT [DEFAULT]   : Ask input and print result.
        stop   LINE1 LINE2...  : Ask user whether to continue and `exit 1` if not.
        yn     TXT [DEFAULT]   : Ask yes of no. Fail if no.
        hidden TXT             : Ask input without echo.
    
        ask-directory [TXT] [DIR] [DEFAULT]          :
        ask-filename  [TXT] [DIR] [DEFAULT] [SUFFIX] :
    
        truncate       : Truncate to terminal size.
        vars VARIABLES : Print variables.

hrand

    Usage: hrand
    
    md5sum [COUNT] <FILE : Calculate and return.
    random [COUNT]       : Create pseudo random 10byte md5sum.

hpkg

    Usage: hpkg ...
    
    Program checker and installer.
    
        Distros          : @void, @centos, @ubuntu, @FreeBSD.
        Package managers : %dpkg, %rpm, %xbps, %pacman, %pkg, %npm,
                           %go, %gem, %pip3
    
    Options:
    
        -w PROGRAM [-w ...] : Skip installation if any of the programs is
                              not installed.
        -q                  : Quiet mode.
        -D/P                : Print distro or package manager.
        -S {@D|%P} ARGS...  : Print arguments if the current system matches
                              the distro (@D) or has a package manager (%P).
        -i {@D|%P} PKG...   : Install packages.
        -u {@D|%P} PKG...   : Remove packages.
        -c {@D|%P} ...      : Check the system has one of.

findup

    Usage: findup PATTERN
    
    Search a file or directory upwards and return the relative path.

hcfg

    Usage: hcfg [-p]
    
    Read configuration from /etc/config.sh or ~/.config.sh.
    
    -p : Print configuration.

hextract

    Usage: hextract [sudo] FILE [DIR [PATT]
    
    Extract the file to directory. [.tar][.tgz][.tar.*][.zip][.7z][.rar]

hmain

    Usage: hmain [OPTIONS...] MAIN_F ARGS...
    
    -f NAME   : Only execute if script's name matches.
    -u UNAME  : If `uname -n` doesn't match UNAME skip.
    -s SSH    : Instead of skipping `hsh -r SSH` instead.
    -l ARG    : First arguments to be executed locally.

pathinfo

    Usage: pathinfo [-u][-r VARIABLE][-v VARIABLE]
    
    This script sources `/etc/pathinfo` at load.
    
        -u          : Reload `/etc/pathinfo`.
        -r VARIABLE : If the variable is not defined print a message.
        -v VARIABLE : Print variable.

hsh

    Usage: hsh [FLAGS...] SCRIPT [ARGS...]
    
    Shell script wrapper and remote execution tool.
    
    ## Bundle generator             ## Analysis
                                    
    -o FILE|- : Generate bundle.    -d : Print dependencies.
    
    ## Installer.
    
    -i NAME      : Install to /usr/local/bin. Can be used with `-r`.
    
    ## SSH Execution.
    
    -S           : Run with sudo.
    -r USER@HOST : Run on a remote system using SSH.
    
    ## WINE,ADB and DOCKER Execution.
    
    -w SH.EXE      : Run using wine.
    -a             : Use `adb` on android.
    -c CONTAINER|- : Run in container.

## Collaborating

For making bug reports, feature requests and donations visit one of the
following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)

