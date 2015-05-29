import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2




    Canvas {
    id: canvas
    width: 400;
        height: 240;
        contextType: "2d";
    property real lastX
    property real lastY
    property color color: "red"
    onPaint: {
    var ctx = getContext('2d')
    ctx.lineWidth = 1.5
    ctx.strokeStyle = canvas.color
    ctx.beginPath()
    ctx.moveTo(lastX, lastY)
    lastX = area.mouseX
    lastY = area.mouseY
    ctx.lineTo(lastX, lastY)
    ctx.stroke()
    }
    MouseArea {
    id: area
    anchors.fill: parent
    onPressed: {
         console.log(mouseX,mouseY);
        console.log("test");
    canvas.lastX = mouseX
    canvas.lastY = mouseY
    }
    onPositionChanged: {
    canvas.requestPaint()
        console.log(mouseX,mouseY);
    }
    }
    }

