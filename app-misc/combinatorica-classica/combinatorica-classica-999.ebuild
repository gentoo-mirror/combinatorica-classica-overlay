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
src_compile() {
  chmod +x ./install.sh
  ./install.sh
}
src_install() {
  into /usr/local/
  dobin bin/*
}
