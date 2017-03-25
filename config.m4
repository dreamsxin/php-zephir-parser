dnl $Id$
dnl config.m4 for extension zephir_parser

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

PHP_ARG_ENABLE(zephir-parser, whether to enable zephir_parser,
[ --enable-zephir-parser   Enable Zephir Parser])

if test "$PHP_ZEPHIR_PARSER" = "yes"; then
	AC_DEFINE(HAVE_ZEPHIR_PARSER, 1, [Whether you have zephir_parser])
	zephir_parser_sources="zephir_parser.c parser/parser.c parser/scanner.c"
	PHP_NEW_EXTENSION(zephir_parser, $zephir_parser_sources, $ext_shared, "")
	PHP_SUBST(ZEPHIR_PARSER_SHARED_LIBADD)

	old_CPPFLAGS=$CPPFLAGS
	CPPFLAGS="$CPPFLAGS $INCLUDES"

	CPPFLAGS=$old_CPPFLAGS
fi
