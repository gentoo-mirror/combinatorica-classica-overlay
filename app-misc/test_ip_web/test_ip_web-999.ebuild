#This is a Gentoo ebuild to merge it (if you like emerge command)
EAPI=7
DESCRIPTION="Test for ip and website availability, using ping and curl"
HOMEPAGE="https://gitflic.ru/project/dcc0/combinatorica-classica-overlay"
inherit git-r3
EGIT_REPO_URI="https://gitflic.ru/project/dcc0/test_ip_web.git"
LICENSE="PD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
PROPERTIES="live"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
  chmod +x ./test_ip_web.sh
  chmod +x ./install.sh
  ./install.sh
}
src_install() {
  into /usr/local/
  dobin test_ip_web.sh
  dobin test_ip.comb
}
