import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: control
    border.color: "#505050"
    color: "#202020"
    radius: 4

    Loader {
        id: loader
        anchors.fill: parent
        anchors.margins: 4 + control.border.width
    }

    function loadPage(pageUrl)
    {
        loader.source = pageUrl
    }
}
