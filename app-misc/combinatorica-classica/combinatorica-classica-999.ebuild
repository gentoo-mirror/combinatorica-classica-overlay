#This is a Gentoo ebuild to merge it (if you like emerge command)
EAPI=7

DESCRIPTION="Combinatorica classica"
HOMEPAGE="https://gitflic.ru/project/dcc0/combinatorica-classica-overlay"

EGIT_REPO_URI="https://gitflic.ru/project/dcc0/combinatorica-classica.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
 
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""



echo -e "Attention! This program cannot be installed automatically!";	
elog "Не забудьте перенести программу в каталог /user/local/bin/ или в каталог /home/user";
elog "Don't forget to copy the program into your home directory!";
elog "TO INSTALL THE PROGRAM: run ./install.sh";	
elog "Чтобы скомпилировать алгоритмы, запустите  ./install.sh";

