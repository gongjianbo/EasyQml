import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.impl 2.15
import QtQuick.Templates 2.15 as T

/**
 * @brief Customizing ToolTip
 * @author GongJianBo1992（龚建波）
 * @date 2021-3-3
 * @see qt-everywhere-src-5.15.2\qtquickcontrols2\src\imports\controls\ToolTip.qml
 */
T.ToolTip {
    id: control

    x: parent ? parseInt((parent.width - implicitWidth) / 2) : 0
    y: -implicitHeight - 2
    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            contentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             contentHeight + topPadding + bottomPadding)

    margins: 6
    verticalPadding: 8
    horizontalPadding: 12

    closePolicy: T.Popup.CloseOnEscape | T.Popup.CloseOnPressOutsideParent | T.Popup.CloseOnReleaseOutsideParent

    font{
        family: "Microsoft YaHei"
        pixelSize: 14
    }

    contentItem: Text {
        text: control.text
        font: control.font
        wrapMode: Text.Wrap
        color: "#EEEEEE"
    }

    background: Rectangle {
        border.color: "#505050"
        color: "#404040"
        radius: 4
    }
}
