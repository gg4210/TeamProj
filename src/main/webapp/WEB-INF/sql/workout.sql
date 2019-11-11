
/* Drop Tables */
/*
DROP TABLE AUTH_SECURITY CASCADE CONSTRAINTS;
DROP TABLE BBS_Comment CASCADE CONSTRAINTS;
DROP TABLE SCRAP CASCADE CONSTRAINTS;
DROP TABLE BBS CASCADE CONSTRAINTS;
DROP TABLE BmarkedCenter CASCADE CONSTRAINTS;
DROP TABLE RegisteredCenter CASCADE CONSTRAINTS;
DROP TABLE Complexity CASCADE CONSTRAINTS;
DROP TABLE COUPON CASCADE CONSTRAINTS;
DROP TABLE CustomerService CASCADE CONSTRAINTS;
DROP TABLE GYM_MEMBER_LIST CASCADE CONSTRAINTS;
DROP TABLE GYM_LIST CASCADE CONSTRAINTS;
DROP TABLE FAVORITEX CASCADE CONSTRAINTS;
DROP TABLE MESSAGE_TABLE CASCADE CONSTRAINTS;
DROP TABLE healthMate CASCADE CONSTRAINTS;
DROP TABLE MATE_GROUP CASCADE CONSTRAINTS;
DROP TABLE MY_MATE CASCADE CONSTRAINTS;
DROP TABLE searchBBSReview CASCADE CONSTRAINTS;
DROP TABLE H_MEMBER CASCADE CONSTRAINTS;
DROP TABLE SearchBBS CASCADE CONSTRAINTS;
*/



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
	no number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	title nvarchar2(50) NOT NULL,
	content nvarchar2(2000) NOT NULL,
	postDate date DEFAULT SYSDATE NOT NULL,
	BBS_RECOMMEND number DEFAULT 0 NOT NULL,
	filename nvarchar2(50),
	BBS_CATE nvarchar2(50),
	PRIMARY KEY (no)
);


CREATE TABLE BBS_Comment
(
	cno number NOT NULL,
	no number NOT NULL,
	-- 계정
	COMMENT_WRITER_ID nvarchar2(50) NOT NULL,
	lineComment nvarchar2(50) NOT NULL,
	cpostDate date DEFAULT SYSDATE NOT NULL,
	STEP number(1) DEFAULT 0 NOT NULL,
	COMMENT_ID_TAG nvarchar2(50),
	PRIMARY KEY (cno)
);


CREATE TABLE BmarkedCenter
(
	BMARKED_NO number NOT NULL,
	No number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	-- foreign키를 경유해서 가져올 예정
	mapkey number(8) NOT NULL,
	PRIMARY KEY (BMARKED_NO)
);


CREATE TABLE Complexity
(
	No number NOT NULL,
	sno number NOT NULL,
	mapkey number(8) NOT NULL,
	maxNumber number,
	CountNum number DEFAULT 0 NOT NULL,
	PRIMARY KEY (No)
);


CREATE TABLE COUPON
(
	EVENT_NO number NOT NULL,
	EVENT_TITLE nvarchar2(50) NOT NULL,
	EVENT_CONTENT nvarchar2(200),
	EVENT_START date NOT NULL,
	EVENT_END date NOT NULL,
	EVENT_SEND date DEFAULT SYSDATE NOT NULL,
	-- AUTH 권한 설정:기업,관리자
	CENTER_ID nvarchar2(50) NOT NULL,
	AUTHORITY nvarchar2(20),
	MEMBER_NO number NOT NULL,
	PRIMARY KEY (EVENT_NO)
);


CREATE TABLE CustomerService
(
	CSERVICE_NO number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	Menu nvarchar2(20) NOT NULL,
	category nvarchar2(20) NOT NULL,
	title nvarchar2(30) NOT NULL,
	content nvarchar2(1000) NOT NULL,
	postDate date DEFAULT SYSDATE NOT NULL,
	attachedFile varchar2(50),
	reply nvarchar2(1000),
	PRIMARY KEY (CSERVICE_NO)
);


CREATE TABLE FAVORITEX
(
	FAV_CODE number NOT NULL,
	FAV_NAME nvarchar2(50) NOT NULL,
	PRIMARY KEY (FAV_CODE)
);


CREATE TABLE GYM_LIST
(
	GY_CODE number NOT NULL,
	GY_NAME nvarchar2(50) NOT NULL,
	GY_ADDRESS nvarchar2(100) NOT NULL,
	FAV_CODE number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	PRIMARY KEY (GY_CODE)
);


CREATE TABLE GYM_MEMBER_LIST
(
	MEMBER_NO number NOT NULL,
	GY_CODE number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	PRIMARY KEY (MEMBER_NO)
);


CREATE TABLE healthMate
(
	HEALTHMATE_NO number NOT NULL,
	title nvarchar2(20) NOT NULL,
	tag varchar2(10),
	location nvarchar2(20) NOT NULL,
	healthTime nvarchar2(10) DEFAULT '시간협의' NOT NULL,
	content nvarchar2(1000),
	postDate date DEFAULT SYSDATE,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	picture nvarchar2(100),
	name nvarchar2(50),
	PRIMARY KEY (HEALTHMATE_NO)
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
	PRIMARY KEY (ID)
);


CREATE TABLE MATE_GROUP
(
	GROUP_ROW number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (GROUP_ROW)
);


CREATE TABLE MESSAGE_TABLE
(
	MESSAGE_NO number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	CONTENT nvarchar2(500) NOT NULL,
	RECEIVED_DATE date DEFAULT SYSDATE NOT NULL,
	HEALTHMATE_NO number NOT NULL,
	READ_STATUS date DEFAULT SYSDATE,
	name nvarchar2(50),
	picture nvarchar2(50),
	PRIMARY KEY (MESSAGE_NO)
);


CREATE TABLE MY_MATE
(
	-- 계정
	ID nvarchar2(50) NOT NULL,
	NICKNAME nvarchar2(50) NOT NULL,
	MATE_DATE date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (ID)
);


CREATE TABLE RegisteredCenter
(
	REG_No number NOT NULL,
	No number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	startDate date DEFAULT SYSDATE NOT NULL,
	endDate date NOT NULL,
	-- foreign키를 경유해서 가져올 예정
	mapkey number(8) NOT NULL,
	PRIMARY KEY (REG_No)
);


CREATE TABLE SCRAP
(
	SC_NO number NOT NULL,
	scrap_date date DEFAULT SYSDATE NOT NULL,
	bbs_no number NOT NULL,
	member_id nvarchar2(20) NOT NULL,
	bbs_title nvarchar2(50) NOT NULL,
	bbs_tag nvarchar2(20) NOT NULL,
	bbs_content nvarchar2(1000) NOT NULL,
	PRIMARY KEY (SC_NO)
);


CREATE TABLE SearchBBS
(
	sno number NOT NULL,
	mapkey number(8) NOT NULL,
	operatingTime nvarchar2(12) NOT NULL,
	-- 운영중이면 1
	-- 운영중 아니면 0
	isRunning number(1) DEFAULT 0 NOT NULL,
	-- 수정할 때 사진 받을 경우 씀
	filename nvarchar2(50),
	PRIMARY KEY (sno)
);


CREATE TABLE searchBBSReview
(
	-- 리뷰 프라이머리키
	rno number NOT NULL,
	-- 0~4 까지의 인덱스 저장
	-- 숫자가 적을수록 낮은 별점
	rate number(1) NOT NULL,
	rPostDate date DEFAULT SYSDATE NOT NULL,
	rComment nvarchar2(500) NOT NULL,
	sno number NOT NULL,
	-- 계정
	ID nvarchar2(50) NOT NULL,
	PRIMARY KEY (rno)
);



/* Create Foreign Keys */

ALTER TABLE BBS_Comment
	ADD FOREIGN KEY (no)
	REFERENCES BBS (no)
;


ALTER TABLE SCRAP
	ADD FOREIGN KEY (bbs_no)
	REFERENCES BBS (no)
;


ALTER TABLE BmarkedCenter
	ADD FOREIGN KEY (No)
	REFERENCES Complexity (No)
;


ALTER TABLE RegisteredCenter
	ADD FOREIGN KEY (No)
	REFERENCES Complexity (No)
;


ALTER TABLE GYM_LIST
	ADD FOREIGN KEY (FAV_CODE)
	REFERENCES FAVORITEX (FAV_CODE)
;


ALTER TABLE GYM_MEMBER_LIST
	ADD FOREIGN KEY (GY_CODE)
	REFERENCES GYM_LIST (GY_CODE)
;


ALTER TABLE COUPON
	ADD FOREIGN KEY (MEMBER_NO)
	REFERENCES GYM_MEMBER_LIST (MEMBER_NO)
;


ALTER TABLE MESSAGE_TABLE
	ADD FOREIGN KEY (HEALTHMATE_NO)
	REFERENCES healthMate (HEALTHMATE_NO)
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
	ADD FOREIGN KEY (COMMENT_WRITER_ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE BmarkedCenter
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE COUPON
	ADD FOREIGN KEY (CENTER_ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE CustomerService
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE GYM_LIST
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE GYM_MEMBER_LIST
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


ALTER TABLE RegisteredCenter
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE searchBBSReview
	ADD FOREIGN KEY (ID)
	REFERENCES H_MEMBER (ID)
;


ALTER TABLE MATE_GROUP
	ADD FOREIGN KEY (ID)
	REFERENCES MY_MATE (ID)
;


ALTER TABLE Complexity
	ADD FOREIGN KEY (sno)
	REFERENCES SearchBBS (sno)
;


ALTER TABLE searchBBSReview
	ADD FOREIGN KEY (sno)
	REFERENCES SearchBBS (sno)
;



/* Comments */

COMMENT ON COLUMN AUTH_SECURITY.ID IS '계정';
COMMENT ON COLUMN BBS.ID IS '계정';
COMMENT ON COLUMN BBS_Comment.COMMENT_WRITER_ID IS '계정';
COMMENT ON COLUMN BmarkedCenter.ID IS '계정';
COMMENT ON COLUMN BmarkedCenter.mapkey IS 'foreign키를 경유해서 가져올 예정';
COMMENT ON COLUMN COUPON.CENTER_ID IS 'AUTH 권한 설정:기업,관리자';
COMMENT ON COLUMN CustomerService.ID IS '계정';
COMMENT ON COLUMN GYM_LIST.ID IS '계정';
COMMENT ON COLUMN GYM_MEMBER_LIST.ID IS '계정';
COMMENT ON COLUMN healthMate.ID IS '계정';
COMMENT ON COLUMN H_MEMBER.ID IS '계정';
COMMENT ON COLUMN H_MEMBER.AUTHORITY IS 'customer or enterprise or admin';
COMMENT ON COLUMN H_MEMBER.MY_COMMENT IS '회원가입페이지에서 등록X 운동메이트 등록 및 수정 페이지에서 데이터를 받을 예정입니다.';
COMMENT ON COLUMN MATE_GROUP.ID IS '계정';
COMMENT ON COLUMN MESSAGE_TABLE.ID IS '계정';
COMMENT ON COLUMN MY_MATE.ID IS '계정';
COMMENT ON COLUMN RegisteredCenter.ID IS '계정';
COMMENT ON COLUMN RegisteredCenter.mapkey IS 'foreign키를 경유해서 가져올 예정';
COMMENT ON COLUMN SearchBBS.isRunning IS '운영중이면 1
운영중 아니면 0';
COMMENT ON COLUMN SearchBBS.filename IS '수정할 때 사진 받을 경우 씀';
COMMENT ON COLUMN searchBBSReview.rno IS '리뷰 프라이머리키';
COMMENT ON COLUMN searchBBSReview.rate IS '0~4 까지의 인덱스 저장
숫자가 적을수록 낮은 별점';
COMMENT ON COLUMN searchBBSReview.ID IS '계정';



