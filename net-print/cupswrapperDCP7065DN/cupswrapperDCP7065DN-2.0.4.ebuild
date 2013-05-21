# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit rpm

DESCRIPTION="Brother DCP-7065DN CUPS wrapper"
HOMEPAGE="http://welcome.solutions.brother.com/bsc/public_s/id/linux/en/download_prn.html#DCP-7065DN"
SRC_URI="cupswrapperDCP7065DN-2.0.4-2.i386.rpm"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
RESTRICT="fetch strip"
DOWNLOAD_URL="http://www.brother.com/cgi-bin/agreement/agreement.cgi?dlfile=http://solutions.brother.com/Library/sol/printer/linux/rpmfiles/cups_wrapper/cupswrapperDCP7065DN-2.0.4-2.i386.rpm&lang=English_gpl"

DEPEND="
   app-text/a2ps
   net-print/dcp7065dnlpr
"
RDEPEND="${DEPEND}"

pkg_nofetch() {
   einfo "Please download ${A} from ${DOWNLOAD_URL}."
   einfo "Select 'I Accept' and move the file to ${DISTDIR}."
}

src_unpack() {
   rpm_unpack || die "Error unpacking ${A}."
}

src_install() {
   cp -r $WORKDIR $D
   mv $D/work/* $D
   rm -r $D/work/
}

pkg_postinst() {
   echo
   einfo "If you can't print, create the following symlink:"
   einfo "ln -s /usr/lib/cups/filter/brlpdwrapperDCP7065DN
   /usr/libexec/cups/filter/brlpdwrapperDCP7065DN"
   echo
}
