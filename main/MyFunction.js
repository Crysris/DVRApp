
var ta=[]

function timeArray(maxNum) {
    for (var i = 1; i <= maxNum; i++) {
        ta.push(i)
    }
    return ta
}


function currentDate(){
    return Qt.formatDateTime(new Date(), "yyyy-MM-dd")
}
function currentTime(){
    return Qt.formatDateTime(new Date(), "hh:mm:ss")
}

function readImages(videoType){
    var path="file:/l/work/DVRApp/DVRApp/res/video/"+videoType
}




