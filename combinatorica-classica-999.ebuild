#This is a Gentoo ebuild to merge it (if you like emerge command)
EAPI=7
 
DESCRIPTION="Combinatorica classica"
HOMEPAGE="https://gitflic.ru/project/dcc0/combinatorica-classica/"
SRC_URI="http://localhost/${PN}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
 
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""



src_unpack() {
	#Обработка архива с некорректным именем 
tar -C /tmp -xvf /var/calculate/distfiles/combinatorica-classica.tar.gz
	  ### Строка для Gentoo  
#	  mv /var/cache/distfiles/raw?file=combinatorica-classica-999.tar.gz /var/calculate/distfiles/combinatorica-classica-999.tar.gz
#	  tar -C /tmp -xvf /var/cache//distfiles/combinatorica-classica-999.tar.gz
	  
echo -e "Attention! This program cannot be installed automatically!";
echo -e "\e[31;1m You shoud copy an archive *.tar.gz manually to your HOME DIR and unpack\e[0m";
echo -e "\e[31;1m Search program in /tmp/\e[0m";		
elog -e "\e[32;1m You can find the program here:  /tmp/combinatorica-classica \e[0m";
elog "Не забудьте перенести программу в каталог /user/local/bin/ или в каталог /home/user";
elog "Don't forget to copy the program to your home directory!";
elog "TO INSTALL THE PROGRAM: run ./install.sh";	
elog "Чтобы скомпилировать алгоритмы, запустите  ./install.sh";
}
