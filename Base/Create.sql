/******************************************************************************/
/***               Generated by IBExpert 05/01/2022 20:15:54                ***/
/******************************************************************************/



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/


CREATE GENERATOR GEN_ABASTECIMENTOS_ID;

CREATE TABLE ABASTECIMENTOS (
    ID          INTEGER NOT NULL,
    DATA        DATE,
    HORA        TIME,
    ID_BOMBA    INTEGER,
    QTD_LITROS  FLOAT
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE ABASTECIMENTOS ADD CONSTRAINT PK_ABASTECIMENTOS PRIMARY KEY (ID);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE ABASTECIMENTOS ADD CONSTRAINT FK_ABASTECIMENTOS_1 FOREIGN KEY (ID_BOMBA) REFERENCES BOMBAS (ID);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: ABASTECIMENTOS_BI */
CREATE OR ALTER TRIGGER ABASTECIMENTOS_BI FOR ABASTECIMENTOS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_abastecimentos_id,1);
end
^


SET TERM ; ^



/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/

/******************************************************************************/
/***               Generated by IBExpert 05/01/2022 20:16:58                ***/
/******************************************************************************/



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE BOMBAS (
    ID         INTEGER NOT NULL,
    NOME       VARCHAR(100),
    ID_TANQUE  INTEGER,
    STATUS     INTEGER,
    IMPOSTO    FLOAT,
    VLR_LTS    FLOAT
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE BOMBAS ADD CONSTRAINT PK_BOMBAS PRIMARY KEY (ID);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE BOMBAS ADD CONSTRAINT FK_BOMBAS_1 FOREIGN KEY (ID_TANQUE) REFERENCES TANQUES (ID);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/
/******************************************************************************/
/***               Generated by IBExpert 05/01/2022 20:17:10                ***/
/******************************************************************************/



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/


CREATE GENERATOR GEN_TANQUES_ID;

CREATE TABLE TANQUES (
    ID                INTEGER NOT NULL,
    NOME              VARCHAR(100),
    LITROS_RECEBIDOS  FLOAT,
    COMBUSTIVEL       VARCHAR(100),
    DATA_RECEB        DATE,
    STATUS            INTEGER
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE TANQUES ADD CONSTRAINT PK_TANQUES PRIMARY KEY (ID);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: TANQUES_BI */
CREATE OR ALTER TRIGGER TANQUES_BI FOR TANQUES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_tanques_id,1);
end
^


SET TERM ; ^



/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/
