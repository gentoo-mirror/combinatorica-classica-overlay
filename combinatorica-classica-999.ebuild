#This is a Gentoo ebuild to merge it (if you like emerge command)
EAPI=7

DESCRIPTION="Combinatorica classica"
HOMEPAGE="https://gitflic.ru/project/dcc0/combinatorica-classica/"
inherit git-r3
EGIT_REPO_URI="https://gitflic.ru/project/dcc0/combinatorica-classica.git"
inherit autotools git-r3 bash-completion-r1
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
 
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""



echo -e "Attention! This program cannot be installed automatically!";	
elog -e "\e[32;1m You can find the program here:  /tmp/combinatorica-classica \e[0m";
elog "Не забудьте перенести программу в каталог /user/local/bin/ или в каталог /home/user";
elog "Don't forget to copy the program to your home directory!";
elog "TO INSTALL THE PROGRAM: run ./install.sh";	
elog "Чтобы скомпилировать алгоритмы, запустите  ./install.sh";

