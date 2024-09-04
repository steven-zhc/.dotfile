# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

if [ -f ~/.aliases ]; then
        . ~/.aliases
fi


export TMPDIR=/scratch/podman/tmp

export VOLTA_HOME=/scratch/.volta

export HELIUM_HOME=/scratch/helium
export LOG_LEVEL=debug
export HELIUM_FA_SERIES=FUSIONAPPS_PT.V2MIBOSCMATDEV_LINUX.X64
export HV_PREFIX=/scratch/bin

export ARTIFACTORY_PHX_USR=oscf-artifactory_ww@oracle.com

export ADE_SKIP_HARDCODED_EXPANDS=1
export ADE_SITE=ade_fusion_slc
export ADE_EXPAND_SPEC=fmwtools/*:fusionapps/jlib/*:fusionapps/crm/*
export FUSIONAPPS_SKIP_FMWC=TRUE

export PATH=/scratch/bin:/scratch/helium/helium.js/cli:$HELIUM_HOME/bin:/usr/bin:$HOME/.local/bin:$HOME/bin:${VOLTA_HOME}/bin:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

. /usr/local/packages/Proxy-Config-set.sh
export no_proxy=$no_proxy,.oraclevcn.com

eval "$(starship init bash)"
