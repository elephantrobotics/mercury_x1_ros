/**
 * @file /src/main_window.cpp
 *
 * @brief Implementation for the qt gui.
 *
 * @date February 2011
 **/
/*****************************************************************************
** Includes
*****************************************************************************/

#include <QtGui>
#include <QMessageBox>
#include <iostream>
#include "../include/qt_ros_test/main_window.hpp"
#include <QObject>
#include <ros/ros.h>
#include <rviz/visualization_manager.h>
#include <rviz/render_panel.h>
#include <rviz/display.h>
#include <rviz/tool_manager.h>
#include <rviz/tool.h>
#include <QVBoxLayout>
#include <opencv2/opencv.hpp>

/*****************************************************************************
** Namespaces
*****************************************************************************/

namespace qt_ros_test {

using namespace Qt;

/*****************************************************************************
** Implementation [MainWindow]
*****************************************************************************/

MainWindow::MainWindow(int argc, char** argv, QWidget *parent)
	: QMainWindow(parent)
	, qnode(argc,argv)
{
	ui.setupUi(this); // Calling this incidentally connects all ui's triggers to on_...() callbacks in this class.
    QObject::connect(ui.actionAbout_Qt, SIGNAL(triggered(bool)), qApp, SLOT(aboutQt())); // qApp is a global variable for the application
    ReadSettings();
	setWindowIcon(QIcon(":/images/icon.png"));
	ui.tab_manager->setCurrentIndex(0); // ensure the first tab is showing - qt-designer should have this already hardwired, but often loses it (settings?).
    QObject::connect(&qnode, SIGNAL(rosShutdown()), this, SLOT(close()));

    /*********************
    ** Auto Start
    **********************/
    if ( ui.checkbox_remember_settings->isChecked() ) {
        on_button_connect_clicked(true);
    }
    //connect
    QObject::connect(&qnode, SIGNAL(rosShutdown()), this,SLOT(slot_rosShutdown()));
    QObject::connect(&qnode, SIGNAL(Master_shutdown()), this,SLOT(slot_rosShutdown()));
    QObject::connect(ui.pushButton_u, SIGNAL(released()), this,SLOT(pushButton_stop()));
    QObject::connect(ui.pushButton_ru, SIGNAL(released()), this,SLOT(pushButton_stop()));
    QObject::connect(ui.pushButton_lu, SIGNAL(released()), this,SLOT(pushButton_stop()));
    QObject::connect(ui.pushButton_r, SIGNAL(released()), this,SLOT(pushButton_stop()));
    QObject::connect(ui.pushButton_l, SIGNAL(released()), this,SLOT(pushButton_stop()));
    QObject::connect(ui.pushButton_rd, SIGNAL(released()), this,SLOT(pushButton_stop()));
    QObject::connect(ui.pushButton_d, SIGNAL(released()), this,SLOT(pushButton_stop()));
    QObject::connect(ui.pushButton_ld, SIGNAL(released()), this,SLOT(pushButton_stop()));
    QObject::connect(ui.pushButton_stop, SIGNAL(pressed()), this,SLOT(pushButton_stop()));

    QObject::connect(ui.pushButton_u, SIGNAL(pressed()), this,SLOT(pushButton_go()));
    QObject::connect(ui.pushButton_ru, SIGNAL(pressed()), this,SLOT(pushButton_go()));
    QObject::connect(ui.pushButton_lu, SIGNAL(pressed()), this,SLOT(pushButton_go()));
    QObject::connect(ui.pushButton_r, SIGNAL(pressed()), this,SLOT(pushButton_go()));
    QObject::connect(ui.pushButton_l, SIGNAL(pressed()), this,SLOT(pushButton_go()));
    QObject::connect(ui.pushButton_rd, SIGNAL(pressed()), this,SLOT(pushButton_go()));
    QObject::connect(ui.pushButton_d, SIGNAL(pressed()), this,SLOT(pushButton_go()));
    QObject::connect(ui.pushButton_ld, SIGNAL(pressed()), this,SLOT(pushButton_go()));

    QObject::connect(&qnode, SIGNAL(batteryState(double)), this,SLOT(slotbatteryState(double)));
    QObject::connect(&qnode, SIGNAL(speedState(double,double,double,double,double,double)), this,SLOT(slotspeedState(double,double,double,double,double,double)));
    connect(&qnode, SIGNAL(image_val(QImage)), this,SLOT(updata_image(QImage)));

    //打开速度仪表盘
    speedxboard = new CCtrlDashBoard(ui.widget_x);
    speedxboard->setGeometry(ui.widget_x->rect());
    speedyboard = new CCtrlDashBoard(ui.widget_y);
    speedyboard->setGeometry(ui.widget_y->rect());

    m_pTimer = new QTimer(this);
    connect(m_pTimer,SIGNAL(timeout()),this,SLOT(slottimeout()));
}

MainWindow::~MainWindow() {
    QProcess::execute(//"ssh -Y wheeltec@192.168.0.100\n"
                    "killall -2 roslaunch\n"
                    "killall -2 roscore\n"
             		);
    if(_cmd)_cmd->close();
    delete _cmd;
    _cmd=NULL;
}

/*****************************************************************************
** Implementation [Slots]
*****************************************************************************/

void MainWindow::showNoMasterMessage() {
	QMessageBox msgBox;
	msgBox.setText("Couldn't find the ros master.");
	msgBox.exec();
    close();
}

//cmd:发送命令方式一
//特点：运行其他功能时可以显示远程界面：如运行寻线时，可以显示寻线窗口
//缺点：程序不能显示运行功能时打印出来的日志或者显示的太乱了
//用法：
//_cmd->write("ssh -Y wheeltec@192.168.0.100\n"                       //连接小车
//            "source /opt/ros/melodic/setup.bash\n"                  //初始化环境
//            "source wheeltec_robot/devel/setup.bash\n"
//            "roslaunch simple_follower line_follower.launch\n");     //运行相关功能（修改这句话即可）
void MainWindow::init_cmd()
{
    _cmd = new QProcess;
    _cmd->start("bash");
    QObject::connect(_cmd,SIGNAL(readyReadStandardOutput()),this,SLOT(slot_cmd_read()));
    QObject::connect(_cmd,SIGNAL(readyReadStandardError()),this,SLOT(slot_cmd_err()));

}

void MainWindow::btn_disableall(bool _enabled)
{
    ui.pushButton_2dmap->setDisabled(_enabled);
    ui.pushButton_2dmapsave->setDisabled(_enabled);
    ui.pushButton_2dnav->setDisabled(_enabled);
    ui.pushButton_3dmap->setDisabled(_enabled);
    ui.pushButton_3dnav->setDisabled(_enabled);
    ui.pushButton_arfollower->setDisabled(_enabled);
    ui.pushButton_arlabel->setDisabled(_enabled);
    ui.pushButton_joy_control->setDisabled(_enabled);
    ui.pushButton_kcftrack->setDisabled(_enabled);
    ui.pushButton_laserfollower->setDisabled(_enabled);
    ui.pushButton_linefollower->setDisabled(_enabled);
    ui.pushButton_pure3dmap->setDisabled(_enabled);
    ui.pushButton_pure3dnav->setDisabled(_enabled);
    ui.pushButton_rrt->setDisabled(_enabled);
    ui.pushButton_visfollower->setDisabled(_enabled);
    ui.pushButton_webusbcam->setDisabled(_enabled);
    ui.pushButton_xfmic->setDisabled(_enabled);
    ui.checkBox_key->setDisabled(_enabled);
    ui.checkBox__opencamera->setDisabled(_enabled);
    ui.pushButton_moveitfk->setDisabled(_enabled);
    ui.pushButton_moveitik->setDisabled(_enabled);
    ui.pushButton_moveitpick->setDisabled(_enabled);
    ui.pushButton_moveitpick_2->setDisabled(_enabled);
    ui.pushButton_2->setDisabled(_enabled);
    ui.quit_button_2->setDisabled(_enabled);
}
//关闭roslaunch进程下的所有功能
void MainWindow::closeroslaunch()
{
    QProcess::execute(//"ssh -Y wheeltec@192.168.0.100\n"
                    "killall -2 roslaunch\n");
}

/*
 * These triggers whenever the button is clicked, regardless of whether it
 * is already checked or not.
 */
//连接ros
void MainWindow::on_button_connect_clicked(bool check ) {
	if ( ui.checkbox_use_environment->isChecked() ) {
		if ( !qnode.init() ) {
			showNoMasterMessage();
		} else {
			ui.button_connect->setEnabled(false);
            init_cmd();
            slot_rosOpen();
		}
	} else {
		if ( ! qnode.init(ui.line_edit_master->text().toStdString(),
				   ui.line_edit_host->text().toStdString()) ) {
			showNoMasterMessage();
		} else {
			ui.button_connect->setEnabled(false);
			ui.line_edit_master->setReadOnly(true);
			ui.line_edit_host->setReadOnly(true);
			ui.line_edit_topic->setReadOnly(true);
            init_cmd();
            slot_rosOpen();
		}
	}
}

void MainWindow::on_checkbox_use_environment_stateChanged(int state) {
	bool enabled;
	if ( state == 0 ) {
		enabled = true;
	} else {
		enabled = false;
	}
	ui.line_edit_master->setEnabled(enabled);
	ui.line_edit_host->setEnabled(enabled);
    //ui.line_edit_topic->setEnabled(enabled);
}

//cmd命令回调函数：：打印日志
void MainWindow::slot_cmd_read()
{
    qint64 maxSize = 512;
    char buffer[maxSize];
    qint64 len;
    while(true)
    {
        len = _cmd->readLine(buffer, maxSize);
        if(len <= 0) {
            break;
        }
        QString str = QString::fromLocal8Bit(buffer);
        ui.textEdit_cmd->append("<font color=\"#000000\">"+str+"</font> ");
     }
}
//cmd命令回调函数：打印错误
void MainWindow::slot_cmd_err()
{
    QString str = QString::fromLocal8Bit(_cmd->readAllStandardError());
    ui.textEdit_cmd->append("<font color=\"#FF0000\">"+str+"</font>");
}



/*****************************************************************************
** Implemenation [Slots][manually connected]
*****************************************************************************/

//ros关闭时，处理图标、ros状态等变化
void MainWindow::slot_rosShutdown()
{

}
//ros打开时，处理图标、ros状态、读取参数
void MainWindow::slot_rosOpen()
{
    ui.label_7->setPixmap(QPixmap::fromImage(QImage("://images/robot.png")));
    ui.label_8->setText("在线");
    ui.label_9->setPixmap(QPixmap::fromImage(QImage("://images/ok.png")));
    ros::NodeHandle node("~");
    node.param<std::string>("user_passward", user_passward, "raspberry");
}
/*****************************************************************************
** Implementation [Menu]
*****************************************************************************/

void MainWindow::on_actionAbout_triggered() {
    QMessageBox::about(this, tr("About ..."),tr("<h2>PACKAGE_NAME Test Program 0.10</h2><p>Copyright Yujin Robot</p><p>This package needs an about description.</p>"));
}

/*****************************************************************************
** Implementation [Configuration]
** 读取设置
*****************************************************************************/

void MainWindow::ReadSettings() {
    QSettings settings("Qt-Ros Package", "qt_ros_test");
    restoreGeometry(settings.value("geometry").toByteArray());
    restoreState(settings.value("windowState").toByteArray());
    QString master_url = settings.value("master_url",QString("http://192.168.0.100:11311/")).toString();
    QString host_url = settings.value("host_url", QString("192.168.0.100")).toString();
    //QString topic_name = settings.value("topic_name", QString("/chatter")).toString();
    ui.line_edit_master->setText(master_url);
    ui.line_edit_host->setText(host_url);
    //ui.line_edit_topic->setText(topic_name);
    bool remember = settings.value("remember_settings", false).toBool();
    ui.checkbox_remember_settings->setChecked(remember);
    bool checked = settings.value("use_environment_variables", false).toBool();
    ui.checkbox_use_environment->setChecked(checked);
    if ( checked ) {
    	ui.line_edit_master->setEnabled(false);
    	ui.line_edit_host->setEnabled(false);
    	//ui.line_edit_topic->setEnabled(false);
    }
}
/*****************************************************************************
**
** 保存设置
*****************************************************************************/
void MainWindow::WriteSettings() {
    QSettings settings("Qt-Ros Package", "qt_ros_test");
    settings.setValue("master_url",ui.line_edit_master->text());
    settings.setValue("host_url",ui.line_edit_host->text());
    //settings.setValue("topic_name",ui.line_edit_topic->text());
    settings.setValue("use_environment_variables",QVariant(ui.checkbox_use_environment->isChecked()));
    settings.setValue("geometry", saveGeometry());
    settings.setValue("windowState", saveState());
    settings.setValue("remember_settings",QVariant(ui.checkbox_remember_settings->isChecked()));

}

void MainWindow::closeEvent(QCloseEvent *event)
{
    WriteSettings();
	QMainWindow::closeEvent(event);
}

}  // namespace qt_ros_test

//使能键盘控制按钮，打开基本turn—on节点
void qt_ros_test::MainWindow::on_checkBox_key_clicked(bool checked)
{
    if(ui.checkBox_key->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
            "source /opt/ros/melodic/setup.bash\n"
            "source ~/tringai_robot/devel/setup.bash\n"
            "roslaunch qt_ros_test keyboard_camera.launch\n");
        btn_disableall(true);
        ui.checkBox_key->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开键盘控制-------------------------------------------");
    }
    else
    {
        closeroslaunch();
        ui.textEdit_cmd->append("-------------------------------------------正在关闭键盘控制，请稍候-------------------------------------------");
        _cmd->waitForFinished(10000);
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}
//控制小车运动的槽函数
void qt_ros_test::MainWindow::pushButton_go()
{
    double speed = ui.horizontalSlider_v->value();
    speed = speed/100;
    double cor = ui.horizontalSlider_c->value();
    cor = cor/100;
    if(ui.pushButton_lu->isDown())qnode.pub_cmd(ui.checkBox_mec->isChecked(),1,speed,cor);
    else if(ui.pushButton_u->isDown())qnode.pub_cmd(ui.checkBox_mec->isChecked(),2,speed,cor);
    else if(ui.pushButton_ru->isDown())qnode.pub_cmd(ui.checkBox_mec->isChecked(),3,speed,cor);
    else if(ui.pushButton_l->isDown())qnode.pub_cmd(ui.checkBox_mec->isChecked(),4,speed,cor);
    else if(ui.pushButton_r->isDown())qnode.pub_cmd(ui.checkBox_mec->isChecked(),6,speed,cor);
    else if(ui.pushButton_ld->isDown())qnode.pub_cmd(ui.checkBox_mec->isChecked(),9,speed,cor);
    else if(ui.pushButton_d->isDown())qnode.pub_cmd(ui.checkBox_mec->isChecked(),8,speed,cor);
    else if(ui.pushButton_rd->isDown())qnode.pub_cmd(ui.checkBox_mec->isChecked(),7,speed,cor);
}
//控制小车停止的槽函数
void qt_ros_test::MainWindow::pushButton_stop()
{
    qnode.pub_cmd(ui.checkBox_mec->isChecked(),5,0,0);
}
//图像显示
void qt_ros_test::MainWindow::updata_image(QImage im)
{
    ui.label_image->setPixmap(QPixmap::fromImage(im).scaled(ui.label_image->width(), ui.label_image->height()));
}
//电量显示
void qt_ros_test::MainWindow::slotbatteryState(double msg)
{
    ui.label_power->setText(QString::number(msg) + "V");
    if(msg>25)ui.progressBar->setValue(100);
    else if(msg<24 && msg>=20)ui.progressBar->setValue((1-(25-msg)/5)*100);
    else if(msg<20 && msg >18)ui.progressBar->setValue(0);
    else if(msg>12.5)ui.progressBar->setValue(100);
    else if(msg<12.5 && msg>=10)ui.progressBar->setValue((1-(12.5-msg)/2.5)*100);
    else if(msg<10)ui.progressBar->setValue(0);

    if(ui.progressBar->value()<=30)ui.label_4->setPixmap(QPixmap::fromImage(QImage("://images/power-l.png")));
    else if(ui.progressBar->value()>30)ui.label_4->setPixmap(QPixmap::fromImage(QImage("://images/power-v.png")));
}
//速度显示
void qt_ros_test::MainWindow::slotspeedState(double l_x, double l_y, double l_z, double a_x, double a_y, double a_z)
{
    ui.label_linerx->setText(QString::number(l_x));
    ui.label_linery->setText(QString::number(l_y));
    ui.label_linerz->setText(QString::number(l_z));
    ui.label_angerx->setText(QString::number(a_x));
    ui.label_angery->setText(QString::number(a_y));
    ui.label_angerz->setText(QString::number(a_z));

    speedxboard->setValue(abs(l_x * 100));
    speedyboard->setValue(abs(l_y * 100));
}
//速度调节
void qt_ros_test::MainWindow::on_horizontalSlider_v_sliderMoved(int position)
{
    double val = ui.horizontalSlider_v->value();
    val = val/100;
    ui.label_v->setText(QString("%1").arg(val));
}

void qt_ros_test::MainWindow::on_horizontalSlider_c_sliderMoved(int position)
{
    double val = ui.horizontalSlider_c->value();
    val = val/100;
    ui.label_c->setText(QString("%1").arg(val));
}

void qt_ros_test::MainWindow::on_checkBox__opencamera_clicked(bool checked)
{
    if(ui.checkBox__opencamera->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
            "source /opt/ros/melodic/setup.bash\n"
            "source ~/tringai_robot/devel/setup.bash\n"
            "roslaunch qt_ros_test keyboard_camera.launch\n");
        btn_disableall(true);
        ui.checkBox__opencamera->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开摄像头-------------------------------------------");
    }
    else
    {
        closeroslaunch();
        ui.label_image->clear();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭摄像头-------------------------------------------\n");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}


void qt_ros_test::MainWindow::on_pushButton_linefollower_clicked(bool checked)
{
    if(ui.pushButton_linefollower->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_robot/devel/setup.bash\n"
                    "roslaunch simple_follower line_follower.launch\n");
        ui.checkBox__opencamera->setChecked(true);
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_linefollower->setEnabled(true);  
        ui.textEdit_cmd->append("-------------------------------------------正在打开寻线-------------------------------------------");
    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭关闭寻线-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_laserfollower_clicked(bool checked)
{
    if(ui.pushButton_laserfollower->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
            "source /opt/ros/melodic/setup.bash\n"
            "source ~/tringai_robot/devel/setup.bash\n"
            "roslaunch simple_follower laser_follower.launch\n");
        ui.textEdit_cmd->append("open laser_follower");
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_laserfollower->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开雷达跟随-------------------------------------------");
    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭雷达跟随-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_clicked(bool checked)
{
    ros::master::V_TopicInfo topicinfo;
    ros::master::getTopics(topicinfo);
    ui.comboBox_carmeratopic->clear();
    for (auto topic : topicinfo)
    {
        QString string = QString::fromStdString(topic.name);
        QString stringtype = QString::fromStdString(topic.datatype);
        if(stringtype=="sensor_msgs/Image" || stringtype=="sensor_msgs/CompressedImage")
            ui.comboBox_carmeratopic->addItem(string);
    }
}

void qt_ros_test::MainWindow::on_pushButton_subimg_clicked(bool checked)
{
    qDebug()<<"subscribtion to:"<<ui.comboBox_carmeratopic->currentText();
    qnode.sub_camera(ui.comboBox_carmeratopic->currentText());
    ui.label_image->clear();
}

void qt_ros_test::MainWindow::on_pushButton_visfollower_clicked(bool checked)
{
    if(ui.pushButton_visfollower->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
            "source /opt/ros/melodic/setup.bash\n"
            "source ~/tringai_robot/devel/setup.bash\n"
            "roslaunch simple_follower visual_follower.launch\n");
        ui.checkBox__opencamera->setChecked(true);
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_visfollower->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开视觉跟随-------------------------------------------");
    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭视觉跟随-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_xfmic_clicked(bool checked)
{
    if(ui.pushButton_xfmic->isChecked())
    {
        // _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
        //             "source /opt/ros/melodic/setup.bash\n"
        //             "source ~/tringai_robot/devel/setup.bash\n"
        //             "roslaunch qt_ros_test qt_xf_mic_asr_offline.launch\n");
        //emit sigSend("roslaunch xf_mic_asr_offline mic_init.launch\n");
        _cmd->write("sh /home/tringai/tringai_robot/src/qt_ros_test/script/mic.sh\n");
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_xfmic->setEnabled(true);
    }
    else
    {
        closeroslaunch();
        ui.checkBox_key->setChecked(false);
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_kcftrack_clicked(bool checked)
{
    if(ui.pushButton_kcftrack->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_robot/devel/setup.bash\n"
                    "roslaunch kcf_track kcf_tracker.launch\n");
        ui.checkBox__opencamera->setChecked(true);
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_kcftrack->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开kcf跟随-------------------------------------------");
    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭kcf跟随-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_webusbcam_clicked(bool checked)
{
    if(ui.pushButton_webusbcam->isChecked())
    {
        QString strCmd = QString("roslaunch usb_cam usb_cam-test.launch\n");
        emit sigSend(strCmd);
        _cmd->write("sh /home/tringai/tringai_robot/src/qt_ros_test/script/web.sh\n");
        ui.checkBox__opencamera->setChecked(true);
        btn_disableall(true);
        ui.pushButton_webusbcam->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开web浏览器显示摄像头-------------------------------------------");
    }
    else
    {
        closeroslaunch();
        QProcess::execute(//"ssh -Y wheeltec@192.168.0.100\n"
                    "killall -2 roslaunch\n");
        _cmd->waitForFinished(1000);
        QProcess::execute(//"ssh -Y wheeltec@192.168.0.100\n"
                    "rosnode kill /web_video_server\n");
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭web浏览器显示摄像头-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_arlabel_clicked(bool checked)
{
    if(ui.pushButton_arlabel->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_robot/devel/setup.bash\n"
                    "roslaunch turn_on_tringai_robot ar_label.launch\n");
        ui.checkBox__opencamera->setChecked(true);
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_arlabel->setEnabled(true);
        QProcess* rviz_cmd =new QProcess(this);
        rviz_cmd->startDetached("rviz");
        ui.textEdit_cmd->append("-------------------------------------------正在打开ar标签识别-------------------------------------------");

    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭ar标签识别-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_arfollower_clicked(bool checked)
{
    if(ui.pushButton_arfollower->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_robot/devel/setup.bash\n"
                    "roslaunch simple_follower ar_follower.launch\n");
        ui.checkBox__opencamera->setChecked(true);
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_arfollower->setEnabled(true);
        QProcess* rviz_cmd =new QProcess(this);
        rviz_cmd->startDetached("rviz");
        ui.textEdit_cmd->append("-------------------------------------------正在打开ar跟随-------------------------------------------");
    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭ar跟随-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_joy_control_clicked(bool checked)
{
    if(ui.pushButton_joy_control->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
            "source /opt/ros/melodic/setup.bash\n"
            "source ~/tringai_robot/devel/setup.bash\n"
            "roslaunch tringai_joy joy_control.launch\n");
        ui.textEdit_cmd->append("open joy");
        btn_disableall(true);
        ui.checkBox_key->setChecked(true);
        ui.pushButton_joy_control->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开无线手柄控制-------------------------------------------");

    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭无线手柄控制-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_2dmap_clicked(bool checked)
{
    if(ui.pushButton_2dmap->isChecked())
    {
        // _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
        //     "source /opt/ros/melodic/setup.bash\n"
        //     "source ~/tringai_robot/devel/setup.bash\n"
        //     "roslaunch turn_on_tringai_robot mapping.launch\n");
        _cmd->write("sh /home/tringai/tringai_robot/src/qt_ros_test/script/mapping.sh\n");
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_2dmap->setEnabled(true);
        ui.pushButton_2dmapsave->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开2D建图-------------------------------------------");
        QEventLoop loop;
        //创建单次定时器,槽函数为事件循环的退出函数
        QTimer::singleShot(2000, &loop, SLOT(quit()));
        //事件循环开始执行,程序会卡在这里,直到定时时间到,本循环被退出
        loop.exec();
        ui.textEdit_cmd->append("open mapping");
        QProcess* rviz_cmd =new QProcess(this);
        rviz_cmd->startDetached("rviz");
    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭2D建图-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);

    }
} 

void qt_ros_test::MainWindow::on_pushButton_2dmapsave_clicked(bool checked)
{
    if(ui.pushButton_2dmapsave->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_robot/devel/setup.bash\n"
                    "roslaunch turn_on_tringai_robot map_saver.launch\n");
        QEventLoop loop;
        //创建单次定时器,槽函数为事件循环的退出函数
        QTimer::singleShot(4000, &loop, SLOT(quit()));
        //事件循环开始执行,程序会卡在这里,直到定时时间到,本循环被退出
        loop.exec();
        ui.pushButton_2dmapsave->setChecked(false);
        ui.textEdit_cmd->append("-------------------------------------------正在保存2D地图-------------------------------------------");
    }
    else
    {
    }
}

void qt_ros_test::MainWindow::on_pushButton_2dnav_clicked(bool checked)
{
    if(ui.pushButton_2dnav->isChecked())
    {
        // _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
        //     "source /opt/ros/melodic/setup.bash\n"
        //     "source ~/wheeltec_robot/devel/setup.bash\n"
        //     "roslaunch turn_on_tringai_robot navigation.launch\n");
        _cmd->write("sh /home/tringai/tringai_robot/src/qt_ros_test/script/nav.sh\n");
        btn_disableall(true);
        ui.pushButton_2dnav->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开2D导航-------------------------------------------");
        QEventLoop loop;
        //创建单次定时器,槽函数为事件循环的退出函数
        QTimer::singleShot(10000, &loop, SLOT(quit()));
        //事件循环开始执行,程序会卡在这里,直到定时时间到,本循环被退出
        loop.exec();
        ui.textEdit_cmd->append("open navigation");
        QProcess* rviz_cmd =new QProcess(this);
        rviz_cmd->startDetached("rviz");
    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭2D导航-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_3dmap_clicked(bool checked)
{
    if(ui.pushButton_3dmap->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_robot/devel/setup.bash\n"
                    "roslaunch turn_on_tringai_robot 3d_mapping.launch\n");
        ui.checkBox__opencamera->setChecked(true);
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_3dmap->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开3D建图-------------------------------------------");
        QEventLoop loop;
        //创建单次定时器,槽函数为事件循环的退出函数
        QTimer::singleShot(2000, &loop, SLOT(quit()));
        //事件循环开始执行,程序会卡在这里,直到定时时间到,本循环被退出
        loop.exec();
        ui.textEdit_cmd->append("open 3d mapping");
        QProcess* rviz_cmd =new QProcess(this);
        rviz_cmd->startDetached("rviz");
    }
    else
    {
        closeroslaunch();
        QEventLoop loop;
        //创建单次定时器,槽函数为事件循环的退出函数
        QTimer::singleShot(2000, &loop, SLOT(quit()));
        //事件循环开始执行,程序会卡在这里,直到定时时间到,本循环被退出
        loop.exec();

        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭3D建图-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);

    }
}
void qt_ros_test::MainWindow::on_pushButton_3dnav_clicked(bool checked)
{
    if(ui.pushButton_3dnav->isChecked())
    {
        _cmd->write("sh /home/tringai/tringai_robot/src/qt_ros_test/script/3d_nav.sh\n");
        ui.checkBox__opencamera->setChecked(true);
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_3dnav->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开3D导航-------------------------------------------");
        QEventLoop loop;
        //创建单次定时器,槽函数为事件循环的退出函数
        QTimer::singleShot(12000, &loop, SLOT(quit()));
        //事件循环开始执行,程序会卡在这里,直到定时时间到,本循环被退出
        loop.exec();
        ui.textEdit_cmd->append("open 3d nav");
        QProcess* rviz_cmd =new QProcess(this);
        rviz_cmd->startDetached("rviz");
    }
    else
    {
        closeroslaunch();
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "killall -3 python\n");
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭3D导航-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);

    }
}

void qt_ros_test::MainWindow::on_pushButton_pure3dmap_clicked(bool checked)
{
    if(ui.pushButton_pure3dmap->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_robot/devel/setup.bash\n"
                    "roslaunch turn_on_tringai_robot pure3d_mapping.launch\n");
        ui.checkBox__opencamera->setChecked(true);
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_pure3dmap->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开视觉建图-------------------------------------------");
        QEventLoop loop;
        //创建单次定时器,槽函数为事件循环的退出函数
        QTimer::singleShot(2000, &loop, SLOT(quit()));
        //事件循环开始执行,程序会卡在这里,直到定时时间到,本循环被退出
        loop.exec();
        ui.textEdit_cmd->append("open pure3d mapping");
        QProcess* rviz_cmd =new QProcess(this);
        rviz_cmd->startDetached("rviz");
    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭视觉建图-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_pure3dnav_clicked(bool checked)
{
    if(ui.pushButton_pure3dnav->isChecked())
    {
        _cmd->write("sh /home/tringai/tringai_robot/src/qt_ros_test/script/pure_nav.sh\n");
        ui.checkBox__opencamera->setChecked(true);
        ui.checkBox_key->setChecked(true);
        btn_disableall(true);
        ui.pushButton_pure3dnav->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开视觉导航-------------------------------------------");
        QEventLoop loop;
        //创建单次定时器,槽函数为事件循环的退出函数
        QTimer::singleShot(10000, &loop, SLOT(quit()));
        //事件循环开始执行,程序会卡在这里,直到定时时间到,本循环被退出
        loop.exec();
        ui.textEdit_cmd->append("open pure3d nav");
        QProcess* rviz_cmd =new QProcess(this);
        rviz_cmd->startDetached("rviz");
    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭视觉导航-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_rrt_clicked(bool checked)
{
    if(ui.pushButton_rrt->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_robot/devel/setup.bash\n"
                    "roslaunch turn_on_tringai_robot rrt_slam.launch\n");
        btn_disableall(true);
        ui.pushButton_rrt->setEnabled(true);
        ui.textEdit_cmd->append("-------------------------------------------正在打开自主建图-------------------------------------------");
        QEventLoop loop;
        //创建单次定时器,槽函数为事件循环的退出函数
        QTimer::singleShot(5000, &loop, SLOT(quit()));
        //事件循环开始执行,程序会卡在这里,直到定时时间到,本循环被退出
        loop.exec();
        ui.textEdit_cmd->append("open rrt map");
        QProcess* rviz_cmd =new QProcess(this);
        rviz_cmd->startDetached("rviz");
    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭自主建图-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_moveitik_clicked(bool checked)
{
    if(ui.pushButton_moveitik->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_robot/devel/setup.bash\n"
                    "roslaunch arm_demo ik_demo.launch\n");
        btn_disableall(true);
        ui.pushButton_moveitik->setEnabled(true);
        ui.textEdit_cmd->append("roslaunch arm_demo ik_demo.launch");
        ui.textEdit_cmd->append("-------------------------------------------正在打开机械臂逆解-------------------------------------------");

    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭机械臂逆解-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_moveitfk_clicked(bool checked)
{
    if(ui.pushButton_moveitfk->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_robot/devel/setup.bash\n"
                    "roslaunch arm_demo fk_demo.launch\n");
        btn_disableall(true);
        ui.pushButton_moveitfk->setEnabled(true);
        ui.textEdit_cmd->append("roslaunch arm_demo fk_demo.launch");
        ui.textEdit_cmd->append("-------------------------------------------正在打开机械臂正解-------------------------------------------");

    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭机械臂逆解-------------------------------------------");
        btn_disableall(false);
        ui.checkBox_key->setChecked(false);
        ui.checkBox__opencamera->setChecked(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_moveitpick_clicked(bool checked)
{
    if(ui.pushButton_moveitpick->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_arm/devel/setup.bash\n"
                    "roslaunch wheeltec_arm_pick test_param.launch\n");
        btn_disableall(true);
        ui.pushButton_moveitpick->setEnabled(true);
        ui.textEdit_cmd->append("roslaunch tringai_arm_pick test_param.launch");
        ui.textEdit_cmd->append("-------------------------------------------正在打开机械臂调参-------------------------------------------");
        QEventLoop loop;
        //创建单次定时器,槽函数为事件循环的退出函数
        QTimer::singleShot(5000, &loop, SLOT(quit()));
        //事件循环开始执行,程序会卡在这里,直到定时时间到,本循环被退出
        loop.exec();
        QProcess* rqt_cmd =new QProcess(this);
        rqt_cmd->startDetached("rqt");

    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭机械臂调参-------------------------------------------");
        btn_disableall(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_moveitpick_2_clicked(bool checked)
{
    if(ui.pushButton_moveitpick_2->isChecked())
    {
        _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                    "source /opt/ros/melodic/setup.bash\n"
                    "source ~/tringai_arm/devel/setup.bash\n"
                    "roslaunch tringai_arm_pick arm_pick_color.launch\n");
        btn_disableall(true);
        ui.pushButton_moveitpick_2->setEnabled(true);
        ui.textEdit_cmd->append("roslaunch wheeltec_arm_pick arm_pick_color.launch");
        ui.textEdit_cmd->append("-------------------------------------------正在打开机械臂夹取色块-------------------------------------------");

    }
    else
    {
        closeroslaunch();
        _cmd->waitForFinished(10000);
        ui.textEdit_cmd->append("-------------------------------------------成功关闭机械臂夹取色块-------------------------------------------");
        btn_disableall(false);
    }
}

void qt_ros_test::MainWindow::on_pushButton_2_clicked(bool checked)
{
    _cmd->write(//"ssh -Y wheeltec@192.168.0.100\n"
                "source /opt/ros/melodic/setup.bash\n"
                "source ~/wheeltec_arm/devel/setup.bash\n");
    _cmd->write(ui.lineEdit_cmd->text().toLocal8Bit()+"\n");
    ui.textEdit_cmd->append("\r\n");
    ui.textEdit_cmd->append(ui.lineEdit_cmd->text());
    ui.lineEdit_cmd->clear();
}

void qt_ros_test::MainWindow::on_lineEdit_cmd_returnPressed()
{
    on_pushButton_2_clicked(true);
}

void qt_ros_test::MainWindow::keyPressEvent(QKeyEvent *event)
{
    double speed = ui.horizontalSlider_v->value();
    speed = speed/100;
    double cor = ui.horizontalSlider_c->value();
    cor = cor/100;
    switch(event->key())
    {
    case Qt::Key_U:
            qnode.pub_cmd(ui.checkBox_mec->isChecked(),1,speed,cor);
        break;
    case Qt::Key_I:
        qnode.pub_cmd(ui.checkBox_mec->isChecked(),2,speed,cor);
        break;
    case Qt::Key_O:
        qnode.pub_cmd(ui.checkBox_mec->isChecked(),3,speed,cor);
        break;
    case Qt::Key_J:
        qnode.pub_cmd(ui.checkBox_mec->isChecked(),4,speed,cor);
        break;
    case Qt::Key_L:
        qnode.pub_cmd(ui.checkBox_mec->isChecked(),6,speed,cor);
        break;
    case Qt::Key_M:
        qnode.pub_cmd(ui.checkBox_mec->isChecked(),9,speed,cor);
        break;
    case Qt::Key_Comma:
        qnode.pub_cmd(ui.checkBox_mec->isChecked(),8,speed,cor);
        break;
    case Qt::Key_Period:
        qnode.pub_cmd(ui.checkBox_mec->isChecked(),7,speed,cor);
        break;
    default:
        break;
    }
    keypress = true;
}

void qt_ros_test::MainWindow::keyReleaseEvent(QKeyEvent *event)
{
    if(event->isAutoRepeat()==false)
    {
        keypress = false;
        m_pTimer->start(20);
    }
}

void qt_ros_test::MainWindow::slottimeout()
{
    if(keypress==false)
    {
        qnode.pub_cmd(ui.checkBox_mec->isChecked(),5,0,0);
        m_pTimer->stop();
    }
}


void qt_ros_test::MainWindow::on_quit_button_2_clicked(bool checked)
{
    QProcess::execute(//"ssh -Y wheeltec@192.168.0.100\n"
                      "killall -2 roslaunch\n");
}
