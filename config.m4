dnl $Id$
dnl config.m4 for extension decode

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

PHP_ARG_WITH(decode, for decode support,
dnl Make sure that the comment is aligned:
[  --with-decode             Include decode support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(decode, whether to enable decode support,
dnl Make sure that the comment is aligned:
dnl [  --enable-decode           Enable decode support])

if test "$PHP_DECODE" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-decode -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/decode.h"  # you most likely want to change this
  dnl if test -r $PHP_DECODE/$SEARCH_FOR; then # path given as parameter
  dnl   DECODE_DIR=$PHP_DECODE
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for decode files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       DECODE_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$DECODE_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the decode distribution])
  dnl fi

  dnl # --with-decode -> add include path
  dnl PHP_ADD_INCLUDE($DECODE_DIR/include)

  dnl # --with-decode -> check for lib and symbol presence
  dnl LIBNAME=decode # you may want to change this
  dnl LIBSYMBOL=decode # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $DECODE_DIR/$PHP_LIBDIR, DECODE_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_DECODELIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong decode lib version or lib not found])
  dnl ],[
  dnl   -L$DECODE_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(DECODE_SHARED_LIBADD)

  PHP_NEW_EXTENSION(decode, decode.c, $ext_shared)
fi
