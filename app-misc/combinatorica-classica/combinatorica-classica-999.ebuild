#This is a Gentoo ebuild to merge it (if you like emerge command)
EAPI=7
DESCRIPTION="Combinatorica classica"
HOMEPAGE="https://gitflic.ru/project/dcc0/combinatorica-classica-overlay"
#inherit git-r3
EGIT_REPO_URI="https://gitflic.ru/project/dcc0/combinatorica-classica.git"
inherit autotools git-r3 bash-completion-r1
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
 
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

elog "Исполняемые файлы программ Вы найдёте в /usr/local/bin/";
elog "Файлы имееют расширение .comb";
elog "To install the program manually: run ./install.sh";    
elog "Чтобы скомпилировать алгоритмы вручную, запустите:  ./install.sh";
elog "Благодарим за использование пакета Combinatorica Classica";

src_compile() {
  chmod +x ./install.sh 
  ./install.sh
}


src_install() {
  into /usr/local/
  dobin bin/*
}
