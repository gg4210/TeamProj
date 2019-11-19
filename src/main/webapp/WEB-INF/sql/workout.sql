
/* Drop Tables 

DROP TABLE AUTH_SECURITY CASCADE CONSTRAINTS;
DROP TABLE BBS_Comment CASCADE CONSTRAINTS;
DROP TABLE SCRAP CASCADE CONSTRAINTS;
DROP TABLE BBS CASCADE CONSTRAINTS;
DROP TABLE BookMark CASCADE CONSTRAINTS;
DROP TABLE CenterReview CASCADE CONSTRAINTS;
DROP TABLE Complexity CASCADE CONSTRAINTS;
DROP TABLE C_KIND_LIST CASCADE CONSTRAINTS;
DROP TABLE RegiCenter CASCADE CONSTRAINTS;
DROP TABLE CENTER_INFO CASCADE CONSTRAINTS;
DROP TABLE Notification CASCADE CONSTRAINTS;
DROP TABLE COUPON CASCADE CONSTRAINTS;
DROP TABLE CustomerService CASCADE CONSTRAINTS;
DROP TABLE healthMate CASCADE CONSTRAINTS;
DROP TABLE MESSAGE_TABLE CASCADE CONSTRAINTS;
DROP TABLE MY_MATE CASCADE CONSTRAINTS;
DROP TABLE H_MEMBER CASCADE CONSTRAINTS;
DROP TABLE SPORTS_KIND CASCADE CONSTRAINTS;



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
*/



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
	-- 계정
	ID nvarchar2(50) NOT NULL,
	AUTHORITY varchar2(20) DEFAULT 'ROLE_USER',
	ENABLED number(1) DEFAULT 1,
	PRIMARY KEY (SECNO)
);


CREATE TABLE BBS
(
	NO number NOT NULL,
	-- 계정
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
	-- 계정
	ID nvarchar2(50) NOT NULL,
	PRIMARY KEY (CNO)
);


CREATE TABLE BookMark
(
	NO number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	mapkey number(8) NOT NULL,
	PRIMARY KEY (NO)
);


CREATE TABLE CenterReview
(
	-- 0~4 까지의 인덱스 저장
	-- 숫자가 적을수록 낮은 별점
	rate number(1) NOT NULL,
	rPostDate date DEFAULT SYSDATE NOT NULL,
	rComment nvarchar2(500) NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	mapkey number(8) NOT NULL,
	NO number NOT NULL,
	PRIMARY KEY (NO)
);


CREATE TABLE CENTER_INFO
(
	mapkey number(8) NOT NULL,
	operatingTime nvarchar2(12) NOT NULL,
	-- 수정할 때 사진 받을 경우 씀
	filename nvarchar2(50),
	title nvarchar2(50) NOT NULL,
	tel nvarchar2(20) NOT NULL,
	otime nvarchar2(100) NOT NULL,
	service nvarchar2(80) NOT NULL,
	PRIMARY KEY (mapkey)
);


CREATE TABLE Complexity
(
	maxNumber number,
	CountNum number DEFAULT 0 NOT NULL,
	mapkey number(8) NOT NULL,
	PRIMARY KEY (mapkey)
);


CREATE TABLE COUPON
(
	CNO number NOT NULL,
	EVENT_TITLE nvarchar2(50) NOT NULL,
	EVENT_CONTENT nvarchar2(200),
	EVENT_START date NOT NULL,
	EVENT_END date NOT NULL,
	EVENT_SEND date DEFAULT SYSDATE NOT NULL,
	-- AUTH 권한 설정:기업,관리자
	ID nvarchar2(50) NOT NULL,
	AUTHORITY nvarchar2(20),
	PRIMARY KEY (CNO)
);


CREATE TABLE CustomerService
(
	NO number NOT NULL,
	-- 계정
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


CREATE TABLE C_KIND_LIST
(
	NO number NOT NULL,
	SPORT_CODE number NOT NULL,
	mapkey number(8) NOT NULL,
	PRIMARY KEY (NO)
);


CREATE TABLE healthMate
(
	NO number NOT NULL,
	title nvarchar2(20) NOT NULL,
	tag varchar2(50),
	location nvarchar2(20) NOT NULL,
	healthTime nvarchar2(10) DEFAULT '시간협의' NOT NULL,
	content nvarchar2(1000),
	postDate date DEFAULT SYSDATE,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	picture nvarchar2(100),
	PRIMARY KEY (NO)
);


CREATE TABLE H_MEMBER
(
	-- 계정
	ID nvarchar2(50) NOT NULL,
	password varchar2(50) NOT NULL,
	name nvarchar2(50) NOT NULL,
	email nvarchar2(50),
	Address nvarchar2(50),
	cellphone nvarchar2(13) NOT NULL,
	-- customer or enterprise or admin
	AUTHORITY varchar2(20),
	-- 회원가입페이지에서 등록X 운동메이트 등록 및 수정 페이지에서 데이터를 받을 예정입니다.
	MY_COMMENT nvarchar2(500) DEFAULT '잘 부탁드립니다.',
	inter_sports nvarchar2(100),
	picture nvarchar2(100),
	joindate date DEFAULT SYSDATE NOT NULL,
	NICK_NAME nvarchar2(20) NOT NULL,
<<<<<<< HEAD
=======
	DETAIL_ADDRESS nvarchar2(50),
>>>>>>> branch 'master' of https://github.com/gg4210/TeamProj.git
	PRIMARY KEY (ID)
);


CREATE TABLE MESSAGE_TABLE
(
	MNO number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	CONTENT nvarchar2(500) NOT NULL,
	RECEIVED_DATE date DEFAULT SYSDATE NOT NULL,
	name nvarchar2(50),
	picture nvarchar2(50),
	-- 1은 읽지않음
	-- 0은 읽음
	isRead number(1) DEFAULT 1 NOT NULL,
	PRIMARY KEY (MNO)
);


CREATE TABLE MY_MATE
(
	FNO number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	FRIEND_ID nvarchar2(50) NOT NULL,
	PRIMARY KEY (FNO)
);


CREATE TABLE Notification
(
	MNO number,
	CNO number,
	FNO number,
	-- 계정
	ID nvarchar2(50) NOT NULL
);


CREATE TABLE RegiCenter
(
	NO number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	startDate date DEFAULT SYSDATE NOT NULL,
	endDate date NOT NULL,
	mapkey number(8) NOT NULL,
	PRIMARY KEY (NO)
);


CREATE TABLE SCRAP
(
	NO number NOT NULL,
	scrap_date date DEFAULT SYSDATE NOT NULL,
	bbs_no number NOT NULL,
	member_id nvarchar2(20) NOT NULL,
<<<<<<< HEAD
=======
	-- 계정
	ID nvarchar2(50) NOT NULL,
>>>>>>> branch 'master' of https://github.com/gg4210/TeamProj.git
	PRIMARY KEY (NO)
);


CREATE TABLE SPORTS_KIND
(
	SPORT_CODE number NOT NULL,
	SPORT_NAME nvarchar2(50) NOT NULL,
	PRIMARY KEY (SPORT_CODE)
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


ALTER TABLE BookMark
	ADD FOREIGN KEY (mapkey)
	REFERENCES CENTER_INFO (mapkey)
;


ALTER TABLE CenterReview
	ADD FOREIGN KEY (mapkey)
	REFERENCES CENTER_INFO (mapkey)
;


ALTER TABLE Complexity
	ADD FOREIGN KEY (mapkey)
	REFERENCES CENTER_INFO (mapkey)
;


ALTER TABLE C_KIND_LIST
	ADD FOREIGN KEY (mapkey)
	REFERENCES CENTER_INFO (mapkey)
;


ALTER TABLE RegiCenter
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


ALTER TABLE C_KIND_LIST
	ADD FOREIGN KEY (SPORT_CODE)
	REFERENCES SPORTS_KIND (SPORT_CODE)
;



/* Comments */

COMMENT ON COLUMN AUTH_SECURITY.ID IS '계정';
COMMENT ON COLUMN BBS.ID IS '계정';
COMMENT ON COLUMN BBS_Comment.ID IS '계정';
COMMENT ON COLUMN BookMark.ID IS '계정';
COMMENT ON COLUMN CenterReview.rate IS '0~4 까지의 인덱스 저장
숫자가 적을수록 낮은 별점';
COMMENT ON COLUMN CenterReview.ID IS '계정';
COMMENT ON COLUMN CENTER_INFO.filename IS '수정할 때 사진 받을 경우 씀';
COMMENT ON COLUMN COUPON.ID IS 'AUTH 권한 설정:기업,관리자';
COMMENT ON COLUMN CustomerService.ID IS '계정';
COMMENT ON COLUMN healthMate.ID IS '계정';
COMMENT ON COLUMN H_MEMBER.ID IS '계정';
COMMENT ON COLUMN H_MEMBER.AUTHORITY IS 'customer or enterprise or admin';
COMMENT ON COLUMN H_MEMBER.MY_COMMENT IS '회원가입페이지에서 등록X 운동메이트 등록 및 수정 페이지에서 데이터를 받을 예정입니다.';
COMMENT ON COLUMN MESSAGE_TABLE.ID IS '계정';
COMMENT ON COLUMN MESSAGE_TABLE.isRead IS '1은 읽지않음
0은 읽음';
COMMENT ON COLUMN MY_MATE.ID IS '계정';
COMMENT ON COLUMN Notification.ID IS '계정';
COMMENT ON COLUMN RegiCenter.ID IS '계정';
COMMENT ON COLUMN SCRAP.ID IS '계정';


