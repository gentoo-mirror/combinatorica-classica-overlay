#This is a Gentoo ebuild to merge it (if you like emerge command)
EAPI=7
DESCRIPTION="Combinatorica classica - пакет классических переборных алгоритмов (итеративных), написанных на языке C(89). Читайте подробнее: man combinatorica-classica"
HOMEPAGE="https://gitflic.ru/project/dcc0/combinatorica-classica-overlay"
inherit git-r3
EGIT_REPO_URI="https://gitflic.ru/project/dcc0/combinatorica-classica.git"
LICENSE="PD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
PROPERTIES="live"

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
  doman *.8
  into /usr/local/
  dobin bin/*
}
