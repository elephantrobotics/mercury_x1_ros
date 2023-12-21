/********************************************************************************
** Form generated from reading UI file 'main_window.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAIN_WINDOW_H
#define UI_MAIN_WINDOW_H

#include <QtCore/QLocale>
#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QScrollArea>
#include <QtWidgets/QSlider>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindowDesign
{
public:
    QAction *action_Quit;
    QAction *action_Preferences;
    QAction *actionAbout;
    QAction *actionAbout_Qt;
    QWidget *centralwidget;
    QVBoxLayout *verticalLayout_2;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLabel *label_7;
    QLabel *label_8;
    QLabel *label_9;
    QSpacerItem *horizontalSpacer_2;
    QLabel *label_5;
    QProgressBar *progressBar;
    QLabel *label_4;
    QLabel *label_power;
    QHBoxLayout *horizontalLayout_3;
    QTabWidget *tab_manager;
    QWidget *tab_3;
    QHBoxLayout *horizontalLayout_7;
    QVBoxLayout *verticalLayout_8;
    QHBoxLayout *horizontalLayout_4;
    QGridLayout *gridLayout_5;
    QLabel *label_31;
    QLabel *label_18;
    QLabel *label_linery;
    QLabel *label_linerz;
    QLabel *label_19;
    QLabel *label_15;
    QLabel *label_14;
    QSpacerItem *horizontalSpacer_4;
    QLabel *label_17;
    QLabel *label_16;
    QLabel *label_linerx;
    QLabel *label_30;
    QSpacerItem *horizontalSpacer_5;
    QLabel *label_angerx;
    QLabel *label_angery;
    QLabel *label_angerz;
    QSpacerItem *horizontalSpacer_6;
    QWidget *widget_x;
    QLabel *label_6;
    QWidget *widget_y;
    QLabel *label_10;
    QFrame *line;
    QHBoxLayout *horizontalLayout_6;
    QVBoxLayout *verticalLayout_7;
    QCheckBox *checkBox__opencamera;
    QComboBox *comboBox_carmeratopic;
    QPushButton *pushButton;
    QPushButton *pushButton_subimg;
    QLabel *label_image;
    QWidget *tab_4;
    QVBoxLayout *verticalLayout_4;
    QTextEdit *textEdit_cmd;
    QHBoxLayout *horizontalLayout_8;
    QLabel *label_11;
    QLabel *label_12;
    QLineEdit *lineEdit_cmd;
    QPushButton *pushButton_2;
    QHBoxLayout *horizontalLayout_16;
    QSpacerItem *horizontalSpacer_7;
    QPushButton *quit_button_2;
    QTabWidget *tabWidget;
    QWidget *tab;
    QHBoxLayout *horizontalLayout_2;
    QFrame *frame;
    QVBoxLayout *verticalLayout_3;
    QGroupBox *groupBox;
    QGridLayout *gridLayout;
    QLineEdit *line_edit_host;
    QCheckBox *checkbox_remember_settings;
    QLabel *label_3;
    QLabel *label_2;
    QLineEdit *line_edit_topic;
    QSpacerItem *horizontalSpacer;
    QLineEdit *line_edit_master;
    QLabel *label;
    QPushButton *button_connect;
    QCheckBox *checkbox_use_environment;
    QSpacerItem *verticalSpacer;
    QHBoxLayout *horizontalLayout_15;
    QCheckBox *checkBox_key;
    QCheckBox *checkBox_mec;
    QGridLayout *gridLayout_2;
    QPushButton *pushButton_lu;
    QPushButton *pushButton_u;
    QPushButton *pushButton_ru;
    QPushButton *pushButton_l;
    QPushButton *pushButton_stop;
    QPushButton *pushButton_r;
    QPushButton *pushButton_ld;
    QPushButton *pushButton_d;
    QPushButton *pushButton_rd;
    QGridLayout *gridLayout_4;
    QLabel *label_20;
    QSlider *horizontalSlider_v;
    QLabel *label_v;
    QLabel *label_21;
    QSlider *horizontalSlider_c;
    QLabel *label_c;
    QHBoxLayout *horizontalLayout_5;
    QSpacerItem *horizontalSpacer_3;
    QPushButton *quit_button;
    QWidget *tab_2;
    QVBoxLayout *verticalLayout_9;
    QScrollArea *scrollArea;
    QWidget *scrollAreaWidgetContents;
    QVBoxLayout *verticalLayout_10;
    QPushButton *pushButton_linefollower;
    QPushButton *pushButton_laserfollower;
    QPushButton *pushButton_visfollower;
    QPushButton *pushButton_2dmap;
    QPushButton *pushButton_2dmapsave;
    QPushButton *pushButton_2dnav;
    QPushButton *pushButton_3dmap;
    QPushButton *pushButton_3dnav;
    QPushButton *pushButton_pure3dmap;
    QPushButton *pushButton_pure3dnav;
    QPushButton *pushButton_xfmic;
    QPushButton *pushButton_kcftrack;
    QPushButton *pushButton_rrt;
    QPushButton *pushButton_webusbcam;
    QPushButton *pushButton_arlabel;
    QPushButton *pushButton_arfollower;
    QPushButton *pushButton_joy_control;
    QPushButton *pushButton_moveitik;
    QPushButton *pushButton_moveitfk;
    QPushButton *pushButton_moveitpick;
    QPushButton *pushButton_moveitpick_2;
    QMenuBar *menubar;
    QMenu *menu_File;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindowDesign)
    {
        if (MainWindowDesign->objectName().isEmpty())
            MainWindowDesign->setObjectName(QString::fromUtf8("MainWindowDesign"));
        MainWindowDesign->resize(1212, 868);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/images/icon.png"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindowDesign->setWindowIcon(icon);
        MainWindowDesign->setLocale(QLocale(QLocale::English, QLocale::Australia));
        action_Quit = new QAction(MainWindowDesign);
        action_Quit->setObjectName(QString::fromUtf8("action_Quit"));
        action_Quit->setShortcutContext(Qt::ApplicationShortcut);
        action_Preferences = new QAction(MainWindowDesign);
        action_Preferences->setObjectName(QString::fromUtf8("action_Preferences"));
        actionAbout = new QAction(MainWindowDesign);
        actionAbout->setObjectName(QString::fromUtf8("actionAbout"));
        actionAbout_Qt = new QAction(MainWindowDesign);
        actionAbout_Qt->setObjectName(QString::fromUtf8("actionAbout_Qt"));
        centralwidget = new QWidget(MainWindowDesign);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        verticalLayout_2 = new QVBoxLayout(centralwidget);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        verticalLayout_2->setSizeConstraint(QLayout::SetNoConstraint);
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setSizeConstraint(QLayout::SetNoConstraint);
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        label_7 = new QLabel(centralwidget);
        label_7->setObjectName(QString::fromUtf8("label_7"));
        label_7->setMinimumSize(QSize(25, 25));
        label_7->setPixmap(QPixmap(QString::fromUtf8(":/images/robot1.png")));

        horizontalLayout->addWidget(label_7);

        label_8 = new QLabel(centralwidget);
        label_8->setObjectName(QString::fromUtf8("label_8"));
        label_8->setLocale(QLocale(QLocale::Chinese, QLocale::China));

        horizontalLayout->addWidget(label_8);

        label_9 = new QLabel(centralwidget);
        label_9->setObjectName(QString::fromUtf8("label_9"));
        label_9->setMinimumSize(QSize(16, 16));
        label_9->setPixmap(QPixmap(QString::fromUtf8(":/images/false.png")));

        horizontalLayout->addWidget(label_9);

        horizontalSpacer_2 = new QSpacerItem(13, 17, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_2);

        label_5 = new QLabel(centralwidget);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        label_5->setLocale(QLocale(QLocale::Chinese, QLocale::China));

        horizontalLayout->addWidget(label_5);

        progressBar = new QProgressBar(centralwidget);
        progressBar->setObjectName(QString::fromUtf8("progressBar"));
        progressBar->setMinimumSize(QSize(60, 20));
        progressBar->setMaximumSize(QSize(60, 20));
        progressBar->setValue(100);

        horizontalLayout->addWidget(progressBar);

        label_4 = new QLabel(centralwidget);
        label_4->setObjectName(QString::fromUtf8("label_4"));
        label_4->setMinimumSize(QSize(30, 30));
        label_4->setMaximumSize(QSize(30, 30));
        label_4->setPixmap(QPixmap(QString::fromUtf8(":/images/power-v.png")));

        horizontalLayout->addWidget(label_4);

        label_power = new QLabel(centralwidget);
        label_power->setObjectName(QString::fromUtf8("label_power"));
        label_power->setMinimumSize(QSize(70, 20));
        label_power->setMaximumSize(QSize(70, 20));

        horizontalLayout->addWidget(label_power);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setSpacing(2);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        horizontalLayout_3->setSizeConstraint(QLayout::SetNoConstraint);
        tab_manager = new QTabWidget(centralwidget);
        tab_manager->setObjectName(QString::fromUtf8("tab_manager"));
        tab_manager->setMinimumSize(QSize(100, 0));
        tab_manager->setLocale(QLocale(QLocale::English, QLocale::Australia));
        tab_3 = new QWidget();
        tab_3->setObjectName(QString::fromUtf8("tab_3"));
        horizontalLayout_7 = new QHBoxLayout(tab_3);
        horizontalLayout_7->setObjectName(QString::fromUtf8("horizontalLayout_7"));
        horizontalLayout_7->setSizeConstraint(QLayout::SetNoConstraint);
        verticalLayout_8 = new QVBoxLayout();
        verticalLayout_8->setSpacing(4);
        verticalLayout_8->setObjectName(QString::fromUtf8("verticalLayout_8"));
        verticalLayout_8->setSizeConstraint(QLayout::SetNoConstraint);
        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        gridLayout_5 = new QGridLayout();
        gridLayout_5->setObjectName(QString::fromUtf8("gridLayout_5"));
        gridLayout_5->setSizeConstraint(QLayout::SetMaximumSize);
        label_31 = new QLabel(tab_3);
        label_31->setObjectName(QString::fromUtf8("label_31"));

        gridLayout_5->addWidget(label_31, 0, 3, 1, 1);

        label_18 = new QLabel(tab_3);
        label_18->setObjectName(QString::fromUtf8("label_18"));

        gridLayout_5->addWidget(label_18, 2, 3, 1, 1);

        label_linery = new QLabel(tab_3);
        label_linery->setObjectName(QString::fromUtf8("label_linery"));
        label_linery->setMaximumSize(QSize(150, 16777215));

        gridLayout_5->addWidget(label_linery, 2, 1, 1, 2);

        label_linerz = new QLabel(tab_3);
        label_linerz->setObjectName(QString::fromUtf8("label_linerz"));
        label_linerz->setMaximumSize(QSize(150, 16777215));

        gridLayout_5->addWidget(label_linerz, 3, 1, 1, 2);

        label_19 = new QLabel(tab_3);
        label_19->setObjectName(QString::fromUtf8("label_19"));

        gridLayout_5->addWidget(label_19, 3, 3, 1, 1);

        label_15 = new QLabel(tab_3);
        label_15->setObjectName(QString::fromUtf8("label_15"));

        gridLayout_5->addWidget(label_15, 2, 0, 1, 1);

        label_14 = new QLabel(tab_3);
        label_14->setObjectName(QString::fromUtf8("label_14"));

        gridLayout_5->addWidget(label_14, 1, 0, 1, 1);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_5->addItem(horizontalSpacer_4, 0, 2, 1, 1);

        label_17 = new QLabel(tab_3);
        label_17->setObjectName(QString::fromUtf8("label_17"));

        gridLayout_5->addWidget(label_17, 1, 3, 1, 1);

        label_16 = new QLabel(tab_3);
        label_16->setObjectName(QString::fromUtf8("label_16"));

        gridLayout_5->addWidget(label_16, 3, 0, 1, 1);

        label_linerx = new QLabel(tab_3);
        label_linerx->setObjectName(QString::fromUtf8("label_linerx"));
        label_linerx->setMaximumSize(QSize(150, 16777215));

        gridLayout_5->addWidget(label_linerx, 1, 1, 1, 2);

        label_30 = new QLabel(tab_3);
        label_30->setObjectName(QString::fromUtf8("label_30"));

        gridLayout_5->addWidget(label_30, 0, 0, 1, 2);

        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_5->addItem(horizontalSpacer_5, 0, 4, 1, 1);

        label_angerx = new QLabel(tab_3);
        label_angerx->setObjectName(QString::fromUtf8("label_angerx"));
        label_angerx->setMaximumSize(QSize(150, 16777215));

        gridLayout_5->addWidget(label_angerx, 1, 4, 1, 1);

        label_angery = new QLabel(tab_3);
        label_angery->setObjectName(QString::fromUtf8("label_angery"));
        label_angery->setMaximumSize(QSize(150, 16777215));

        gridLayout_5->addWidget(label_angery, 2, 4, 1, 1);

        label_angerz = new QLabel(tab_3);
        label_angerz->setObjectName(QString::fromUtf8("label_angerz"));
        label_angerz->setMaximumSize(QSize(150, 16777215));

        gridLayout_5->addWidget(label_angerz, 3, 4, 1, 1);


        horizontalLayout_4->addLayout(gridLayout_5);

        horizontalSpacer_6 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_4->addItem(horizontalSpacer_6);

        widget_x = new QWidget(tab_3);
        widget_x->setObjectName(QString::fromUtf8("widget_x"));
        widget_x->setMinimumSize(QSize(200, 200));
        widget_x->setMaximumSize(QSize(200, 200));
        label_6 = new QLabel(widget_x);
        label_6->setObjectName(QString::fromUtf8("label_6"));
        label_6->setGeometry(QRect(0, 0, 67, 17));

        horizontalLayout_4->addWidget(widget_x);

        widget_y = new QWidget(tab_3);
        widget_y->setObjectName(QString::fromUtf8("widget_y"));
        widget_y->setMinimumSize(QSize(200, 200));
        widget_y->setMaximumSize(QSize(200, 200));
        label_10 = new QLabel(widget_y);
        label_10->setObjectName(QString::fromUtf8("label_10"));
        label_10->setGeometry(QRect(0, 0, 67, 17));

        horizontalLayout_4->addWidget(widget_y);

        horizontalLayout_4->setStretch(0, 1);
        horizontalLayout_4->setStretch(2, 4);

        verticalLayout_8->addLayout(horizontalLayout_4);

        line = new QFrame(tab_3);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout_8->addWidget(line);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QString::fromUtf8("horizontalLayout_6"));
        horizontalLayout_6->setSizeConstraint(QLayout::SetNoConstraint);
        verticalLayout_7 = new QVBoxLayout();
        verticalLayout_7->setObjectName(QString::fromUtf8("verticalLayout_7"));
        checkBox__opencamera = new QCheckBox(tab_3);
        checkBox__opencamera->setObjectName(QString::fromUtf8("checkBox__opencamera"));

        verticalLayout_7->addWidget(checkBox__opencamera);

        comboBox_carmeratopic = new QComboBox(tab_3);
        comboBox_carmeratopic->setObjectName(QString::fromUtf8("comboBox_carmeratopic"));
        comboBox_carmeratopic->setMaximumSize(QSize(200, 16777215));

        verticalLayout_7->addWidget(comboBox_carmeratopic);

        pushButton = new QPushButton(tab_3);
        pushButton->setObjectName(QString::fromUtf8("pushButton"));

        verticalLayout_7->addWidget(pushButton);

        pushButton_subimg = new QPushButton(tab_3);
        pushButton_subimg->setObjectName(QString::fromUtf8("pushButton_subimg"));
        pushButton_subimg->setMaximumSize(QSize(200, 16777215));

        verticalLayout_7->addWidget(pushButton_subimg);


        horizontalLayout_6->addLayout(verticalLayout_7);

        label_image = new QLabel(tab_3);
        label_image->setObjectName(QString::fromUtf8("label_image"));
        label_image->setEnabled(true);
        label_image->setMinimumSize(QSize(640, 480));
        label_image->setSizeIncrement(QSize(1, 1));
        label_image->setBaseSize(QSize(1, 1));
        label_image->setStyleSheet(QString::fromUtf8("R"));
        label_image->setFrameShape(QFrame::Box);
        label_image->setWordWrap(false);
        label_image->setMargin(0);
        label_image->setIndent(-1);
        label_image->setOpenExternalLinks(false);

        horizontalLayout_6->addWidget(label_image);

        horizontalLayout_6->setStretch(1, 3);

        verticalLayout_8->addLayout(horizontalLayout_6);

        verticalLayout_8->setStretch(0, 1);
        verticalLayout_8->setStretch(2, 99);

        horizontalLayout_7->addLayout(verticalLayout_8);

        tab_manager->addTab(tab_3, QString());
        tab_4 = new QWidget();
        tab_4->setObjectName(QString::fromUtf8("tab_4"));
        verticalLayout_4 = new QVBoxLayout(tab_4);
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        textEdit_cmd = new QTextEdit(tab_4);
        textEdit_cmd->setObjectName(QString::fromUtf8("textEdit_cmd"));

        verticalLayout_4->addWidget(textEdit_cmd);

        horizontalLayout_8 = new QHBoxLayout();
        horizontalLayout_8->setObjectName(QString::fromUtf8("horizontalLayout_8"));
        label_11 = new QLabel(tab_4);
        label_11->setObjectName(QString::fromUtf8("label_11"));

        horizontalLayout_8->addWidget(label_11);

        label_12 = new QLabel(tab_4);
        label_12->setObjectName(QString::fromUtf8("label_12"));

        horizontalLayout_8->addWidget(label_12);

        lineEdit_cmd = new QLineEdit(tab_4);
        lineEdit_cmd->setObjectName(QString::fromUtf8("lineEdit_cmd"));

        horizontalLayout_8->addWidget(lineEdit_cmd);

        pushButton_2 = new QPushButton(tab_4);
        pushButton_2->setObjectName(QString::fromUtf8("pushButton_2"));
        pushButton_2->setAutoRepeat(false);

        horizontalLayout_8->addWidget(pushButton_2);


        verticalLayout_4->addLayout(horizontalLayout_8);

        horizontalLayout_16 = new QHBoxLayout();
        horizontalLayout_16->setObjectName(QString::fromUtf8("horizontalLayout_16"));
        horizontalSpacer_7 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_16->addItem(horizontalSpacer_7);

        quit_button_2 = new QPushButton(tab_4);
        quit_button_2->setObjectName(QString::fromUtf8("quit_button_2"));
        QSizePolicy sizePolicy(QSizePolicy::MinimumExpanding, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(quit_button_2->sizePolicy().hasHeightForWidth());
        quit_button_2->setSizePolicy(sizePolicy);

        horizontalLayout_16->addWidget(quit_button_2);

        horizontalLayout_16->setStretch(0, 1);

        verticalLayout_4->addLayout(horizontalLayout_16);

        tab_manager->addTab(tab_4, QString());

        horizontalLayout_3->addWidget(tab_manager);

        tabWidget = new QTabWidget(centralwidget);
        tabWidget->setObjectName(QString::fromUtf8("tabWidget"));
        tab = new QWidget();
        tab->setObjectName(QString::fromUtf8("tab"));
        tab->setLayoutDirection(Qt::LeftToRight);
        tab->setAutoFillBackground(false);
        horizontalLayout_2 = new QHBoxLayout(tab);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        frame = new QFrame(tab);
        frame->setObjectName(QString::fromUtf8("frame"));
        QSizePolicy sizePolicy1(QSizePolicy::Minimum, QSizePolicy::Preferred);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(frame->sizePolicy().hasHeightForWidth());
        frame->setSizePolicy(sizePolicy1);
        frame->setFrameShape(QFrame::StyledPanel);
        frame->setFrameShadow(QFrame::Raised);
        verticalLayout_3 = new QVBoxLayout(frame);
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        groupBox = new QGroupBox(frame);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        gridLayout = new QGridLayout(groupBox);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        line_edit_host = new QLineEdit(groupBox);
        line_edit_host->setObjectName(QString::fromUtf8("line_edit_host"));
        line_edit_host->setMaximumSize(QSize(16777215, 25));

        gridLayout->addWidget(line_edit_host, 3, 0, 1, 2);

        checkbox_remember_settings = new QCheckBox(groupBox);
        checkbox_remember_settings->setObjectName(QString::fromUtf8("checkbox_remember_settings"));
        checkbox_remember_settings->setLayoutDirection(Qt::RightToLeft);
        checkbox_remember_settings->setLocale(QLocale(QLocale::Chinese, QLocale::China));
        checkbox_remember_settings->setChecked(true);

        gridLayout->addWidget(checkbox_remember_settings, 7, 0, 1, 2);

        label_3 = new QLabel(groupBox);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setMaximumSize(QSize(16777215, 25));
        label_3->setLocale(QLocale(QLocale::Chinese, QLocale::China));
        label_3->setFrameShape(QFrame::StyledPanel);
        label_3->setFrameShadow(QFrame::Raised);

        gridLayout->addWidget(label_3, 4, 0, 1, 1);

        label_2 = new QLabel(groupBox);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setMaximumSize(QSize(16777215, 25));
        label_2->setFrameShape(QFrame::StyledPanel);
        label_2->setFrameShadow(QFrame::Raised);

        gridLayout->addWidget(label_2, 2, 0, 1, 1);

        line_edit_topic = new QLineEdit(groupBox);
        line_edit_topic->setObjectName(QString::fromUtf8("line_edit_topic"));
        line_edit_topic->setEnabled(false);
        line_edit_topic->setMaximumSize(QSize(16777215, 25));

        gridLayout->addWidget(line_edit_topic, 5, 0, 1, 2);

        horizontalSpacer = new QSpacerItem(170, 21, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer, 8, 0, 1, 1);

        line_edit_master = new QLineEdit(groupBox);
        line_edit_master->setObjectName(QString::fromUtf8("line_edit_master"));
        line_edit_master->setMaximumSize(QSize(16777215, 25));

        gridLayout->addWidget(line_edit_master, 1, 0, 1, 2);

        label = new QLabel(groupBox);
        label->setObjectName(QString::fromUtf8("label"));
        label->setMaximumSize(QSize(16777215, 25));
        label->setFrameShape(QFrame::StyledPanel);
        label->setFrameShadow(QFrame::Raised);

        gridLayout->addWidget(label, 0, 0, 1, 1);

        button_connect = new QPushButton(groupBox);
        button_connect->setObjectName(QString::fromUtf8("button_connect"));
        button_connect->setEnabled(true);
        sizePolicy.setHeightForWidth(button_connect->sizePolicy().hasHeightForWidth());
        button_connect->setSizePolicy(sizePolicy);

        gridLayout->addWidget(button_connect, 8, 1, 1, 1);

        checkbox_use_environment = new QCheckBox(groupBox);
        checkbox_use_environment->setObjectName(QString::fromUtf8("checkbox_use_environment"));
        checkbox_use_environment->setLayoutDirection(Qt::RightToLeft);
        checkbox_use_environment->setLocale(QLocale(QLocale::Chinese, QLocale::China));
        checkbox_use_environment->setChecked(true);

        gridLayout->addWidget(checkbox_use_environment, 6, 0, 1, 2);


        verticalLayout_3->addWidget(groupBox);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_3->addItem(verticalSpacer);

        horizontalLayout_15 = new QHBoxLayout();
        horizontalLayout_15->setObjectName(QString::fromUtf8("horizontalLayout_15"));
        checkBox_key = new QCheckBox(frame);
        checkBox_key->setObjectName(QString::fromUtf8("checkBox_key"));

        horizontalLayout_15->addWidget(checkBox_key);

        checkBox_mec = new QCheckBox(frame);
        checkBox_mec->setObjectName(QString::fromUtf8("checkBox_mec"));

        horizontalLayout_15->addWidget(checkBox_mec);


        verticalLayout_3->addLayout(horizontalLayout_15);

        gridLayout_2 = new QGridLayout();
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        pushButton_lu = new QPushButton(frame);
        pushButton_lu->setObjectName(QString::fromUtf8("pushButton_lu"));
        pushButton_lu->setAutoExclusive(true);

        gridLayout_2->addWidget(pushButton_lu, 0, 0, 1, 1);

        pushButton_u = new QPushButton(frame);
        pushButton_u->setObjectName(QString::fromUtf8("pushButton_u"));
        pushButton_u->setCheckable(false);
        pushButton_u->setChecked(false);
        pushButton_u->setAutoRepeat(false);
        pushButton_u->setAutoExclusive(true);
        pushButton_u->setAutoRepeatDelay(30000);
        pushButton_u->setAutoRepeatInterval(10);

        gridLayout_2->addWidget(pushButton_u, 0, 1, 1, 1);

        pushButton_ru = new QPushButton(frame);
        pushButton_ru->setObjectName(QString::fromUtf8("pushButton_ru"));
        pushButton_ru->setAutoExclusive(true);
        pushButton_ru->setAutoRepeatDelay(3);
        pushButton_ru->setAutoRepeatInterval(1);

        gridLayout_2->addWidget(pushButton_ru, 0, 2, 1, 1);

        pushButton_l = new QPushButton(frame);
        pushButton_l->setObjectName(QString::fromUtf8("pushButton_l"));
        pushButton_l->setAutoExclusive(true);

        gridLayout_2->addWidget(pushButton_l, 1, 0, 1, 1);

        pushButton_stop = new QPushButton(frame);
        pushButton_stop->setObjectName(QString::fromUtf8("pushButton_stop"));
        pushButton_stop->setAutoExclusive(true);

        gridLayout_2->addWidget(pushButton_stop, 1, 1, 1, 1);

        pushButton_r = new QPushButton(frame);
        pushButton_r->setObjectName(QString::fromUtf8("pushButton_r"));
        pushButton_r->setAutoExclusive(true);

        gridLayout_2->addWidget(pushButton_r, 1, 2, 1, 1);

        pushButton_ld = new QPushButton(frame);
        pushButton_ld->setObjectName(QString::fromUtf8("pushButton_ld"));
        pushButton_ld->setAutoExclusive(true);

        gridLayout_2->addWidget(pushButton_ld, 2, 0, 1, 1);

        pushButton_d = new QPushButton(frame);
        pushButton_d->setObjectName(QString::fromUtf8("pushButton_d"));
        pushButton_d->setAutoExclusive(true);

        gridLayout_2->addWidget(pushButton_d, 2, 1, 1, 1);

        pushButton_rd = new QPushButton(frame);
        pushButton_rd->setObjectName(QString::fromUtf8("pushButton_rd"));
        pushButton_rd->setAutoExclusive(true);

        gridLayout_2->addWidget(pushButton_rd, 2, 2, 1, 1);

        gridLayout_2->setRowStretch(0, 1);
        gridLayout_2->setRowStretch(1, 1);
        gridLayout_2->setRowStretch(2, 1);
        gridLayout_2->setColumnStretch(0, 1);
        gridLayout_2->setColumnStretch(1, 1);
        gridLayout_2->setColumnStretch(2, 1);

        verticalLayout_3->addLayout(gridLayout_2);

        gridLayout_4 = new QGridLayout();
        gridLayout_4->setObjectName(QString::fromUtf8("gridLayout_4"));
        label_20 = new QLabel(frame);
        label_20->setObjectName(QString::fromUtf8("label_20"));

        gridLayout_4->addWidget(label_20, 0, 0, 1, 1);

        horizontalSlider_v = new QSlider(frame);
        horizontalSlider_v->setObjectName(QString::fromUtf8("horizontalSlider_v"));
        horizontalSlider_v->setMaximum(100);
        horizontalSlider_v->setValue(20);
        horizontalSlider_v->setOrientation(Qt::Horizontal);

        gridLayout_4->addWidget(horizontalSlider_v, 0, 1, 1, 1);

        label_v = new QLabel(frame);
        label_v->setObjectName(QString::fromUtf8("label_v"));

        gridLayout_4->addWidget(label_v, 0, 2, 1, 1);

        label_21 = new QLabel(frame);
        label_21->setObjectName(QString::fromUtf8("label_21"));

        gridLayout_4->addWidget(label_21, 1, 0, 1, 1);

        horizontalSlider_c = new QSlider(frame);
        horizontalSlider_c->setObjectName(QString::fromUtf8("horizontalSlider_c"));
        horizontalSlider_c->setMinimum(0);
        horizontalSlider_c->setMaximum(1000);
        horizontalSlider_c->setValue(50);
        horizontalSlider_c->setOrientation(Qt::Horizontal);

        gridLayout_4->addWidget(horizontalSlider_c, 1, 1, 1, 1);

        label_c = new QLabel(frame);
        label_c->setObjectName(QString::fromUtf8("label_c"));

        gridLayout_4->addWidget(label_c, 1, 2, 1, 1);


        verticalLayout_3->addLayout(gridLayout_4);

        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_5->addItem(horizontalSpacer_3);

        quit_button = new QPushButton(frame);
        quit_button->setObjectName(QString::fromUtf8("quit_button"));
        sizePolicy.setHeightForWidth(quit_button->sizePolicy().hasHeightForWidth());
        quit_button->setSizePolicy(sizePolicy);

        horizontalLayout_5->addWidget(quit_button);


        verticalLayout_3->addLayout(horizontalLayout_5);

        groupBox->raise();

        horizontalLayout_2->addWidget(frame);

        tabWidget->addTab(tab, QString());
        tab_2 = new QWidget();
        tab_2->setObjectName(QString::fromUtf8("tab_2"));
        verticalLayout_9 = new QVBoxLayout(tab_2);
        verticalLayout_9->setObjectName(QString::fromUtf8("verticalLayout_9"));
        scrollArea = new QScrollArea(tab_2);
        scrollArea->setObjectName(QString::fromUtf8("scrollArea"));
        scrollArea->setWidgetResizable(true);
        scrollAreaWidgetContents = new QWidget();
        scrollAreaWidgetContents->setObjectName(QString::fromUtf8("scrollAreaWidgetContents"));
        scrollAreaWidgetContents->setGeometry(QRect(0, 0, 284, 789));
        verticalLayout_10 = new QVBoxLayout(scrollAreaWidgetContents);
        verticalLayout_10->setObjectName(QString::fromUtf8("verticalLayout_10"));
        pushButton_linefollower = new QPushButton(scrollAreaWidgetContents);
        pushButton_linefollower->setObjectName(QString::fromUtf8("pushButton_linefollower"));
        pushButton_linefollower->setCheckable(true);
        pushButton_linefollower->setChecked(false);
        pushButton_linefollower->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_linefollower);

        pushButton_laserfollower = new QPushButton(scrollAreaWidgetContents);
        pushButton_laserfollower->setObjectName(QString::fromUtf8("pushButton_laserfollower"));
        pushButton_laserfollower->setCheckable(true);
        pushButton_laserfollower->setChecked(false);
        pushButton_laserfollower->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_laserfollower);

        pushButton_visfollower = new QPushButton(scrollAreaWidgetContents);
        pushButton_visfollower->setObjectName(QString::fromUtf8("pushButton_visfollower"));
        pushButton_visfollower->setCheckable(true);
        pushButton_visfollower->setChecked(false);
        pushButton_visfollower->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_visfollower);

        pushButton_2dmap = new QPushButton(scrollAreaWidgetContents);
        pushButton_2dmap->setObjectName(QString::fromUtf8("pushButton_2dmap"));
        pushButton_2dmap->setCheckable(true);
        pushButton_2dmap->setChecked(false);
        pushButton_2dmap->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_2dmap);

        pushButton_2dmapsave = new QPushButton(scrollAreaWidgetContents);
        pushButton_2dmapsave->setObjectName(QString::fromUtf8("pushButton_2dmapsave"));
        pushButton_2dmapsave->setCheckable(true);

        verticalLayout_10->addWidget(pushButton_2dmapsave);

        pushButton_2dnav = new QPushButton(scrollAreaWidgetContents);
        pushButton_2dnav->setObjectName(QString::fromUtf8("pushButton_2dnav"));
        pushButton_2dnav->setCheckable(true);
        pushButton_2dnav->setChecked(false);
        pushButton_2dnav->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_2dnav);

        pushButton_3dmap = new QPushButton(scrollAreaWidgetContents);
        pushButton_3dmap->setObjectName(QString::fromUtf8("pushButton_3dmap"));
        pushButton_3dmap->setCheckable(true);
        pushButton_3dmap->setChecked(false);
        pushButton_3dmap->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_3dmap);

        pushButton_3dnav = new QPushButton(scrollAreaWidgetContents);
        pushButton_3dnav->setObjectName(QString::fromUtf8("pushButton_3dnav"));
        pushButton_3dnav->setCheckable(true);
        pushButton_3dnav->setChecked(false);
        pushButton_3dnav->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_3dnav);

        pushButton_pure3dmap = new QPushButton(scrollAreaWidgetContents);
        pushButton_pure3dmap->setObjectName(QString::fromUtf8("pushButton_pure3dmap"));
        pushButton_pure3dmap->setCheckable(true);
        pushButton_pure3dmap->setChecked(false);
        pushButton_pure3dmap->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_pure3dmap);

        pushButton_pure3dnav = new QPushButton(scrollAreaWidgetContents);
        pushButton_pure3dnav->setObjectName(QString::fromUtf8("pushButton_pure3dnav"));
        pushButton_pure3dnav->setCheckable(true);

        verticalLayout_10->addWidget(pushButton_pure3dnav);

        pushButton_xfmic = new QPushButton(scrollAreaWidgetContents);
        pushButton_xfmic->setObjectName(QString::fromUtf8("pushButton_xfmic"));
        pushButton_xfmic->setCheckable(true);
        pushButton_xfmic->setChecked(false);
        pushButton_xfmic->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_xfmic);

        pushButton_kcftrack = new QPushButton(scrollAreaWidgetContents);
        pushButton_kcftrack->setObjectName(QString::fromUtf8("pushButton_kcftrack"));
        pushButton_kcftrack->setCheckable(true);
        pushButton_kcftrack->setChecked(false);
        pushButton_kcftrack->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_kcftrack);

        pushButton_rrt = new QPushButton(scrollAreaWidgetContents);
        pushButton_rrt->setObjectName(QString::fromUtf8("pushButton_rrt"));
        pushButton_rrt->setCheckable(true);
        pushButton_rrt->setChecked(false);
        pushButton_rrt->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_rrt);

        pushButton_webusbcam = new QPushButton(scrollAreaWidgetContents);
        pushButton_webusbcam->setObjectName(QString::fromUtf8("pushButton_webusbcam"));
        pushButton_webusbcam->setCheckable(true);
        pushButton_webusbcam->setChecked(false);
        pushButton_webusbcam->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_webusbcam);

        pushButton_arlabel = new QPushButton(scrollAreaWidgetContents);
        pushButton_arlabel->setObjectName(QString::fromUtf8("pushButton_arlabel"));
        pushButton_arlabel->setCheckable(true);
        pushButton_arlabel->setChecked(false);
        pushButton_arlabel->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_arlabel);

        pushButton_arfollower = new QPushButton(scrollAreaWidgetContents);
        pushButton_arfollower->setObjectName(QString::fromUtf8("pushButton_arfollower"));
        pushButton_arfollower->setCheckable(true);
        pushButton_arfollower->setChecked(false);
        pushButton_arfollower->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_arfollower);

        pushButton_joy_control = new QPushButton(scrollAreaWidgetContents);
        pushButton_joy_control->setObjectName(QString::fromUtf8("pushButton_joy_control"));
        pushButton_joy_control->setCheckable(true);
        pushButton_joy_control->setChecked(false);
        pushButton_joy_control->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_joy_control);

        pushButton_moveitik = new QPushButton(scrollAreaWidgetContents);
        pushButton_moveitik->setObjectName(QString::fromUtf8("pushButton_moveitik"));
        pushButton_moveitik->setCheckable(true);
        pushButton_moveitik->setChecked(false);
        pushButton_moveitik->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_moveitik);

        pushButton_moveitfk = new QPushButton(scrollAreaWidgetContents);
        pushButton_moveitfk->setObjectName(QString::fromUtf8("pushButton_moveitfk"));
        pushButton_moveitfk->setCheckable(true);
        pushButton_moveitfk->setChecked(false);
        pushButton_moveitfk->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_moveitfk);

        pushButton_moveitpick = new QPushButton(scrollAreaWidgetContents);
        pushButton_moveitpick->setObjectName(QString::fromUtf8("pushButton_moveitpick"));
        pushButton_moveitpick->setCheckable(true);
        pushButton_moveitpick->setChecked(false);
        pushButton_moveitpick->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_moveitpick);

        pushButton_moveitpick_2 = new QPushButton(scrollAreaWidgetContents);
        pushButton_moveitpick_2->setObjectName(QString::fromUtf8("pushButton_moveitpick_2"));
        pushButton_moveitpick_2->setCheckable(true);
        pushButton_moveitpick_2->setChecked(false);
        pushButton_moveitpick_2->setAutoRepeat(false);

        verticalLayout_10->addWidget(pushButton_moveitpick_2);

        scrollArea->setWidget(scrollAreaWidgetContents);

        verticalLayout_9->addWidget(scrollArea);

        tabWidget->addTab(tab_2, QString());

        horizontalLayout_3->addWidget(tabWidget);

        horizontalLayout_3->setStretch(0, 2);

        verticalLayout->addLayout(horizontalLayout_3);


        verticalLayout_2->addLayout(verticalLayout);

        MainWindowDesign->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindowDesign);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 1212, 28));
        menu_File = new QMenu(menubar);
        menu_File->setObjectName(QString::fromUtf8("menu_File"));
        MainWindowDesign->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindowDesign);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindowDesign->setStatusBar(statusbar);

        menubar->addAction(menu_File->menuAction());
        menu_File->addAction(action_Preferences);
        menu_File->addSeparator();
        menu_File->addAction(actionAbout);
        menu_File->addAction(actionAbout_Qt);
        menu_File->addSeparator();
        menu_File->addAction(action_Quit);

        retranslateUi(MainWindowDesign);
        QObject::connect(action_Quit, SIGNAL(triggered()), MainWindowDesign, SLOT(close()));
        QObject::connect(quit_button, SIGNAL(clicked()), MainWindowDesign, SLOT(close()));

        tab_manager->setCurrentIndex(1);
        tabWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(MainWindowDesign);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindowDesign)
    {
        MainWindowDesign->setWindowTitle(QApplication::translate("MainWindowDesign", "QRosApp", nullptr));
        action_Quit->setText(QApplication::translate("MainWindowDesign", "&Quit", nullptr));
#ifndef QT_NO_SHORTCUT
        action_Quit->setShortcut(QApplication::translate("MainWindowDesign", "Ctrl+Q", nullptr));
#endif // QT_NO_SHORTCUT
        action_Preferences->setText(QApplication::translate("MainWindowDesign", "&Preferences", nullptr));
        actionAbout->setText(QApplication::translate("MainWindowDesign", "&About", nullptr));
        actionAbout_Qt->setText(QApplication::translate("MainWindowDesign", "About &Qt", nullptr));
        label_7->setText(QString());
        label_8->setText(QApplication::translate("MainWindowDesign", "\347\246\273\347\272\277", nullptr));
        label_9->setText(QString());
        label_5->setText(QApplication::translate("MainWindowDesign", "\347\224\265\346\261\240\347\224\265\351\207\217", nullptr));
        label_4->setText(QString());
        label_power->setText(QApplication::translate("MainWindowDesign", "00.000V", nullptr));
        label_31->setText(QApplication::translate("MainWindowDesign", "\350\247\222\351\200\237\345\272\246", nullptr));
        label_18->setText(QApplication::translate("MainWindowDesign", "y:", nullptr));
        label_linery->setText(QString());
        label_linerz->setText(QString());
        label_19->setText(QApplication::translate("MainWindowDesign", "z:", nullptr));
        label_15->setText(QApplication::translate("MainWindowDesign", "y:", nullptr));
        label_14->setText(QApplication::translate("MainWindowDesign", "x:", nullptr));
        label_17->setText(QApplication::translate("MainWindowDesign", "x:", nullptr));
        label_16->setText(QApplication::translate("MainWindowDesign", "z:", nullptr));
        label_linerx->setText(QString());
        label_30->setText(QApplication::translate("MainWindowDesign", "\347\272\277\351\200\237\345\272\246", nullptr));
        label_angerx->setText(QString());
        label_angery->setText(QString());
        label_angerz->setText(QString());
        label_6->setText(QApplication::translate("MainWindowDesign", "x\350\275\264\347\272\277\351\200\237\345\272\246", nullptr));
        label_10->setText(QApplication::translate("MainWindowDesign", "y\350\275\264\347\272\277\351\200\237\345\272\246", nullptr));
        checkBox__opencamera->setText(QApplication::translate("MainWindowDesign", "\346\211\223\345\274\200\346\221\204\345\203\217\345\244\264", nullptr));
        pushButton->setText(QApplication::translate("MainWindowDesign", "\345\210\267\346\226\260\350\257\235\351\242\230", nullptr));
        pushButton_subimg->setText(QApplication::translate("MainWindowDesign", "\345\233\276\345\203\217\350\256\242\351\230\205", nullptr));
        label_image->setText(QString());
        tab_manager->setTabText(tab_manager->indexOf(tab_3), QApplication::translate("MainWindowDesign", "\345\237\272\346\234\254", nullptr));
        label_11->setText(QApplication::translate("MainWindowDesign", "\350\276\223\345\205\245\345\221\275\344\273\244\357\274\232", nullptr));
        label_12->setText(QApplication::translate("MainWindowDesign", "tringai@veryvision", nullptr));
        pushButton_2->setText(QApplication::translate("MainWindowDesign", "\345\217\221\351\200\201", nullptr));
        quit_button_2->setText(QApplication::translate("MainWindowDesign", "\347\273\223\346\235\237\350\277\220\350\241\214", nullptr));
        tab_manager->setTabText(tab_manager->indexOf(tab_4), QApplication::translate("MainWindowDesign", "\345\221\275\344\273\244\350\241\214", nullptr));
        groupBox->setTitle(QApplication::translate("MainWindowDesign", "Ros Master", nullptr));
        line_edit_host->setText(QApplication::translate("MainWindowDesign", "192.168.0.100", nullptr));
        checkbox_remember_settings->setText(QApplication::translate("MainWindowDesign", "\346\211\223\345\274\200\350\275\257\344\273\266\350\207\252\345\212\250\350\277\236\346\216\245", nullptr));
        label_3->setText(QApplication::translate("MainWindowDesign", "Ros Hostname", nullptr));
        label_2->setText(QApplication::translate("MainWindowDesign", "ROS_HOSTNAME", nullptr));
        line_edit_topic->setText(QString());
        line_edit_master->setText(QApplication::translate("MainWindowDesign", "http://192.168.0.100:11311", nullptr));
        label->setText(QApplication::translate("MainWindowDesign", "ROS_MASTER_URI", nullptr));
#ifndef QT_NO_TOOLTIP
        button_connect->setToolTip(QApplication::translate("MainWindowDesign", "Set the target to the current joint trajectory state.", nullptr));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_STATUSTIP
        button_connect->setStatusTip(QApplication::translate("MainWindowDesign", "Clear all waypoints and set the target to the current joint trajectory state.", nullptr));
#endif // QT_NO_STATUSTIP
        button_connect->setText(QApplication::translate("MainWindowDesign", "\350\277\236\346\216\245", nullptr));
        checkbox_use_environment->setText(QApplication::translate("MainWindowDesign", "\344\275\277\347\224\250\347\216\257\345\242\203\345\217\230\351\207\217", nullptr));
        checkBox_key->setText(QApplication::translate("MainWindowDesign", "\346\211\223\345\274\200\351\224\256\347\233\230\346\216\247\345\210\266", nullptr));
        checkBox_mec->setText(QApplication::translate("MainWindowDesign", "\345\205\250\345\220\221\350\275\256", nullptr));
        pushButton_lu->setText(QApplication::translate("MainWindowDesign", "u", nullptr));
        pushButton_u->setText(QApplication::translate("MainWindowDesign", "i", nullptr));
        pushButton_ru->setText(QApplication::translate("MainWindowDesign", "o", nullptr));
        pushButton_l->setText(QApplication::translate("MainWindowDesign", "j", nullptr));
        pushButton_stop->setText(QApplication::translate("MainWindowDesign", "k", nullptr));
        pushButton_r->setText(QApplication::translate("MainWindowDesign", "l", nullptr));
        pushButton_ld->setText(QApplication::translate("MainWindowDesign", "m", nullptr));
        pushButton_d->setText(QApplication::translate("MainWindowDesign", ",", nullptr));
        pushButton_rd->setText(QApplication::translate("MainWindowDesign", ".", nullptr));
        label_20->setText(QApplication::translate("MainWindowDesign", "\347\272\277\351\200\237\345\272\246", nullptr));
        label_v->setText(QApplication::translate("MainWindowDesign", "00.20", nullptr));
        label_21->setText(QApplication::translate("MainWindowDesign", "\350\247\222\351\200\237\345\272\246", nullptr));
        label_c->setText(QApplication::translate("MainWindowDesign", "00.50", nullptr));
        quit_button->setText(QApplication::translate("MainWindowDesign", "\351\200\200\345\207\272", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab), QApplication::translate("MainWindowDesign", "\345\237\272\346\234\254", nullptr));
        pushButton_linefollower->setText(QApplication::translate("MainWindowDesign", "\345\267\241\347\272\277(\351\233\267\350\276\276\351\201\277\351\232\234)", nullptr));
        pushButton_laserfollower->setText(QApplication::translate("MainWindowDesign", "\351\233\267\350\276\276\350\267\237\351\232\217", nullptr));
        pushButton_visfollower->setText(QApplication::translate("MainWindowDesign", "\350\247\206\350\247\211\350\267\237\350\270\252", nullptr));
        pushButton_2dmap->setText(QApplication::translate("MainWindowDesign", "2D\345\273\272\345\233\276", nullptr));
        pushButton_2dmapsave->setText(QApplication::translate("MainWindowDesign", "\345\273\272\345\233\276\344\277\235\345\255\230", nullptr));
        pushButton_2dnav->setText(QApplication::translate("MainWindowDesign", "2D\345\257\274\350\210\252", nullptr));
        pushButton_3dmap->setText(QApplication::translate("MainWindowDesign", "3D\345\273\272\345\233\276", nullptr));
        pushButton_3dnav->setText(QApplication::translate("MainWindowDesign", "3D\345\257\274\350\210\252", nullptr));
        pushButton_pure3dmap->setText(QApplication::translate("MainWindowDesign", "\347\272\257\350\247\206\350\247\211\345\273\272\345\233\276", nullptr));
        pushButton_pure3dnav->setText(QApplication::translate("MainWindowDesign", "\347\272\257\350\247\206\350\247\211\345\257\274\350\210\252", nullptr));
        pushButton_xfmic->setText(QApplication::translate("MainWindowDesign", "\350\257\255\351\237\263\346\216\247\345\210\266", nullptr));
        pushButton_kcftrack->setText(QApplication::translate("MainWindowDesign", "KCF\350\267\237\351\232\217", nullptr));
        pushButton_rrt->setText(QApplication::translate("MainWindowDesign", "\350\207\252\344\270\273\345\273\272\345\233\276", nullptr));
        pushButton_webusbcam->setText(QApplication::translate("MainWindowDesign", "WEB\346\265\217\350\247\210\345\231\250\346\230\276\347\244\272\346\221\204\345\203\217\345\244\264", nullptr));
        pushButton_arlabel->setText(QApplication::translate("MainWindowDesign", "AR\346\240\207\347\255\276\350\257\206\345\210\253", nullptr));
        pushButton_arfollower->setText(QApplication::translate("MainWindowDesign", "AR\346\240\207\347\255\276\350\267\237\351\232\217", nullptr));
        pushButton_joy_control->setText(QApplication::translate("MainWindowDesign", "2.4G\346\227\240\347\272\277\346\211\213\346\237\204\346\216\247\345\210\266ROS\347\253\257", nullptr));
        pushButton_moveitik->setText(QApplication::translate("MainWindowDesign", "\346\234\272\346\242\260\350\207\202\351\200\206\350\247\243", nullptr));
        pushButton_moveitfk->setText(QApplication::translate("MainWindowDesign", "\346\234\272\346\242\260\350\207\202\346\255\243\350\247\243", nullptr));
        pushButton_moveitpick->setText(QApplication::translate("MainWindowDesign", "\346\234\272\346\242\260\350\207\202\345\244\271\345\217\226\350\211\262\345\235\227\344\276\213\347\250\213\357\274\210\350\260\203\345\217\202\357\274\211", nullptr));
        pushButton_moveitpick_2->setText(QApplication::translate("MainWindowDesign", "\346\234\272\346\242\260\350\207\202\345\244\271\345\217\226\350\211\262\345\235\227\344\276\213\347\250\213\357\274\210\345\272\224\347\224\250\357\274\211", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_2), QApplication::translate("MainWindowDesign", "\345\277\253\346\215\267\345\212\237\350\203\275", nullptr));
        menu_File->setTitle(QApplication::translate("MainWindowDesign", "&App", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindowDesign: public Ui_MainWindowDesign {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAIN_WINDOW_H
