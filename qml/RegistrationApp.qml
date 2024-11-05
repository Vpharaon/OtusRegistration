import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow {
    objectName: "applicationWindow"
    //initialPage: Qt.resolvedUrl("pages/MainPage.qml")
    initialPage: Qt.resolvedUrl("pages/RegistrationStep2Page.qml")
    //initialPage: Qt.resolvedUrl("pages/RegistrationCompletePage.qml")
    cover: Qt.resolvedUrl("cover/DefaultCoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
}
