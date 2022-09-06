#pragma once
#include <QtCore/qglobal.h>
#include <QMetaObject>

#if defined(EASYQML_LIBRARY)
#  define EASYQML_EXPORT Q_DECL_EXPORT
#else
#  define EASYQML_EXPORT Q_DECL_IMPORT
#endif

#ifdef __cplusplus
extern "C" {
#endif

EASYQML_EXPORT void test_print();

#ifdef __cplusplus
}
#endif
