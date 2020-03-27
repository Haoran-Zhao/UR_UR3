/****************************************************************************
** Meta object code from reading C++ file 'jog_frame_panel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jog_control/jog_controller/src/jog_frame_panel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'jog_frame_panel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jog_controller__JogFramePanel_t {
    QByteArrayData data[19];
    char stringdata0[296];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jog_controller__JogFramePanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jog_controller__JogFramePanel_t qt_meta_stringdata_jog_controller__JogFramePanel = {
    {
QT_MOC_LITERAL(0, 0, 29), // "jog_controller::JogFramePanel"
QT_MOC_LITERAL(1, 30, 6), // "update"
QT_MOC_LITERAL(2, 37, 0), // ""
QT_MOC_LITERAL(3, 38, 11), // "updateFrame"
QT_MOC_LITERAL(4, 50, 12), // "updateGroups"
QT_MOC_LITERAL(5, 63, 16), // "updateTargetLink"
QT_MOC_LITERAL(6, 80, 13), // "respondEnable"
QT_MOC_LITERAL(7, 94, 7), // "checked"
QT_MOC_LITERAL(8, 102, 12), // "respondFrame"
QT_MOC_LITERAL(9, 115, 5), // "index"
QT_MOC_LITERAL(10, 121, 17), // "respondTargetLink"
QT_MOC_LITERAL(11, 139, 11), // "respondAxis"
QT_MOC_LITERAL(12, 151, 22), // "respondOrientationAxis"
QT_MOC_LITERAL(13, 174, 20), // "respondSliderChanged"
QT_MOC_LITERAL(14, 195, 5), // "value"
QT_MOC_LITERAL(15, 201, 21), // "respondSliderReleased"
QT_MOC_LITERAL(16, 223, 31), // "respondOrientationSliderChanged"
QT_MOC_LITERAL(17, 255, 32), // "respondOrientationSliderReleased"
QT_MOC_LITERAL(18, 288, 7) // "publish"

    },
    "jog_controller::JogFramePanel\0update\0"
    "\0updateFrame\0updateGroups\0updateTargetLink\0"
    "respondEnable\0checked\0respondFrame\0"
    "index\0respondTargetLink\0respondAxis\0"
    "respondOrientationAxis\0respondSliderChanged\0"
    "value\0respondSliderReleased\0"
    "respondOrientationSliderChanged\0"
    "respondOrientationSliderReleased\0"
    "publish"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jog_controller__JogFramePanel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   84,    2, 0x09 /* Protected */,
       3,    0,   85,    2, 0x09 /* Protected */,
       4,    0,   86,    2, 0x09 /* Protected */,
       5,    0,   87,    2, 0x09 /* Protected */,
       6,    1,   88,    2, 0x09 /* Protected */,
       8,    1,   91,    2, 0x09 /* Protected */,
      10,    1,   94,    2, 0x09 /* Protected */,
      11,    1,   97,    2, 0x09 /* Protected */,
      12,    1,  100,    2, 0x09 /* Protected */,
      13,    1,  103,    2, 0x09 /* Protected */,
      15,    0,  106,    2, 0x09 /* Protected */,
      16,    1,  107,    2, 0x09 /* Protected */,
      17,    0,  110,    2, 0x09 /* Protected */,
      18,    0,  111,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    7,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void jog_controller::JogFramePanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        JogFramePanel *_t = static_cast<JogFramePanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->update(); break;
        case 1: _t->updateFrame(); break;
        case 2: _t->updateGroups(); break;
        case 3: _t->updateTargetLink(); break;
        case 4: _t->respondEnable((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->respondFrame((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->respondTargetLink((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->respondAxis((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->respondOrientationAxis((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->respondSliderChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->respondSliderReleased(); break;
        case 11: _t->respondOrientationSliderChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 12: _t->respondOrientationSliderReleased(); break;
        case 13: _t->publish(); break;
        default: ;
        }
    }
}

const QMetaObject jog_controller::JogFramePanel::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_jog_controller__JogFramePanel.data,
      qt_meta_data_jog_controller__JogFramePanel,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jog_controller::JogFramePanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jog_controller::JogFramePanel::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jog_controller__JogFramePanel.stringdata0))
        return static_cast<void*>(const_cast< JogFramePanel*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int jog_controller::JogFramePanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 14)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 14;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
