# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit rpm

DESCRIPTION="Brother DCP-7065DN sane support"
HOMEPAGE="http://welcome.solutions.brother.com/bsc/public_s/id/linux/en/download_prn.html#DCP-7065DN"
SRC_URI="brscan4-0.3.0-3.i386.rpm"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
RESTRICT="fetch strip"
DOWNLOAD_URL="http://www.brother.com/pub/bsc/linux/dlf/brscan4-0.3.0-3.i386.rpm"

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
}
