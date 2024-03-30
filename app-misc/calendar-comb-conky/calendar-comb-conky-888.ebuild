#This is a Gentoo ebuild to merge it (if you like emerge command)
EAPI=7
DESCRIPTION="Календарь для Conky с подсветкой даты и выходных"
HOMEPAGE="https://gitflic.ru/project/dcc0/combinatorica-classica-overlay"
inherit git-r3
EGIT_REPO_URI="https://gitflic.ru/project/dcc0/kalendar-dlya-conky.git"
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
elog "Данная программа корректно работает только с  Conky.";
elog "Для работы с календарем из терминала воспользуйтесь пакетом calendar-comb";
elog "Страница руководства:  calendar_conky.comb";

src_compile() {
  chmod +x ./calendar_conky.sh
  chmod +x ./install.sh
  ./install.sh
}
src_install() {
  doman *.8
  into /usr/local/
  dobin calendar_conky.sh
  dobin calendar_conky.comb
}
