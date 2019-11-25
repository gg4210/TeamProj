
/* Drop Tables */

DROP TABLE AUTH_SECURITY CASCADE CONSTRAINTS;
DROP TABLE BBS_Comment CASCADE CONSTRAINTS;
DROP TABLE SCRAP CASCADE CONSTRAINTS;
DROP TABLE BBS CASCADE CONSTRAINTS;
DROP TABLE BookMark CASCADE CONSTRAINTS;
DROP TABLE CenterReview CASCADE CONSTRAINTS;
DROP TABLE Complexity CASCADE CONSTRAINTS;
DROP TABLE CENTER_INFO CASCADE CONSTRAINTS;
DROP TABLE Notification CASCADE CONSTRAINTS;
DROP TABLE COUPON CASCADE CONSTRAINTS;
DROP TABLE CustomerService CASCADE CONSTRAINTS;
DROP TABLE healthMate CASCADE CONSTRAINTS;
DROP TABLE MESSAGE_TABLE CASCADE CONSTRAINTS;
DROP TABLE MY_MATE CASCADE CONSTRAINTS;
DROP TABLE RegiCenter CASCADE CONSTRAINTS;
DROP TABLE H_MEMBER CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_AUTH_SECURITY_SECNO;
DROP SEQUENCE SEQ_BBS_Comment_CNO;
DROP SEQUENCE SEQ_BBS_NO;
DROP SEQUENCE SEQ_BookMark_NO;
DROP SEQUENCE SEQ_CenterReview_NO;
DROP SEQUENCE SEQ_COUPON_CNO;
DROP SEQUENCE SEQ_CustomerService_NO;
DROP SEQUENCE SEQ_C_KIND_LIST_NO;
DROP SEQUENCE SEQ_healthMate_NO;
DROP SEQUENCE SEQ_MESSAGE_TABLE_MNO;
DROP SEQUENCE SEQ_MY_MATE_FNO;
DROP SEQUENCE SEQ_RegiCenter_NO;
DROP SEQUENCE SEQ_SCRAP_NO;




/* Create Sequences */

CREATE SEQUENCE SEQ_AUTH_SECURITY_SECNO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_BBS_Comment_CNO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_BBS_NO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_BookMark_NO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_CenterReview_NO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_COUPON_CNO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_CustomerService_NO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_C_KIND_LIST_NO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_healthMate_NO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_MESSAGE_TABLE_MNO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_MY_MATE_FNO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_RegiCenter_NO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_SCRAP_NO INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE AUTH_SECURITY
(
	SECNO number NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	AUTHORITY varchar2(20) DEFAULT 'ROLE_USER',
	ENABLED number(1) DEFAULT 1,
	PRIMARY KEY (SECNO)
);


CREATE TABLE BBS
(
	NO number NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	title nvarchar2(50) NOT NULL,
	content nvarchar2(2000) NOT NULL,
	postDate date DEFAULT SYSDATE NOT NULL,
	BBS_RECOMMEND number DEFAULT 0 NOT NULL,
	filename nvarchar2(50),
	BBS_CATEGORY nvarchar2(50) NOT NULL,
	PRIMARY KEY (NO)
);


CREATE TABLE BBS_Comment
(
	CNO number NOT NULL,
	NO number NOT NULL,
	lineComment nvarchar2(50) NOT NULL,
	cpostDate date DEFAULT SYSDATE NOT NULL,
	STEP number(1) DEFAULT 0 NOT NULL,
	COMMENT_ID_TAG nvarchar2(50),
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	PRIMARY KEY (CNO)
);


CREATE TABLE BookMark
(
	NO number NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	-- �븘 移댁뭅�삤 吏��룄 id媛�..�뀕�뀕
	mapkey number(20) NOT NULL,
	PRIMARY KEY (NO)
);


CREATE TABLE CenterReview
(
	-- 1~5 源뚯��쓽 �씤�뜳�뒪 ���옣
	-- �닽�옄媛� �쟻�쓣�닔濡� �궙�� 蹂꾩젏
	rate number(1) NOT NULL,
	rPostDate date DEFAULT SYSDATE NOT NULL,
	rComment nvarchar2(500) NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	-- �븘 移댁뭅�삤 吏��룄 id媛�..�뀕�뀕
	mapkey number(20) NOT NULL,
	NO number NOT NULL,
	PRIMARY KEY (NO)
);


CREATE TABLE CENTER_INFO
(
	-- �븘 移댁뭅�삤 吏��룄 id媛�..�뀕�뀕
	mapkey number(20) NOT NULL,
	-- �닔�젙�븷 �븣 �궗吏� 諛쏆쓣 寃쎌슦 ��
	filename nvarchar2(700),
	title nvarchar2(50) NOT NULL,
	tel nvarchar2(20) NOT NULL,
	otime nvarchar2(100) NOT NULL,
	service nvarchar2(80) NOT NULL,
	tag nvarchar2(100),
	sport_kind nvarchar2(100),
	MAXNUMBER number NOT NULL,
	-- �븘 �솢 類먯뼱?
	content nvarchar2(1000),
	PRIMARY KEY (mapkey)
);


CREATE TABLE Complexity
(
	-- �븘 移댁뭅�삤 吏��룄 id媛�..�뀕�뀕
	mapkey number(20) NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL
);


CREATE TABLE COUPON
(
	CNO number NOT NULL,
	EVENT_TITLE nvarchar2(50) NOT NULL,
	EVENT_CONTENT nvarchar2(200),
	EVENT_START date NOT NULL,
	EVENT_END date NOT NULL,
	EVENT_SEND date DEFAULT SYSDATE NOT NULL,
	-- AUTH 沅뚰븳 �꽕�젙:湲곗뾽,愿�由ъ옄
	ID nvarchar2(50) NOT NULL,
	AUTHORITY nvarchar2(20),
	PRIMARY KEY (CNO)
);


CREATE TABLE CustomerService
(
	NO number NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	Menu nvarchar2(20) NOT NULL,
	category nvarchar2(20) NOT NULL,
	title nvarchar2(30) NOT NULL,
	content nvarchar2(1000) NOT NULL,
	postDate date DEFAULT SYSDATE NOT NULL,
	attachedFile varchar2(50),
	reply nvarchar2(1000),
	PRIMARY KEY (NO)
);


CREATE TABLE healthMate
(
	NO number NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	title nvarchar2(20) NOT NULL,
	location nvarchar2(20) NOT NULL,
	interSport nvarchar2(20) NOT NULL,
	healthTime nvarchar2(10) DEFAULT '�떆媛꾪삊�쓽' NOT NULL,
	startDate date NOT NULL,
	endDate date NOT NULL,
	first_tag nvarchar2(10),
	second_tag nvarchar2(10),
	third_tag nvarchar2(10),
	content nvarchar2(1000),
	postDate date DEFAULT SYSDATE,
	matePhoto nvarchar2(100),
	PRIMARY KEY (NO)
);


CREATE TABLE H_MEMBER
(
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	password varchar2(50) NOT NULL,
	name nvarchar2(50) NOT NULL,
	email nvarchar2(50),
	Address nvarchar2(50),
	cellphone nvarchar2(13) NOT NULL,
	-- customer or enterprise or admin
	AUTHORITY varchar2(20),
	-- �쉶�썝媛��엯�럹�씠吏��뿉�꽌 �벑濡쓃 �슫�룞硫붿씠�듃 �벑濡� 諛� �닔�젙 �럹�씠吏��뿉�꽌 �뜲�씠�꽣瑜� 諛쏆쓣 �삁�젙�엯�땲�떎.
	MY_COMMENT nvarchar2(500) DEFAULT '�옒 遺��긽�뱶由쎈땲�떎.',
	inter_sports nvarchar2(100),
	picture nvarchar2(100),
	joindate date DEFAULT SYSDATE NOT NULL,
	NICK_NAME nvarchar2(20) NOT NULL,
	DETAIL_ADDRESS nvarchar2(50),
	ZIPCODE number,
	CREGINUM nvarchar2(40),
	PRIMARY KEY (ID)
);


CREATE TABLE MESSAGE_TABLE
(
	MNO number NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	CONTENT nvarchar2(500) NOT NULL,
	RECEIVED_DATE date DEFAULT SYSDATE NOT NULL,
	picture nvarchar2(100),
	fromID nvarchar2(50),
	-- 1�� �씫吏��븡�쓬
	-- 0�� �씫�쓬
	isRead number(1) DEFAULT 1 NOT NULL,
	PRIMARY KEY (MNO)
);


CREATE TABLE MY_MATE
(
	FNO number NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	FRIEND_ID nvarchar2(50) NOT NULL,
	PRIMARY KEY (FNO)
);


CREATE TABLE Notification
(
	MNO number,
	CNO number,
	FNO number,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL
);


CREATE TABLE RegiCenter
(
	NO number NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	startDate date DEFAULT SYSDATE,
	endDate date,
	-- �븘 移댁뭅�삤 吏��룄 id媛�..�뀕�뀕
	mapkey number(20) NOT NULL,
	-- �뿀�슜�떆 0, �븘�땺寃쎌슦 1
	isAllowed number(1) DEFAULT 1 NOT NULL,
	PRIMARY KEY (NO)
);


CREATE TABLE SCRAP
(
	NO number NOT NULL,
	scrap_date date DEFAULT SYSDATE NOT NULL,
	bbs_no number NOT NULL,
	member_id nvarchar2(20) NOT NULL,
	-- 怨꾩젙
	ID nvarchar2(50) NOT NULL,
	PRIMARY KEY (NO)
);



/* Create Foreign Keys */

ALTER TABLE BBS_Comment
	ADD FOREIGN KEY (NO)
	REFERENCES BBS (NO)
;


ALTER TABLE SCRAP
	ADD FOREIGN KEY (bbs_no)
	REFERENCES BBS (NO)
;


ALTER TABLE Complexity
	ADD FOREIGN KEY (mapkey)
	REFERENCES CENTER_INFO (mapkey)
;


ALTER TABLE Notification
	ADD FOREIGN KEY (CNO)
	REFERENCES COUPON (CNO)
;


ALTER TABLE AUTH_SECURITY
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE BBS
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE BBS_Comment
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE BookMark
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE CenterReview
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE Complexity
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE COUPON
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE CustomerService
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE healthMate
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE MESSAGE_TABLE
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE MY_MATE
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE Notification
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE RegiCenter
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE SCRAP
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE Notification
	ADD FOREIGN KEY (MNO)
	REFERENCES MESSAGE_TABLE (MNO)
;


ALTER TABLE Notification
	ADD FOREIGN KEY (FNO)
	REFERENCES MY_MATE (FNO)
;



/* Comments */

COMMENT ON COLUMN AUTH_SECURITY.ID IS '怨꾩젙';
COMMENT ON COLUMN BBS.ID IS '怨꾩젙';
COMMENT ON COLUMN BBS_Comment.ID IS '怨꾩젙';
COMMENT ON COLUMN BookMark.ID IS '怨꾩젙';
COMMENT ON COLUMN BookMark.mapkey IS '�븘 移댁뭅�삤 吏��룄 id媛�..�뀕�뀕';
COMMENT ON COLUMN CenterReview.rate IS '1~5 源뚯��쓽 �씤�뜳�뒪 ���옣
�닽�옄媛� �쟻�쓣�닔濡� �궙�� 蹂꾩젏';
COMMENT ON COLUMN CenterReview.ID IS '怨꾩젙';
COMMENT ON COLUMN CenterReview.mapkey IS '�븘 移댁뭅�삤 吏��룄 id媛�..�뀕�뀕';
COMMENT ON COLUMN CENTER_INFO.mapkey IS '�븘 移댁뭅�삤 吏��룄 id媛�..�뀕�뀕';
COMMENT ON COLUMN CENTER_INFO.filename IS '�닔�젙�븷 �븣 �궗吏� 諛쏆쓣 寃쎌슦 ��';
COMMENT ON COLUMN CENTER_INFO.content IS '�븘 �솢 類먯뼱?';
COMMENT ON COLUMN Complexity.mapkey IS '�븘 移댁뭅�삤 吏��룄 id媛�..�뀕�뀕';
COMMENT ON COLUMN Complexity.ID IS '怨꾩젙';
COMMENT ON COLUMN COUPON.ID IS 'AUTH 沅뚰븳 �꽕�젙:湲곗뾽,愿�由ъ옄';
COMMENT ON COLUMN CustomerService.ID IS '怨꾩젙';
COMMENT ON COLUMN healthMate.ID IS '怨꾩젙';
COMMENT ON COLUMN H_MEMBER.ID IS '怨꾩젙';
COMMENT ON COLUMN H_MEMBER.AUTHORITY IS 'customer or enterprise or admin';
COMMENT ON COLUMN H_MEMBER.MY_COMMENT IS '�쉶�썝媛��엯�럹�씠吏��뿉�꽌 �벑濡쓃 �슫�룞硫붿씠�듃 �벑濡� 諛� �닔�젙 �럹�씠吏��뿉�꽌 �뜲�씠�꽣瑜� 諛쏆쓣 �삁�젙�엯�땲�떎.';
COMMENT ON COLUMN MESSAGE_TABLE.ID IS '怨꾩젙';
COMMENT ON COLUMN MESSAGE_TABLE.isRead IS '1�� �씫吏��븡�쓬
0�� �씫�쓬';
COMMENT ON COLUMN MY_MATE.ID IS '怨꾩젙';
COMMENT ON COLUMN Notification.ID IS '怨꾩젙';
COMMENT ON COLUMN RegiCenter.ID IS '怨꾩젙';
COMMENT ON COLUMN RegiCenter.mapkey IS '�븘 移댁뭅�삤 吏��룄 id媛�..�뀕�뀕';
COMMENT ON COLUMN RegiCenter.isAllowed IS '�뿀�슜�떆 0, �븘�땺寃쎌슦 1';
COMMENT ON COLUMN SCRAP.ID IS '怨꾩젙';



