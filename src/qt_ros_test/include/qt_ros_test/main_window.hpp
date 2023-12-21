/**
 * @file /include/qt_ros_test/main_window.hpp
 *
 * @brief Qt based gui for qt_ros_test.
 *
 * @date November 2010
 **/
#ifndef qt_ros_test_MAIN_WINDOW_H
#define qt_ros_test_MAIN_WINDOW_H

/*****************************************************************************
** Includes
*****************************************************************************/

#include <QtWidgets/QMainWindow>
#include "ui_main_window.h"
#include "qnode.hpp"
#include <QtGui>
#include <sensor_msgs/BatteryState.h>
#include <std_msgs/Float32.h>
#include "CCtrlDashBoard.hpp"
#include <QTimer>

/*****************************************************************************
** Namespace
*****************************************************************************/

namespace qt_ros_test {

/*****************************************************************************
** Interface [MainWindow]
*****************************************************************************/
/**
 * @brief Qt central, all operations relating to the view part here.
 */
class MainWindow : public QMainWindow {
Q_OBJECT

public:
	MainWindow(int argc, char** argv, QWidget *parent = 0);
	~MainWindow();

	void ReadSettings(); // Load up qt program settings at startup
	void WriteSettings(); // Save qt program settings when closing

	void closeEvent(QCloseEvent *event); // Overloaded function
	void showNoMasterMessage();
    void init_cmd();
    void init_ssh();
    void btn_disableall(bool _enabled);
    void closeroslaunch();
Q_SIGNALS:
    void sigSend(QString strMsg);

public slots:
	/******************************************
	** Auto-connections (connectSlotsByName())
	*******************************************/
	void on_actionAbout_triggered();
	void on_button_connect_clicked(bool check );
	void on_checkbox_use_environment_stateChanged(int state);
    void slot_cmd_read();
    void slot_cmd_err();



    /******************************************
    ** Manual connections
    *******************************************/

    void slot_rosShutdown();

    void slot_rosOpen();

private slots:


    void on_checkBox_key_clicked(bool checked);

    void pushButton_go();

    void pushButton_stop();

    void updata_image(QImage);

    void slotbatteryState(double);

    void slotspeedState(double,double,double,double,double,double);

    void on_horizontalSlider_v_sliderMoved(int position);

    void on_horizontalSlider_c_sliderMoved(int position);

    void on_checkBox__opencamera_clicked(bool checked);

    void on_pushButton_linefollower_clicked(bool checked);

    void on_pushButton_laserfollower_clicked(bool checked);

    void on_pushButton_clicked(bool checked);

    void on_pushButton_subimg_clicked(bool checked);

    void on_pushButton_visfollower_clicked(bool checked);

    void on_pushButton_xfmic_clicked(bool checked);

    void on_pushButton_kcftrack_clicked(bool checked);

    void on_pushButton_webusbcam_clicked(bool checked);

    void on_pushButton_arlabel_clicked(bool checked);

    void on_pushButton_arfollower_clicked(bool checked);

    void on_pushButton_joy_control_clicked(bool checked);


    void on_pushButton_2dmap_clicked(bool checked);

    void on_pushButton_2dmapsave_clicked(bool checked);

    void on_pushButton_2dnav_clicked(bool checked);

    void on_pushButton_3dmap_clicked(bool checked);

    void on_pushButton_3dnav_clicked(bool checked);

    void on_pushButton_pure3dmap_clicked(bool checked);

    void on_pushButton_pure3dnav_clicked(bool checked);

    void on_pushButton_rrt_clicked(bool checked);

    void on_pushButton_moveitik_clicked(bool checked);

    void on_pushButton_moveitfk_clicked(bool checked);

    void on_pushButton_moveitpick_clicked(bool checked);

    void on_pushButton_moveitpick_2_clicked(bool checked);

    void on_pushButton_2_clicked(bool checked);

    void on_lineEdit_cmd_returnPressed();

    void keyPressEvent(QKeyEvent *event);

    void keyReleaseEvent(QKeyEvent *event);

    void slottimeout();

    void on_quit_button_2_clicked(bool checked);

private:
	Ui::MainWindowDesign ui;
	QNode qnode;
    QProcess *_cmd = NULL;
    bool m_bConnectState;
    CCtrlDashBoard *speedxboard;
    CCtrlDashBoard *speedyboard;
    QTimer* m_pTimer;
    std::string user_passward;
    bool keypress;
};

}  // namespace qt_ros_test

#endif // qt_ros_test_MAIN_WINDOW_H
