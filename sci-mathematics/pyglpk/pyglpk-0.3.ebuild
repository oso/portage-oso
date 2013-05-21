# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

DESCRIPTION="Python module which encapsulates the functionality of the GNU
Linear Programming Kit (GLPK)"
HOMEPAGE="http://tfinley.net/software/pyglpk/"
SRC_URI="http://tfinley.net/software/pyglpk/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="sci-mathematics/glpk"
RDEPEND="${DEPEND}"

