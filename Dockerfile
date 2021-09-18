FROM fedora:34

RUN dnf -y install \
        axel git openssl \
        postgresql postgresql-devel \
        python3 python3-pip \
        python3-devel sqlite tar \
        neofetch wget xz zip \
        && dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
        && dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm \
        dnf -y install \
        aria2 chromium ffmpeg \
        figlet gcc gzip \
        && axel https://raw.githubusercontent.com/FrosT2k5/ProjectFizilion/dragon/requirements.txt \
        && pip3 install -U pip setuptools wheel \
        && pip3 install --no-cache-dir -r requirements.txt \
        && rm requirements.txt
