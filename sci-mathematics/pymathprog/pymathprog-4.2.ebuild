# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="Python reincarnation of AMPL and GNU MathProg modeling language"
HOMEPAGE="http://pymprog.sourceforge.net/index.html"
SRC_URI="mirror://sourceforge/pymprog/pymprog-0.4/pympl.${PV}.tgz"
S="${WORKDIR}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="sci-mathematics/glpk"
RDEPEND="${DEPEND}"

RESTRICT_PYTHON_ABIS="3.*"
