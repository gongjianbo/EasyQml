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

    Row {
        anchors.centerIn: parent
        spacing: 12
        PaintedTest {
            width: 100
            height: 100
            fillColor: "red"
        }

        QmlTest {
            width: 100
            height: 80
            color: "green"
        }

        QuickTest {
            width: 80
            height: 100
            color: "blue"
        }
    }
}
