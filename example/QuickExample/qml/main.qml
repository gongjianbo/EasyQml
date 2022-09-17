import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import EasyQml 5.15
import "./Main"

Window {
    width: 900
    height: 600
    visible: true
    title: "QtQuick Example (by GongJianBo1992)"
    color: "#101010"

    RowLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 12

        LeftMenu {
            id: left_menu
            width: 240
            Layout.fillHeight: true
            onRequestLoad: (pageUrl)=>{
                               right_pane.loadPage(pageUrl)
                           }
        }

        RightPane {
            id: right_pane
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
