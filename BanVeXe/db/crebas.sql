/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     5/16/2018 11:21:38 AM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BUS') and o.name = 'FK_BUS_BUS_TYPEO_TYPE_BUS')
alter table BUS
   drop constraint FK_BUS_BUS_TYPEO_TYPE_BUS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BUY_SERVICE') and o.name = 'FK_BUY_SERV_BUY_SERVI_TICKET')
alter table BUY_SERVICE
   drop constraint FK_BUY_SERV_BUY_SERVI_TICKET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BUY_SERVICE') and o.name = 'FK_BUY_SERV_BUY_SERVI_SERVICE')
alter table BUY_SERVICE
   drop constraint FK_BUY_SERV_BUY_SERVI_SERVICE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ROUTE') and o.name = 'FK_ROUTE_PK_ROUTE__PLACE')
alter table ROUTE
   drop constraint FK_ROUTE_PK_ROUTE__PLACE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ROUTE') and o.name = 'FK_ROUTE_ROUTE_PLA_PLACE')
alter table ROUTE
   drop constraint FK_ROUTE_ROUTE_PLA_PLACE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SHEDULE') and o.name = 'FK_SHEDULE_SHEDULE_B_BUS')
alter table SHEDULE
   drop constraint FK_SHEDULE_SHEDULE_B_BUS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SHEDULE') and o.name = 'FK_SHEDULE_SHEDULE_D_DRIVER')
alter table SHEDULE
   drop constraint FK_SHEDULE_SHEDULE_D_DRIVER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SHEDULE') and o.name = 'FK_SHEDULE_SHEDULE_R_ROUTE')
alter table SHEDULE
   drop constraint FK_SHEDULE_SHEDULE_R_ROUTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SHEDULE') and o.name = 'FK_SHEDULE_SHEDULE_T_TICKET')
alter table SHEDULE
   drop constraint FK_SHEDULE_SHEDULE_T_TICKET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TICKET') and o.name = 'FK_TICKET_TICKET_CU_CUSTOMER')
alter table TICKET
   drop constraint FK_TICKET_TICKET_CU_CUSTOMER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VARIABLE_SEAT') and o.name = 'FK_VARIABLE_SEAT_BUS_BUS')
alter table VARIABLE_SEAT
   drop constraint FK_VARIABLE_SEAT_BUS_BUS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BUS')
            and   name  = 'BUS_TYPEOFBUS_FK'
            and   indid > 0
            and   indid < 255)
   drop index BUS.BUS_TYPEOFBUS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BUS')
            and   type = 'U')
   drop table BUS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BUY_SERVICE')
            and   name  = 'BUY_SERVICE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index BUY_SERVICE.BUY_SERVICE2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BUY_SERVICE')
            and   name  = 'BUY_SERVICE_FK'
            and   indid > 0
            and   indid < 255)
   drop index BUY_SERVICE.BUY_SERVICE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BUY_SERVICE')
            and   type = 'U')
   drop table BUY_SERVICE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CUSTOMER')
            and   type = 'U')
   drop table CUSTOMER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DRIVER')
            and   type = 'U')
   drop table DRIVER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PLACE')
            and   type = 'U')
   drop table PLACE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ROUTE')
            and   name  = 'ROUTE_PLACE_FK'
            and   indid > 0
            and   indid < 255)
   drop index ROUTE.ROUTE_PLACE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ROUTE')
            and   name  = 'PK_ROUTE_PLACE_FK'
            and   indid > 0
            and   indid < 255)
   drop index ROUTE.PK_ROUTE_PLACE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ROUTE')
            and   type = 'U')
   drop table ROUTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SERVICE')
            and   type = 'U')
   drop table SERVICE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SHEDULE')
            and   name  = 'SHEDULE_BUS_FK'
            and   indid > 0
            and   indid < 255)
   drop index SHEDULE.SHEDULE_BUS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SHEDULE')
            and   name  = 'SHEDULE_ROUTE_FK'
            and   indid > 0
            and   indid < 255)
   drop index SHEDULE.SHEDULE_ROUTE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SHEDULE')
            and   name  = 'SHEDULE_TICKET_FK'
            and   indid > 0
            and   indid < 255)
   drop index SHEDULE.SHEDULE_TICKET_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SHEDULE')
            and   name  = 'SHEDULE_DRIVER_FK'
            and   indid > 0
            and   indid < 255)
   drop index SHEDULE.SHEDULE_DRIVER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SHEDULE')
            and   type = 'U')
   drop table SHEDULE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TICKET')
            and   name  = 'TICKET_CUSTOMER_FK'
            and   indid > 0
            and   indid < 255)
   drop index TICKET.TICKET_CUSTOMER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TICKET')
            and   type = 'U')
   drop table TICKET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TYPE_BUS')
            and   type = 'U')
   drop table TYPE_BUS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VARIABLE_SEAT')
            and   name  = 'SEAT_BUS_FK'
            and   indid > 0
            and   indid < 255)
   drop index VARIABLE_SEAT.SEAT_BUS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VARIABLE_SEAT')
            and   type = 'U')
   drop table VARIABLE_SEAT
go

/*==============================================================*/
/* Table: BUS                                                   */
/*==============================================================*/
create table BUS (
   ID_BUS               varchar(5)           not null,
   ID_TYPE              varchar(5)           null,
   constraint PK_BUS primary key nonclustered (ID_BUS)
)
go

/*==============================================================*/
/* Index: BUS_TYPEOFBUS_FK                                      */
/*==============================================================*/
create index BUS_TYPEOFBUS_FK on BUS (
ID_TYPE ASC
)
go

/*==============================================================*/
/* Table: BUY_SERVICE                                           */
/*==============================================================*/
create table BUY_SERVICE (
   ID_TICKET            nvarchar(10)         not null,
   ID_SERVICE           char(5)              not null,
   AMOUNT               int                  null,
   constraint PK_BUY_SERVICE primary key (ID_TICKET, ID_SERVICE)
)
go

/*==============================================================*/
/* Index: BUY_SERVICE_FK                                        */
/*==============================================================*/
create index BUY_SERVICE_FK on BUY_SERVICE (
ID_TICKET ASC
)
go

/*==============================================================*/
/* Index: BUY_SERVICE2_FK                                       */
/*==============================================================*/
create index BUY_SERVICE2_FK on BUY_SERVICE (
ID_SERVICE ASC
)
go

/*==============================================================*/
/* Table: CUSTOMER                                              */
/*==============================================================*/
create table CUSTOMER (
   ID_CUS               varchar(5)           not null,
   NAME                 nvarchar(30)         null,
   DATE                 datetime             null,
   PHONE                varchar(11)          null,
   ADDRESS              nvarchar(100)        null,
   constraint PK_CUSTOMER primary key nonclustered (ID_CUS)
)
go

/*==============================================================*/
/* Table: DRIVER                                                */
/*==============================================================*/
create table DRIVER (
   ID_DRIVER            varchar(5)           not null,
   FULLNAME             nvarchar(50)         null,
   constraint PK_DRIVER primary key nonclustered (ID_DRIVER)
)
go

/*==============================================================*/
/* Table: PLACE                                                 */
/*==============================================================*/
create table PLACE (
   ID_PLACE             int                  not null,
   PLACENAME            nvarchar(30)         null,
   constraint PK_PLACE primary key nonclustered (ID_PLACE)
)
go

/*==============================================================*/
/* Table: ROUTE                                                 */
/*==============================================================*/
create table ROUTE (
   ID_ROUTE             int                  not null,
   ID_PLACE             int                  null,
   PLA_ID_PLACE         int                  null,
   constraint PK_ROUTE primary key nonclustered (ID_ROUTE)
)
go

/*==============================================================*/
/* Index: PK_ROUTE_PLACE_FK                                     */
/*==============================================================*/
create index PK_ROUTE_PLACE_FK on ROUTE (
ID_PLACE ASC
)
go

/*==============================================================*/
/* Index: ROUTE_PLACE_FK                                        */
/*==============================================================*/
create index ROUTE_PLACE_FK on ROUTE (
PLA_ID_PLACE ASC
)
go

/*==============================================================*/
/* Table: SERVICE                                               */
/*==============================================================*/
create table SERVICE (
   ID_SERVICE           char(5)              not null,
   SERVICENAME          nvarchar(50)         null,
   EXPLANATION          nvarchar(300)        null,
   PRICE                numeric(15)          null,
   constraint PK_SERVICE primary key nonclustered (ID_SERVICE)
)
go

/*==============================================================*/
/* Table: SHEDULE                                               */
/*==============================================================*/
create table SHEDULE (
   ID_SHDULE            nvarchar(11)         not null,
   ID_TICKET            nvarchar(10)         null,
   ID_BUS               varchar(5)           null,
   ID_DRIVER            varchar(5)           null,
   ID_ROUTE             int                  null,
   START                datetime             null,
   "END"                datetime             null,
   constraint PK_SHEDULE primary key nonclustered (ID_SHDULE)
)
go

/*==============================================================*/
/* Index: SHEDULE_DRIVER_FK                                     */
/*==============================================================*/
create index SHEDULE_DRIVER_FK on SHEDULE (
ID_DRIVER ASC
)
go

/*==============================================================*/
/* Index: SHEDULE_TICKET_FK                                     */
/*==============================================================*/
create index SHEDULE_TICKET_FK on SHEDULE (
ID_TICKET ASC
)
go

/*==============================================================*/
/* Index: SHEDULE_ROUTE_FK                                      */
/*==============================================================*/
create index SHEDULE_ROUTE_FK on SHEDULE (
ID_ROUTE ASC
)
go

/*==============================================================*/
/* Index: SHEDULE_BUS_FK                                        */
/*==============================================================*/
create index SHEDULE_BUS_FK on SHEDULE (
ID_BUS ASC
)
go

/*==============================================================*/
/* Table: TICKET                                                */
/*==============================================================*/
create table TICKET (
   ID_TICKET            nvarchar(10)         not null,
   ID_CUS               varchar(5)           null,
   constraint PK_TICKET primary key nonclustered (ID_TICKET)
)
go

/*==============================================================*/
/* Index: TICKET_CUSTOMER_FK                                    */
/*==============================================================*/
create index TICKET_CUSTOMER_FK on TICKET (
ID_CUS ASC
)
go

/*==============================================================*/
/* Table: TYPE_BUS                                              */
/*==============================================================*/
create table TYPE_BUS (
   ID_TYPE              varchar(5)           not null,
   TYPENAME             nvarchar(20)         null,
   constraint PK_TYPE_BUS primary key nonclustered (ID_TYPE)
)
go

/*==============================================================*/
/* Table: VARIABLE_SEAT                                         */
/*==============================================================*/
create table VARIABLE_SEAT (
   ID_SEAT              varchar(10)          not null,
   ID_BUS               varchar(5)           null,
   constraint PK_VARIABLE_SEAT primary key nonclustered (ID_SEAT)
)
go

/*==============================================================*/
/* Index: SEAT_BUS_FK                                           */
/*==============================================================*/
create index SEAT_BUS_FK on VARIABLE_SEAT (
ID_BUS ASC
)
go

alter table BUS
   add constraint FK_BUS_BUS_TYPEO_TYPE_BUS foreign key (ID_TYPE)
      references TYPE_BUS (ID_TYPE)
go

alter table BUY_SERVICE
   add constraint FK_BUY_SERV_BUY_SERVI_TICKET foreign key (ID_TICKET)
      references TICKET (ID_TICKET)
go

alter table BUY_SERVICE
   add constraint FK_BUY_SERV_BUY_SERVI_SERVICE foreign key (ID_SERVICE)
      references SERVICE (ID_SERVICE)
go

alter table ROUTE
   add constraint FK_ROUTE_PK_ROUTE__PLACE foreign key (ID_PLACE)
      references PLACE (ID_PLACE)
go

alter table ROUTE
   add constraint FK_ROUTE_ROUTE_PLA_PLACE foreign key (PLA_ID_PLACE)
      references PLACE (ID_PLACE)
go

alter table SHEDULE
   add constraint FK_SHEDULE_SHEDULE_B_BUS foreign key (ID_BUS)
      references BUS (ID_BUS)
go

alter table SHEDULE
   add constraint FK_SHEDULE_SHEDULE_D_DRIVER foreign key (ID_DRIVER)
      references DRIVER (ID_DRIVER)
go

alter table SHEDULE
   add constraint FK_SHEDULE_SHEDULE_R_ROUTE foreign key (ID_ROUTE)
      references ROUTE (ID_ROUTE)
go

alter table SHEDULE
   add constraint FK_SHEDULE_SHEDULE_T_TICKET foreign key (ID_TICKET)
      references TICKET (ID_TICKET)
go

alter table TICKET
   add constraint FK_TICKET_TICKET_CU_CUSTOMER foreign key (ID_CUS)
      references CUSTOMER (ID_CUS)
go

alter table VARIABLE_SEAT
   add constraint FK_VARIABLE_SEAT_BUS_BUS foreign key (ID_BUS)
      references BUS (ID_BUS)
go

