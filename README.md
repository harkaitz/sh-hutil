HUTIL
=====

Utility library for writing shell scripts. It provides a set of
functions and tools for writing shell scripts.

## Installation

You can install this library/program by running the following command:

    curl -sSL https://github.com/harkaitz/sh-hutil/releases/download/1.0.3/install.sh | sudo bash

## Help

ecode

    Usage: ecode COMMAND...
    
    Execute command inside it's own process and set the return code
    in "ecode".

hcfg

    Usage: hcfg [-p]
    
    Read configuration from "/etc/config.sh" or "~/.config.sh" or print
    it to the terminal with "-p". 

hfile

    Usage: hfile ...
    
    This tool helps creating and modifying text files.
    
    Create files.
    
    ... create  [sudo] FILE < CONTENT            : Create file.
    ... wrapper [sudo] FILE < CONTENT            : Create executable file.
    
    Sections delimited by "-- NAME --" blocks.
    
    ... fcom FILE [TEXT]                         : Print the comment for FILE or comment TEXT.
    ... fadd [sudo] FILENAME BLOCKNAME [COMMENT] : Add block to file.
    ... fdel [sudo] FILENAME BLOCKNAME           : Delete block from the file.
    ... flst [sudo] FILENAME [COMMENT]           : Print list of blocks.
    
    Variables with "NAME=VALUE" format.
    
    ... cfadd [sudo] FILE VARIABLE=VALUE ... : Set variable. The VARIABLE=VALUE format.
    ... cfdel [sudo] FILE VARIABLE           : Delete variable.
    
    Source this with with ". hfile" from your script or copy to it.

hlog

    Usage: hlog TYPE MSG
    
    Print a log message with the program name ($SCRNAME) as prefix. You can
    disable it by setting ${HLOG_NO_PREFIX}.
         
    hlog {error,info,warning} MSG : Print message.
    hlog debug                MSG : Print message if $DEBUG is defined.
    hlog verbose              MSG : Print message if $VERBOSE is defined.
    hlog {fatal|abort}        MSG : Print message and fail.
    
    hlog errif  MSG TEST... : If TEST succeedes print MSG and return 1.
    hlog assert MSG TEST... : If TEST fails print MSG and return 1.

hmain

    Usage: [H_LIST_DEPS=y] hmain [OPTIONS...] MAIN_F ARGS...
    
    Check whether the shell is compatible and the script filenames
    matches NAME, if so execute "MAIN_F ARGS...".
    
     -f NAME  : Only execute if script's name matches.
     -s bash  : Require `bash` as a shell (Set inherit_errexit).
     -R       : Require execution as root.
     -r PROG  : Require program.
     -e       : Allow empty arguments.
     -C       : Run <MAIN_F>_calc_variables before <MAIN-F>.
     -u OS    : Check support with `uname -o`.

hopen

    Usage: hopen FILE|URI
    
    A wrapper around MS/Windows "start" and POSIX "xdg-open".

hremote

    Usage: hremote [OPTIONS...] MAIN_F ARGS...
    
    -f NAME  : Only execute if script's name matches.
    -c SSH   : Run the script in this machine.
    -l FUNC  : Skip if 'FUNC ARGS...' sets 'skip=0'.
    -V VAR   : Fetch variable from localhost.
    -H SCR   : Script from which to print help.
    -X       : Forward X11.
    -e       : Allow empty arguments.

hsh

    Usage: hsh [FLAGS...] SCRIPT [ARGS...]
    
    Shell script wrapper and remote execution tool.
    
    ## Bundle generator             ## Analysis
                                    
    -o FILE|- : Generate bundle.    -d : Print dependencies.
    
    ## Installer.
    
    -S     : Install with sudo.
    -i     : Install to /usr/local/bin.
    
    ## SSH Execution.
    
    -S     : Run with sudo.
    -C DIR : Run in directory.
    -r U@H : Run on a remote system using SSH.
    -t     : Require a terminal.

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

huname

    Usage: huname ...
    
      -s : Linux, Windows_NT, MSYS, CYGWIN, ...
      -m : x86_64, aarch64, arm64, ...
      -d : debian, void, ...
      -l : List supported platforms.
    
    Environment variables: HUNAME_{SYSTEM,DISTRO,MACHINE}

lrun

    Usage: lrun -lf NAME COMMAND | -t
    
    Execute a program redirecting it's output to a log file. It will store
    the log file in /tmp/lrun. Return code 4 is considered skip.
    
    1.- You can change the output directory from /tmp to another setting LRUN_LOGDIR.
    2.- You can change the size of the columns with LRUN_COL1 and LRUN_COL2.
    
    -l : Print the head.
    -L : Print START and ERROR/SKIP in each line.

urlcut

    Usage: urlcut [-R][-D SEP] -puwhd URL

vcd

    Usage: vcd [+-] [DIRECTORY]
    
    Enter and quit from a directory printing a message. This command
    must be sourced by the shell, not executed directly.

vrun

    Usage: vrun COMMAND...
    
    Print and execute command. If HLOG_NO_PREFIX is set then the
    program's prefix will not be printed.

## Collaborating

For making bug reports, feature requests, support or consulting visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
