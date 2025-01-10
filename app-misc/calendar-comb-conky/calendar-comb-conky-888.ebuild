#This is a Gentoo ebuild to merge it (if you like emerge command)
EAPI=7
DESCRIPTION="Calendar for Conky (vertical colored weekends)"
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

src_compile () {
  chmod +x ./calendar_conky.sh
  chmod +x ./install.sh
  ./install.sh
}

src_install () {
  doman *.8
  into /usr/local/
  dobin calendar_conky.sh
  dobin calendar_conky.comb
}

