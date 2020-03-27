/****************************************************************************
** Meta object code from reading C++ file 'jog_joint_panel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jog_control/jog_controller/src/jog_joint_panel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'jog_joint_panel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jog_controller__JogJointPanel_t {
    QByteArrayData data[7];
    char stringdata0[80];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jog_controller__JogJointPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jog_controller__JogJointPanel_t qt_meta_stringdata_jog_controller__JogJointPanel = {
    {
QT_MOC_LITERAL(0, 0, 29), // "jog_controller::JogJointPanel"
QT_MOC_LITERAL(1, 30, 6), // "update"
QT_MOC_LITERAL(2, 37, 0), // ""
QT_MOC_LITERAL(3, 38, 11), // "updateJoint"
QT_MOC_LITERAL(4, 50, 13), // "respondEnable"
QT_MOC_LITERAL(5, 64, 7), // "checked"
QT_MOC_LITERAL(6, 72, 7) // "publish"

    },
    "jog_controller::JogJointPanel\0update\0"
    "\0updateJoint\0respondEnable\0checked\0"
    "publish"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jog_controller__JogJointPanel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x09 /* Protected */,
       3,    0,   35,    2, 0x09 /* Protected */,
       4,    1,   36,    2, 0x09 /* Protected */,
       6,    0,   39,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    5,
    QMetaType::Void,

       0        // eod
};

void jog_controller::JogJointPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        JogJointPanel *_t = static_cast<JogJointPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->update(); break;
        case 1: _t->updateJoint(); break;
        case 2: _t->respondEnable((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->publish(); break;
        default: ;
        }
    }
}

const QMetaObject jog_controller::JogJointPanel::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_jog_controller__JogJointPanel.data,
      qt_meta_data_jog_controller__JogJointPanel,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jog_controller::JogJointPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jog_controller::JogJointPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jog_controller__JogJointPanel.stringdata0))
        return static_cast<void*>(const_cast< JogJointPanel*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int jog_controller::JogJointPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
