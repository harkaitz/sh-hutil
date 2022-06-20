## Help

ecode

    Usage: ecode COMMAND...

findup

    Usage: findup PATTERN
    
    Search a file or directory upwards and return the relative path.

hbc

    Usage: hbc "@a+@b" [scale=14] a=2 b=2
    
    A better, safer way of doing arithmetic in the shell
    by using bc(1). The default scale is HBC_SCALE=12. 

hcfg

    Usage: hcfg [-p]
    
    Read configuration from /etc/config.sh or ~/.config.sh.
    
    -p : Print configuration.

hextract

    Usage: hextract [sudo] FILE [DIR [PATT]
    
    Extract the file to directory. [.tar][.tgz][.tar.*][.zip][.7z][.rar]

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

hget

    Usage: hget [-d DIR] URL [NAME]
    
    Download file to a temporary directory and print name. If the name can't
    be infered from the URL then you can specify a name.

hlog

    Usage:
         
    hlog {error,info,warning} MSG       : Print message.
    hlog {debug}              MSG       : Print message if $DEBUG is defined. 
    hlog {fatal|abort}        MSG       : Print message and fail.
    hlog {errif}              MSG TEST  : Print message and fail if test succedes.

hmain

    Usage: hmain [OPTIONS...] MAIN_F ARGS...
    
    -f NAME : Only execute if script's name matches.
    -s bash : Require `bash` as a shell (Set inherit_errexit).
    -e      : Allow empty arguments.

hmenu

    Usage: hmenu [-c][-q][-t TITLE][-m TXT][-p PROMPT][-f FUNC][-o OPT][SEL][ARGS...]
    
    An interactive menu for the terminal. It print the selected
    item to standard output. In the title and text the leading `    |`
    are removed.

hper

    Usage: hper [-vp] VAR[=VAL] ...
    
    Save and restore variables in permanent memory. 

hpkg

    Usage: hpkg ...
    
    Program checker and installer.
    
        Distros          : @void, @centos, @ubuntu, @freebsd, @OpenBSD.
        Package managers : %dpkg, %rpm, %xbps, %pacman, %pkg, %npm,
                           %go, %gem, %pip3
    
    Options:
    
        -v                  : Verbose operation.
        -m MSG              : Print message.
        -w PROGRAM [-w ...] : Skip installation if any of the programs is
                              not installed.
        -q                  : Quiet mode.
        -D/P                : Print distro or package manager.
        -S {@D|%P} ARGS...  : Print arguments if the current system matches
                              the distro (@D) or has a package manager (%P).
        -i {@D|%P} PKG...   : Install packages.
        -u {@D|%P} PKG...   : Remove packages.
        -c {@D|%P} ...      : Check the system has one of.
        -E {@D|%P} SERVICE  : Enable service.
        -R {@D|%P} SERVICE  : Restart service.
        -V {@D|%P} SERVICE  : Status of the service.
        -O {@D|%P} SERVICE  : Shutdown service.
        -X {@D|%P} SERVICE  : Disable service.

hrand

    Usage: hrand
    
    md5sum [COUNT] <FILE : Calculate and return.
    random [COUNT]       : Create pseudo random 10byte md5sum.

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

hurl

    Usage:
    
    URL encoding and decoding from the terminal.
    
    hurl encode TEXT...
    hurl decode TEXT...
    hurl encode-i < FILE
    hurl decode-i < FILE
    
    hurl get VAR URL

lrun

    Usage: lrun -lf NAME COMMAND
    
    Execute a program redirecting it's output to a log file. It will store
    the log file in /tmp/lrun.
    
    1.- You can change the output directory from /tmp to another setting LRUN_LOGDIR.
    2.- You can skip lrun executions adding "names" to LRUN_SKIP.
    3.- You can change the size of the columns with LRUN_COL1 and LRUN_COL2.
    
    -l : Print the head.

pathinfo

    Usage: pathinfo [-u][-r VARIABLE][-v VARIABLE]
    
    This script sources `/etc/pathinfo` at load.
    
        -u          : Reload `/etc/pathinfo`.
        -r VARIABLE : If the variable is not defined print a message.
        -v VARIABLE : Print variable.

vcd

    Usage: vcd [+-] DIRECTORY
    
    Enter and quit from a directory printing a message.

vrun

    Usage: vrun COMMAND...

## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)

