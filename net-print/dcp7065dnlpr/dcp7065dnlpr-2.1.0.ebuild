# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit rpm

DESCRIPTION="Brother DCP-7065DN LPR driver"
HOMEPAGE="http://welcome.solutions.brother.com/bsc/public_s/id/linux/en/download_prn.html#DCP-7065DN"
SRC_URI="dcp7065dnlpr-2.1.0-1.i386.rpm"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
RESTRICT="fetch strip"
DOWNLOAD_URL="http://www.brother.com/cgi-bin/agreement/agreement.cgi?dlfile=http://solutions.brother.com/Library/sol/printer/linux/rpmfiles/cups_wrapper/dcp7065dnlpr-2.1.0-1.i386.rpm&lang=English_gpl"

DEPEND=""
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
