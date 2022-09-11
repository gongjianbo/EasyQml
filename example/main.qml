import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import EasyQml 5.15

Window {
    width: 500
    height: 400
    visible: true
    title: "EasyQml Example"
    color: "gray"

    PaintedTest{
        width: 100
        height: 100
        anchors.centerIn: parent
        fillColor: "orange"
    }

    QmlTest{
        width: 100
        height: 100
        color: "orange"
    }
}
