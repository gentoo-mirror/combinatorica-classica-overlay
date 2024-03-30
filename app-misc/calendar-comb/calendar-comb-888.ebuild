#This is a Gentoo ebuild to merge it (if you like emerge command)
EAPI=7
DESCRIPTION="Календарь для терминала Linux с подсветкой даты и выходных"
HOMEPAGE="https://gitflic.ru/project/dcc0/combinatorica-classica-overlay"
inherit git-r3
EGIT_REPO_URI="https://gitflic.ru/project/dcc0/kalendar-dlya-terminala-linux.git"
LICENSE="PD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
PROPERTIES="live"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
elog "Исполняемые файлы программ Вы найдёте в /usr/local/bin/";
elog "Файлы имееют расширение .comb и .sh";
elog "To install the program manually: run ./install.sh";
elog "Чтобы скомпилировать алгоритмы вручную, запустите:  ./install.sh";
elog "Запустить календарь:  calendar.sh";
elog "Запустить календарь без форматирования (только числа):  calendar.comb";
elog "Страница руководства:  calendar.comb";

src_compile() {
  chmod +x ./calendar.sh  	
  chmod +x ./install.sh
  ./install.sh
}
src_install() {
  doman *.8
  into /usr/local/
  dobin calendar.sh
  dobin calendar.comb
}
