import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQml 2.15

Rectangle {
    id: control
    border.color: "#505050"
    color: "#202020"
    radius: 4

    signal requestLoad(string pageUrl)

    ListView {
        id: list_view
        anchors.fill: parent
        anchors.margins: 4 + control.border.width
        keyNavigationEnabled: false
        clip: true
        spacing: 4
        delegate: Rectangle {
            width: ListView.view.width
            height: 30
            color: item_mouse.containsPress
                   ? "#505050"
                   : (item_mouse.containsMouse || ListView.isCurrentItem)
                     ? "#404040"
                     : "#303030"
            radius: 4
            MouseArea {
                id: item_mouse
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    list_view.currentIndex = model.index
                    control.requestLoad(model.pageUrl)
                }
            }
            Text {
                anchors.fill: parent
                font{
                    family: "Microsoft YaHei"
                    pixelSize: 14
                }
                color: "#EEEEEE"
                text: model.pageName
                elide: Text.ElideRight
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        model: list_model
    }

    ListModel {
        id: list_model
        ListElement {
            pageName: "基础组件"
            pageUrl: "qrc:/Control/BasicControl.qml"
        }
        ListElement {
            pageName: "按钮"
            pageUrl: "qrc:/Control/ButtonControl.qml"
        }
    }

    Component.onCompleted: {
        list_view.currentIndex = 0
        control.requestLoad(list_model.get(0).pageUrl)
    }
}
