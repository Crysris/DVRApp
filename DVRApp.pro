TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
include($$PWD/qml.pri)
DISTFILES += \
    .gitignore \
    res/icon/bg_progress_linear.png \
    res/icon/nor_dvr_camera_icon_normal.png \
    res/icon/nor_dvr_camera_icon_selected.png \
    res/icon/nor_dvr_completed_icon.png \
    res/icon/nor_dvr_down_icon.png \
    res/icon/nor_dvr_emergencyvideo_icon_normal.png \
    res/icon/nor_dvr_emergencyvideo_icon_selected.png \
    res/icon/nor_dvr_mask1.png \
    res/icon/nor_dvr_ mask2.png \
    res/icon/nor_dvr_ mask3.png \
    res/icon/nor_dvr_ mask5.png \
    res/icon/nor_dvr_ memory_icon_normal.png \
    res/icon/nor_dvr_nest_button_normal.png \
    res/icon/nor_dvr_ photo_icon_normal.png \
    res/icon/nor_dvr_playblack_icon_normal.png \
    res/icon/nor_dvr_previous_button_normal.png \
    res/icon/nor_dvr_ recording_icon_normal.png \
    res/icon/nor_dvr_set_icon_normal.png \
    res/icon/nor_dvr_start_button_normal.png \
    res/icon/nor_dvr_start_icon_normal.png \
    res/icon/nor_dvr_start_icon_selected.png \
    res/icon/nor_dvr_up_icon.png \
    res/icon/nor_dvr_video_icon_selected.png \
    res/icon/slider_normal.png \
    res/icon/bg_progress_linear.png \
    res/icon/nor_dvr_camera_icon_normal.png \
    res/icon/nor_dvr_camera_icon_selected.png \
    res/icon/nor_dvr_completed_icon.png \
    res/icon/nor_dvr_down_icon.png \
    res/icon/nor_dvr_emergencyvideo_icon_normal.png \
    res/icon/nor_dvr_emergencyvideo_icon_selected.png \
    res/icon/nor_dvr_fastreverse_button_normal.png \
    res/icon/nor_dvr_mask1.png \
    res/icon/nor_dvr_mask4.png \
    res/icon/nor_dvr_ mask2.png \
    res/icon/nor_dvr_ mask3.png \
    res/icon/nor_dvr_ mask5.png \
    res/icon/nor_dvr_nest_button_normal.png \
    res/icon/nor_dvr_ photo_icon_normal.png \
    res/icon/nor_dvr_playblack_icon_normal.png \
    res/icon/nor_dvr_previous_button_normal.png \
    res/icon/nor_dvr_ recording_icon_normal.png \
    res/icon/nor_dvr_set_icon_normal.png \
    res/icon/nor_dvr_start_button_normal.png \
    res/icon/nor_dvr_start_icon_normal.png \
    res/icon/nor_dvr_start_icon_selected.png \
    res/icon/nor_dvr_up_icon.png \
    res/icon/nor_dvr_video_icon_selected.png \
    res/icon/slider_normal.png \
    res/icon/nor_dvr_ memory_icon_normal.png \
    res/icon/nor_dvr_ memory_icon_normal.png \
    res/video/normal/Nor_DVR_2-11格式化提醒 (copy).png \
    res/video/normal/Nor_DVR_2-11格式化提醒 (another copy).png \
    res/video/normal/Nor_DVR_2-11格式化提醒 (3rd copy).png \
    res/video/normal/Nor_DVR_2-11格式化提醒.png \
    res/video/normal/Nor_DVR_2-10设置 (copy).png \
    res/video/normal/Nor_DVR_2-10设置 (another copy).png \
    res/video/normal/Nor_DVR_2-10设置 (3rd copy).png \
    res/video/normal/Nor_DVR_2-10设置.png \
    res/video/normal/Nor_DVR_2-9查看图片 (copy).png \
    res/video/normal/Nor_DVR_2-9查看图片 (another copy).png \
    res/video/normal/Nor_DVR_2-9查看图片 (3rd copy).png \
    res/video/normal/Nor_DVR_2-9查看图片.png \
    res/video/normal/Nor_DVR_2-8图片预览 (copy).png \
    res/video/normal/Nor_DVR_2-8图片预览 (another copy).png \
    res/video/normal/Nor_DVR_2-8图片预览 (3rd copy).png \
    res/video/normal/Nor_DVR_2-8图片预览.png \
    res/video/normal/Nor_DVR_2-7播放视频 (copy).png \
    res/video/normal/Nor_DVR_2-7播放视频 (another copy).png \
    res/video/normal/Nor_DVR_2-7播放视频 (3rd copy).png \
    res/video/normal/Nor_DVR_2-7播放视频.png \
    res/video/normal/Nor_DVR_2-6回放泊车视频 (copy).png \
    res/video/normal/Nor_DVR_2-6回放泊车视频 (another copy).png \
    res/video/normal/Nor_DVR_2-6回放泊车视频 (3rd copy).png \
    res/video/normal/Nor_DVR_2-6回放泊车视频.png \
    res/video/normal/Nor_DVR_2-6-2泊车视频选择 (copy).png \
    res/video/normal/Nor_DVR_2-6-2泊车视频选择 (another copy).png \
    res/video/normal/Nor_DVR_2-6-2泊车视频选择 (3rd copy).png \
    res/video/normal/Nor_DVR_2-6-2泊车视频选择.png \
    res/video/normal/Nor_DVR_2-5回放紧急视频 (copy).png \
    res/video/normal/Nor_DVR_2-5回放紧急视频 (another copy).png \
    res/video/normal/Nor_DVR_2-5回放紧急视频 (3rd copy).png \
    res/video/normal/Nor_DVR_2-5回放紧急视频.png \
    res/video/normal/Nor_DVR_2-4回放普通视频 (copy).png \
    res/video/normal/Nor_DVR_2-4回放普通视频 (another copy).png \
    res/video/normal/Nor_DVR_2-4回放普通视频 (3rd copy).png \
    res/video/normal/Nor_DVR_2-4回放普通视频.png \
    res/video/normal/Nor_DVR_2-3拍照 (copy).png \
    res/video/normal/Nor_DVR_2-3拍照 (another copy).png \
    res/video/normal/Nor_DVR_2-3拍照 (3rd copy).png \
    res/video/normal/Nor_DVR_2-3拍照.png \
    res/video/normal/Nor_DVR_2-2紧急录制 (copy).png \
    res/video/normal/Nor_DVR_2-2紧急录制 (another copy).png \
    res/video/normal/Nor_DVR_2-2紧急录制 (3rd copy).png \
    res/video/normal/Nor_DVR_2-2紧急录制.png \
    res/video/normal/Nor_DVR_2-1 (copy).png \
    res/video/normal/Nor_DVR_2-1 (another copy).png \
    res/video/normal/Nor_DVR_2-1 (3rd copy).png \
    res/video/normal/Nor_DVR_2-1.png \
    res/video/normal/Nor_DVR_2-11格式化提醒 (copy).png \
    res/video/normal/Nor_DVR_2-11格式化提醒 (another copy).png \
    res/video/normal/Nor_DVR_2-11格式化提醒 (3rd copy).png \
    res/video/normal/Nor_DVR_2-10设置 (copy).png \
    res/video/normal/Nor_DVR_2-10设置 (another copy).png \
    res/video/normal/Nor_DVR_2-10设置 (3rd copy).png \
    res/video/normal/Nor_DVR_2-9查看图片 (copy).png \
    res/video/normal/Nor_DVR_2-9查看图片 (another copy).png \
    res/video/normal/Nor_DVR_2-9查看图片 (3rd copy).png \
    res/video/normal/Nor_DVR_2-8图片预览 (copy).png \
    res/video/normal/Nor_DVR_2-8图片预览 (another copy).png \
    res/video/normal/Nor_DVR_2-8图片预览 (3rd copy).png \
    res/video/normal/Nor_DVR_2-7播放视频 (copy).png \
    res/video/normal/Nor_DVR_2-7播放视频 (another copy).png \
    res/video/normal/Nor_DVR_2-7播放视频 (3rd copy).png \
    res/video/normal/Nor_DVR_2-6回放泊车视频 (copy).png \
    res/video/normal/Nor_DVR_2-6回放泊车视频 (another copy).png \
    res/video/normal/Nor_DVR_2-6回放泊车视频 (3rd copy).png \
    res/video/normal/Nor_DVR_2-6-2泊车视频选择 (copy).png \
    res/video/normal/Nor_DVR_2-6-2泊车视频选择 (another copy).png \
    res/video/normal/Nor_DVR_2-6-2泊车视频选择 (3rd copy).png \
    res/video/normal/Nor_DVR_2-5回放紧急视频 (copy).png \
    res/video/normal/Nor_DVR_2-5回放紧急视频 (another copy).png \
    res/video/normal/Nor_DVR_2-5回放紧急视频 (3rd copy).png \
    res/video/normal/Nor_DVR_2-4回放普通视频 (copy).png \
    res/video/normal/Nor_DVR_2-4回放普通视频 (another copy).png \
    res/video/normal/Nor_DVR_2-4回放普通视频 (3rd copy).png \
    res/video/normal/Nor_DVR_2-3拍照 (copy).png \
    res/video/normal/Nor_DVR_2-3拍照 (another copy).png \
    res/video/normal/Nor_DVR_2-3拍照 (3rd copy).png \
    res/video/normal/Nor_DVR_2-2紧急录制 (copy).png \
    res/video/normal/Nor_DVR_2-2紧急录制 (another copy).png \
    res/video/normal/Nor_DVR_2-2紧急录制 (3rd copy).png \
    res/video/normal/Nor_DVR_2-1 (copy).png \
    res/video/normal/Nor_DVR_2-1 (another copy).png \
    res/video/normal/Nor_DVR_2-1 (3rd copy).png
