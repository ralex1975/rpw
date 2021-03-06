ALTER TABLE [dbo].[BreedCross] DROP CONSTRAINT FK_BreedCross_Breeds
GO

ALTER TABLE [dbo].[SheepGoat] DROP CONSTRAINT FK_SheepGoat_Breeds
GO

ALTER TABLE [dbo].[StandDiameter] DROP CONSTRAINT FK_StandDiameter_Breeds
GO

ALTER TABLE [dbo].[StandFluff] DROP CONSTRAINT FK_StandFluff_Breeds
GO

ALTER TABLE [dbo].[StandGrease] DROP CONSTRAINT FK_StandFleece_Breeds
GO

ALTER TABLE [dbo].[StandLength] DROP CONSTRAINT FK_StandLength_Breeds
GO

ALTER TABLE [dbo].[StandWeight] DROP CONSTRAINT FK_StandWeight_Breeds
GO

ALTER TABLE [dbo].[SelIndxCompClass] DROP CONSTRAINT FK_SelIndxCompClass_CopmClass
GO

ALTER TABLE [dbo].[Oblasts] DROP CONSTRAINT FK_Oblasts_Countries
GO

ALTER TABLE [dbo].[InhertDefect] DROP CONSTRAINT FK_InhertDefect_Defects
GO

ALTER TABLE [dbo].[SheepGoat] DROP CONSTRAINT FK_SheepGoat_Disposition
GO

ALTER TABLE [dbo].[Persons] DROP CONSTRAINT FK_Persons_Interests
GO

ALTER TABLE [dbo].[Appraisal] DROP CONSTRAINT FK_Appraisal_WlGrsColour
GO

ALTER TABLE [dbo].[Rayons] DROP CONSTRAINT FK_Rayons_Oblasts
GO

ALTER TABLE [dbo].[TownVill] DROP CONSTRAINT FK_TownVill_Rayons
GO

ALTER TABLE [dbo].[Persons] DROP CONSTRAINT FK_Persons_TownVill
GO

ALTER TABLE [dbo].[Farms] DROP CONSTRAINT FK_Farms_Persons
GO

ALTER TABLE [dbo].[Farms] DROP CONSTRAINT FK_Farms_Persons1
GO

ALTER TABLE [dbo].[SheepGoat] DROP CONSTRAINT FK_SheepGoat_Farms
GO

ALTER TABLE [dbo].[SheepGoat] DROP CONSTRAINT FK_SheepGoat_Farms2
GO

ALTER TABLE [dbo].[TransFarm] DROP CONSTRAINT FK_TransFarm_Farms
GO

ALTER TABLE [dbo].[Appraisal] DROP CONSTRAINT FK_Appraisal_SheepGoat
GO

ALTER TABLE [dbo].[BreedCross] DROP CONSTRAINT FK_BreedCross_SheepGoat
GO

ALTER TABLE [dbo].[Mate] DROP CONSTRAINT FK_Mate_SheepGoat
GO

ALTER TABLE [dbo].[Mate] DROP CONSTRAINT FK_Mate_SheepGoat1
GO

ALTER TABLE [dbo].[Offspring] DROP CONSTRAINT FK_Offspring_SheepGoat
GO

ALTER TABLE [dbo].[SelIndxCompClass] DROP CONSTRAINT FK_SelIndxCompClass_SheepGoat
GO

ALTER TABLE [dbo].[SheepGoat] DROP CONSTRAINT FK_SheepGoat_SheepGoat
GO

ALTER TABLE [dbo].[SheepGoat] DROP CONSTRAINT FK_SheepGoat_SheepGoat1
GO

ALTER TABLE [dbo].[TransFarm] DROP CONSTRAINT FK_TransferFarm_SheepGoat
GO

ALTER TABLE [dbo].[Weight7Mon] DROP CONSTRAINT FK_Weight7Mon_SheepGoat
GO

ALTER TABLE [dbo].[WeightWean] DROP CONSTRAINT FK_WeightWean_SheepGoat
GO

ALTER TABLE [dbo].[WeightWoolAnnl] DROP CONSTRAINT FK_WeightWool_SheepGoat
GO

ALTER TABLE [dbo].[InhertDefect] DROP CONSTRAINT FK_InhertDefect_Appraisal
GO

ALTER TABLE [dbo].[LambKid] DROP CONSTRAINT FK_LambKid_Mate
GO

ALTER TABLE [dbo].[Offspring] DROP CONSTRAINT FK_Offspring_LambKid
GO

/****** Object:  Trigger dbo.UpdateCountry    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[UpdateCountry]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[UpdateCountry]
GO

/****** Object:  Trigger dbo.DeleteCountry    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[DeleteCountry]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[DeleteCountry]
GO

/****** Object:  Stored Procedure dbo.spSelect_SumGenEvalV_IDFarm    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_SumGenEvalV_IDFarm]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_SumGenEvalV_IDFarm]
GO

/****** Object:  Stored Procedure dbo.spInsert_Offspring    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_Offspring]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_Offspring]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_CertEweShegoat_Offspring    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_CertEweShegoat_Offspring]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_CertEweShegoat_Offspring]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumGenEval_FarmSireOffspring_Temp    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumGenEval_FarmSireOffspring_Temp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumGenEval_FarmSireOffspring_Temp]
GO

/****** Object:  Stored Procedure dbo.spUpdate_Offspring_IDDamCycleNoLK    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_Offspring_IDDamCycleNoLK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_Offspring_IDDamCycleNoLK]
GO

/****** Object:  Stored Procedure dbo.spDelete_InhertDefect_IDShGIDDefect    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_InhertDefect_IDShGIDDefect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_InhertDefect_IDShGIDDefect]
GO

/****** Object:  Stored Procedure dbo.spInsert_LambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_LambKid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_LambKid]
GO

/****** Object:  Stored Procedure dbo.spSelect_InhertDefect_IDShG    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_InhertDefect_IDShG]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_InhertDefect_IDShG]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_CertEweShegoat_LambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_CertEweShegoat_LambKid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_CertEweShegoat_LambKid]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_LambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_LambKid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_LambKid]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_LambKidWeaned    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_LambKidWeaned]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_LambKidWeaned]
GO

/****** Object:  Stored Procedure dbo.spUpdate_InhertDefect_IDShGIDDefect    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_InhertDefect_IDShGIDDefect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_InhertDefect_IDShGIDDefect]
GO

/****** Object:  Stored Procedure dbo.spUpdate_LambKid_IDDamCycle    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_LambKid_IDDamCycle]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_LambKid_IDDamCycle]
GO

/****** Object:  Stored Procedure dbo.spCount_BreedCross_IDShG    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spCount_BreedCross_IDShG]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spCount_BreedCross_IDShG]
GO

/****** Object:  Stored Procedure dbo.spDelete_BreedCross_IDShGIDBreed    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_BreedCross_IDShGIDBreed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_BreedCross_IDShGIDBreed]
GO

/****** Object:  Stored Procedure dbo.spDelete_SelIndxCompClass_IDSheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_SelIndxCompClass_IDSheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_SelIndxCompClass_IDSheepGoat]
GO

/****** Object:  Stored Procedure dbo.spDelete_TransFarm_IDShGDateTrans    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_TransFarm_IDShGDateTrans]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_TransFarm_IDShGDateTrans]
GO

/****** Object:  Stored Procedure dbo.spDelete_Weight7Mon_IDLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_Weight7Mon_IDLambKid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_Weight7Mon_IDLambKid]
GO

/****** Object:  Stored Procedure dbo.spInsert_Appraisal    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_Appraisal]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_Appraisal]
GO

/****** Object:  Stored Procedure dbo.spInsert_BreedCross    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_BreedCross]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_BreedCross]
GO

/****** Object:  Stored Procedure dbo.spInsert_Mate    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_Mate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_Mate]
GO

/****** Object:  Stored Procedure dbo.spInsert_SelIndxCompClass    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_SelIndxCompClass]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_SelIndxCompClass]
GO

/****** Object:  Stored Procedure dbo.spInsert_TransFarm    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_TransFarm]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_TransFarm]
GO

/****** Object:  Stored Procedure dbo.spInsert_Weight7Mon    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_Weight7Mon]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_Weight7Mon]
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightWean    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_WeightWean]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_WeightWean]
GO

/****** Object:  Stored Procedure dbo.spSelect_BreedCross_IDShG    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_BreedCross_IDShG]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_BreedCross_IDShG]
GO

/****** Object:  Stored Procedure dbo.spSelect_BreedCross_IDShGIDBreed    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_BreedCross_IDShGIDBreed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_BreedCross_IDShGIDBreed]
GO

/****** Object:  Stored Procedure dbo.spSelect_SelIndxCompClass_IDSheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_SelIndxCompClass_IDSheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_SelIndxCompClass_IDSheepGoat]
GO

/****** Object:  Stored Procedure dbo.spSelect_TransFarm_IDShG    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_TransFarm_IDShG]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_TransFarm_IDShG]
GO

/****** Object:  Stored Procedure dbo.spSelect_TransFarm_IDShGDateTrans    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_TransFarm_IDShGDateTrans]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_TransFarm_IDShGDateTrans]
GO

/****** Object:  Stored Procedure dbo.spSelect_Weight7Mon_IDLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Weight7Mon_IDLambKid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Weight7Mon_IDLambKid]
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightWean_IDLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WeightWean_IDLambKid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WeightWean_IDLambKid]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_Cert_WeightWoolAnnl    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_Cert_WeightWoolAnnl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_Cert_WeightWoolAnnl]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_CertEweShegoat_WeightWoolAnnlOffspring    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_CertEweShegoat_WeightWoolAnnlOffspring]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_CertEweShegoat_WeightWoolAnnlOffspring]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_Mate    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_Mate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_Mate]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_Weight7Mon    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_Weight7Mon]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_Weight7Mon]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_WeightAnnl    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_WeightAnnl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_WeightAnnl]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_WeightWean    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_WeightWean]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_WeightWean]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_WeightWoolAnnl    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_WeightWoolAnnl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_WeightWoolAnnl]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_WoolAnnl    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_WoolAnnl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_WoolAnnl]
GO

/****** Object:  Stored Procedure dbo.spUpdate_Appraisal_IDSheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_Appraisal_IDSheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_Appraisal_IDSheepGoat]
GO

/****** Object:  Stored Procedure dbo.spUpdate_BreedCross_IDShGIDBreed    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_BreedCross_IDShGIDBreed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_BreedCross_IDShGIDBreed]
GO

/****** Object:  Stored Procedure dbo.spUpdate_Mate_IDDamCycle    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_Mate_IDDamCycle]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_Mate_IDDamCycle]
GO

/****** Object:  Stored Procedure dbo.spUpdate_SelIndxCompClass_IDSheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_SelIndxCompClass_IDSheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_SelIndxCompClass_IDSheepGoat]
GO

/****** Object:  Stored Procedure dbo.spUpdate_Weight7Mon_IDLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_Weight7Mon_IDLambKid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_Weight7Mon_IDLambKid]
GO

/****** Object:  Stored Procedure dbo.spUpdate_WeightWean_IDLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_WeightWean_IDLambKid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_WeightWean_IDLambKid]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_Cert_SheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_Cert_SheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_Cert_SheepGoat]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_Cert_SheepGoatDam    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_Cert_SheepGoatDam]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_Cert_SheepGoatDam]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_Cert_SheepGoatSire    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_Cert_SheepGoatSire]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_Cert_SheepGoatSire]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_Cert_SheepGoatSireSire    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_Cert_SheepGoatSireSire]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_Cert_SheepGoatSireSire]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_SheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_SheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_SheepGoat]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_SheepGoatDisp    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_SheepGoatDisp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_SheepGoatDisp]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumPerform_SheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumPerform_SheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumPerform_SheepGoat]
GO

/****** Object:  Stored Procedure dbo.spSelect_Farms_IDFarm    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Farms_IDFarm]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Farms_IDFarm]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_Farms    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumFlockManagm_Farms]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumFlockManagm_Farms]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumPerform_Farms    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumPerform_Farms]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumPerform_Farms]
GO

/****** Object:  Stored Procedure dbo.spInsertTownVill    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsertTownVill]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsertTownVill]
GO

/****** Object:  Stored Procedure dbo.spRayons    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spRayons]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRayons]
GO

/****** Object:  Stored Procedure dbo.spSelect_OffspringV_IDDamCycleNoLK    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_OffspringV_IDDamCycleNoLK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_OffspringV_IDDamCycleNoLK]
GO

/****** Object:  Stored Procedure dbo.spSelect_StandDiameter_IDBreed    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_StandDiameter_IDBreed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_StandDiameter_IDBreed]
GO

/****** Object:  Stored Procedure dbo.spSelect_StandFluff_IDBreed    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_StandFluff_IDBreed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_StandFluff_IDBreed]
GO

/****** Object:  Stored Procedure dbo.spSelect_StandGrease_IDBreed    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_StandGrease_IDBreed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_StandGrease_IDBreed]
GO

/****** Object:  Stored Procedure dbo.spSelect_StandLength_IDBreed    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_StandLength_IDBreed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_StandLength_IDBreed]
GO

/****** Object:  Stored Procedure dbo.spSelect_StandWeight_IDBreed    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_StandWeight_IDBreed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_StandWeight_IDBreed]
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightWool    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_WeightWool]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_WeightWool]
GO

/****** Object:  Stored Procedure dbo.spSelect_BodySize    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_BodySize]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_BodySize]
GO

/****** Object:  Stored Procedure dbo.spSelect_BodyType    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_BodyType]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_BodyType]
GO

/****** Object:  Stored Procedure dbo.spSelect_BreedDen    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_BreedDen]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_BreedDen]
GO

/****** Object:  Stored Procedure dbo.spSelect_BreedNum    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_BreedNum]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_BreedNum]
GO

/****** Object:  Stored Procedure dbo.spSelect_Constitutn    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Constitutn]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Constitutn]
GO

/****** Object:  Stored Procedure dbo.spSelect_Crimpins    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Crimpins]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Crimpins]
GO

/****** Object:  Stored Procedure dbo.spSelect_Defects    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Defects]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Defects]
GO

/****** Object:  Stored Procedure dbo.spSelect_Disposition    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Disposition]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Disposition]
GO

/****** Object:  Stored Procedure dbo.spSelect_Evens    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Evens]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Evens]
GO

/****** Object:  Stored Procedure dbo.spSelect_FatTail    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_FatTail]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_FatTail]
GO

/****** Object:  Stored Procedure dbo.spSelect_Liveability    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Liveability]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Liveability]
GO

/****** Object:  Stored Procedure dbo.spSelect_Mass    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Mass]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Mass]
GO

/****** Object:  Stored Procedure dbo.spSelect_Quality    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Quality]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Quality]
GO

/****** Object:  Stored Procedure dbo.spSelect_Sex    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Sex]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Sex]
GO

/****** Object:  Stored Procedure dbo.spSelect_SexOffspring    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_SexOffspring]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_SexOffspring]
GO

/****** Object:  Stored Procedure dbo.spSelect_Strength    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Strength]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Strength]
GO

/****** Object:  Stored Procedure dbo.spSelect_TypeBirth    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_TypeBirth]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_TypeBirth]
GO

/****** Object:  Stored Procedure dbo.spSelect_WlGrsColour    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WlGrsColour]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WlGrsColour]
GO

/****** Object:  Stored Procedure dbo.spUpdate_Cert    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_Cert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_Cert]
GO

/****** Object:  Stored Procedure dbo.spAlter_SumFlockManagm_SheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spAlter_SumFlockManagm_SheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spAlter_SumFlockManagm_SheepGoat]
GO

/****** Object:  Stored Procedure dbo.spAlter_SumFlockManagm_SheepGoatDisp    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spAlter_SumFlockManagm_SheepGoatDisp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spAlter_SumFlockManagm_SheepGoatDisp]
GO

/****** Object:  Stored Procedure dbo.spAlter_SumPerform_SheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spAlter_SumPerform_SheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spAlter_SumPerform_SheepGoat]
GO

/****** Object:  Stored Procedure dbo.spDelete_Appraisal_IDSheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_Appraisal_IDSheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_Appraisal_IDSheepGoat]
GO

/****** Object:  Stored Procedure dbo.spDelete_LambKid_IDDamCycle    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_LambKid_IDDamCycle]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_LambKid_IDDamCycle]
GO

/****** Object:  Stored Procedure dbo.spDelete_Mate_IDDamCycle    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_Mate_IDDamCycle]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_Mate_IDDamCycle]
GO

/****** Object:  Stored Procedure dbo.spDelete_Offspring_IDDamCycleNoLK    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_Offspring_IDDamCycleNoLK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_Offspring_IDDamCycleNoLK]
GO

/****** Object:  Stored Procedure dbo.spDelete_SheepGoat_IDShG    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_SheepGoat_IDShG]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_SheepGoat_IDShG]
GO

/****** Object:  Stored Procedure dbo.spDelete_Weight1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_Weight1Yr_IDSheepGoat_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_Weight1Yr_IDSheepGoat_Prev]
GO

/****** Object:  Stored Procedure dbo.spDelete_WeightAnnual_IDSheepGoatDateAnnl_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_WeightAnnual_IDSheepGoatDateAnnl_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_WeightAnnual_IDSheepGoatDateAnnl_Prev]
GO

/****** Object:  Stored Procedure dbo.spDelete_WeightAnnual_IDSheepGoatDateAnnl_Prev0    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_WeightAnnual_IDSheepGoatDateAnnl_Prev0]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_WeightAnnual_IDSheepGoatDateAnnl_Prev0]
GO

/****** Object:  Stored Procedure dbo.spDelete_WeightWean_IDLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_WeightWean_IDLambKid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_WeightWean_IDLambKid]
GO

/****** Object:  Stored Procedure dbo.spDelete_WeightWoolAnnl_IDSheepGoatAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_WeightWoolAnnl_IDSheepGoatAge]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_WeightWoolAnnl_IDSheepGoatAge]
GO

/****** Object:  Stored Procedure dbo.spDelete_Wool1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_Wool1Yr_IDSheepGoat_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_Wool1Yr_IDSheepGoat_Prev]
GO

/****** Object:  Stored Procedure dbo.spDelete_WoolAnnual_IDSheepGoatDateShearAnnl_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_WoolAnnual_IDSheepGoatDateShearAnnl_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_WoolAnnual_IDSheepGoatDateShearAnnl_Prev]
GO

/****** Object:  Stored Procedure dbo.spDelete_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDelete_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDelete_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0]
GO

/****** Object:  Stored Procedure dbo.spDropTable_SumFlockManagm    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDropTable_SumFlockManagm]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDropTable_SumFlockManagm]
GO

/****** Object:  Stored Procedure dbo.spDropTable_SumPerform    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spDropTable_SumPerform]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDropTable_SumPerform]
GO

/****** Object:  Stored Procedure dbo.spInsert_InhertDefect    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_InhertDefect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_InhertDefect]
GO

/****** Object:  Stored Procedure dbo.spInsert_InhertDefectV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_InhertDefectV]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_InhertDefectV]
GO

/****** Object:  Stored Procedure dbo.spInsert_MateLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_MateLambKid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_MateLambKid]
GO

/****** Object:  Stored Procedure dbo.spInsert_SheepGoat_Fill    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_SheepGoat_Fill]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_SheepGoat_Fill]
GO

/****** Object:  Stored Procedure dbo.spInsert_SheepGoat_Object    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_SheepGoat_Object]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_SheepGoat_Object]
GO

/****** Object:  Stored Procedure dbo.spInsert_Weight1Yr_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_Weight1Yr_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_Weight1Yr_Prev]
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightAnnual_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_WeightAnnual_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_WeightAnnual_Prev]
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightAnnual_Prev0    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_WeightAnnual_Prev0]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_WeightAnnual_Prev0]
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightWoolAnnl    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_WeightWoolAnnl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_WeightWoolAnnl]
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightWoolAnnual    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_WeightWoolAnnual]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_WeightWoolAnnual]
GO

/****** Object:  Stored Procedure dbo.spInsert_Wool1Yr_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_Wool1Yr_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_Wool1Yr_Prev]
GO

/****** Object:  Stored Procedure dbo.spInsert_WoolAnnual_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_WoolAnnual_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_WoolAnnual_Prev]
GO

/****** Object:  Stored Procedure dbo.spInsert_WoolAnnual_Prev0    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spInsert_WoolAnnual_Prev0]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsert_WoolAnnual_Prev0]
GO

/****** Object:  Stored Procedure dbo.spPedigree    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spPedigree]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spPedigree]
GO

/****** Object:  Stored Procedure dbo.spSelect_Appraisal_IDSheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Appraisal_IDSheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Appraisal_IDSheepGoat]
GO

/****** Object:  Stored Procedure dbo.spSelect_BodyConstitutn    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_BodyConstitutn]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_BodyConstitutn]
GO

/****** Object:  Stored Procedure dbo.spSelect_Breeds_ID_B    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Breeds_ID_B]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Breeds_ID_B]
GO

/****** Object:  Stored Procedure dbo.spSelect_Breeds_IDBreed    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Breeds_IDBreed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Breeds_IDBreed]
GO

/****** Object:  Stored Procedure dbo.spSelect_ContrlParam    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_ContrlParam]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_ContrlParam]
GO

/****** Object:  Stored Procedure dbo.spSelect_InhertDefectV_IDShGIDDefect    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_InhertDefectV_IDShGIDDefect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_InhertDefectV_IDShGIDDefect]
GO

/****** Object:  Stored Procedure dbo.spSelect_LambKid_IDDam    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_LambKid_IDDam]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_LambKid_IDDam]
GO

/****** Object:  Stored Procedure dbo.spSelect_LambKid_IDDamCycle    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_LambKid_IDDamCycle]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_LambKid_IDDamCycle]
GO

/****** Object:  Stored Procedure dbo.spSelect_Mate_IDDam    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Mate_IDDam]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Mate_IDDam]
GO

/****** Object:  Stored Procedure dbo.spSelect_Mate_IDDamCycle    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Mate_IDDamCycle]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Mate_IDDamCycle]
GO

/****** Object:  Stored Procedure dbo.spSelect_Offspring_IDDamCycle_Kyes    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Offspring_IDDamCycle_Kyes]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Offspring_IDDamCycle_Kyes]
GO

/****** Object:  Stored Procedure dbo.spSelect_Offspring_IDDamCycleNoLK    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Offspring_IDDamCycleNoLK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Offspring_IDDamCycleNoLK]
GO

/****** Object:  Stored Procedure dbo.spSelect_StandFatTail_IDBreed    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_StandFatTail_IDBreed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_StandFatTail_IDBreed]
GO

/****** Object:  Stored Procedure dbo.spSelect_Weight1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Weight1Yr_IDSheepGoat_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Weight1Yr_IDSheepGoat_Prev]
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightAnnual_IDSheepGoat_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WeightAnnual_IDSheepGoat_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WeightAnnual_IDSheepGoat_Prev]
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightAnnual_IDSheepGoat_Prev0    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WeightAnnual_IDSheepGoat_Prev0]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WeightAnnual_IDSheepGoat_Prev0]
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightAnnual_IDSheepGoatDateAnnl_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WeightAnnual_IDSheepGoatDateAnnl_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WeightAnnual_IDSheepGoatDateAnnl_Prev]
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightAnnual_IDSheepGoatDateAnnl_Prev0    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WeightAnnual_IDSheepGoatDateAnnl_Prev0]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WeightAnnual_IDSheepGoatDateAnnl_Prev0]
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightWoolAnnl_IDSheepGoat_Keys    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WeightWoolAnnl_IDSheepGoat_Keys]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WeightWoolAnnl_IDSheepGoat_Keys]
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightWoolAnnl_IDSheepGoatAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WeightWoolAnnl_IDSheepGoatAge]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WeightWoolAnnl_IDSheepGoatAge]
GO

/****** Object:  Stored Procedure dbo.spSelect_Wool1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_Wool1Yr_IDSheepGoat_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_Wool1Yr_IDSheepGoat_Prev]
GO

/****** Object:  Stored Procedure dbo.spSelect_WoolAnnual_IDSheepGoat_Prev0    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WoolAnnual_IDSheepGoat_Prev0]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WoolAnnual_IDSheepGoat_Prev0]
GO

/****** Object:  Stored Procedure dbo.spSelect_WoolAnnual_IDSheepGoatDateShearAnnl_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WoolAnnual_IDSheepGoatDateShearAnnl_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WoolAnnual_IDSheepGoatDateShearAnnl_Prev]
GO

/****** Object:  Stored Procedure dbo.spSelect_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelect_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelect_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0]
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumGenEval_FarmWtBirth    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSelectInto_SumGenEval_FarmWtBirth]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSelectInto_SumGenEval_FarmWtBirth]
GO

/****** Object:  Stored Procedure dbo.spSheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSheepGoat]
GO

/****** Object:  Stored Procedure dbo.spSheepGoat_IDShG    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spSheepGoat_IDShG]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spSheepGoat_IDShG]
GO

/****** Object:  Stored Procedure dbo.spUpdate_SheepGoat_IDShG    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_SheepGoat_IDShG]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_SheepGoat_IDShG]
GO

/****** Object:  Stored Procedure dbo.spUpdate_SumFlockManagm_SheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_SumFlockManagm_SheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_SumFlockManagm_SheepGoat]
GO

/****** Object:  Stored Procedure dbo.spUpdate_SumFlockManagm_SheepGoatDisp    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_SumFlockManagm_SheepGoatDisp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_SumFlockManagm_SheepGoatDisp]
GO

/****** Object:  Stored Procedure dbo.spUpdate_SumPerform_SheepGoat    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_SumPerform_SheepGoat]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_SumPerform_SheepGoat]
GO

/****** Object:  Stored Procedure dbo.spUpdate_Weight1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_Weight1Yr_IDSheepGoat_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_Weight1Yr_IDSheepGoat_Prev]
GO

/****** Object:  Stored Procedure dbo.spUpdate_WeightAnnual_IDSheepGoatDateAnnl_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_WeightAnnual_IDSheepGoatDateAnnl_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_WeightAnnual_IDSheepGoatDateAnnl_Prev]
GO

/****** Object:  Stored Procedure dbo.spUpdate_WeightAnnual_IDSheepGoatDateAnnl_Prev0    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_WeightAnnual_IDSheepGoatDateAnnl_Prev0]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_WeightAnnual_IDSheepGoatDateAnnl_Prev0]
GO

/****** Object:  Stored Procedure dbo.spUpdate_WeightWoolAnnl_IDSheepGoatAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_WeightWoolAnnl_IDSheepGoatAge]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_WeightWoolAnnl_IDSheepGoatAge]
GO

/****** Object:  Stored Procedure dbo.spUpdate_Wool1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_Wool1Yr_IDSheepGoat_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_Wool1Yr_IDSheepGoat_Prev]
GO

/****** Object:  Stored Procedure dbo.spUpdate_WoolAnnual_IDSheepGoatDateShearAnnl_Prev    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_WoolAnnual_IDSheepGoatDateShearAnnl_Prev]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_WoolAnnual_IDSheepGoatDateShearAnnl_Prev]
GO

/****** Object:  Stored Procedure dbo.spUpdate_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[spUpdate_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdate_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0]
GO

/****** Object:  View dbo.SumFlockManagmV_Product    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Product]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Product]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned1st    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned1st]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned1st]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned2nd]
GO

/****** Object:  View dbo.SumGenEvalV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV]
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared1st    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornBeared1st]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornBeared1st]
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornBeared2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornBeared2nd]
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed1st    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornExposed1st]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornExposed1st]
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornExposed2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornExposed2nd]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_MatrFemale    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_MatrFemale]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_MatrFemale]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_MatrMale    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_MatrMale]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_MatrMale]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_Yng    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_Yng]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_Yng]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned1st_WeightWeanCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned1st_WeightWeanCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned1st_WeightWeanCount]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned2nd_WeightWeanCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned2nd_WeightWeanCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned2nd_WeightWeanCount]
GO

/****** Object:  View dbo.SumGenEvalV_WeightWoolBV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_WeightWoolBV]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_WeightWoolBV]
GO

/****** Object:  View dbo.SumGenEvalV_Wt7MonBV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_Wt7MonBV]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_Wt7MonBV]
GO

/****** Object:  View dbo.SumGenEvalV_WtBirthBV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_WtBirthBV]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_WtBirthBV]
GO

/****** Object:  View dbo.SumGenEvalV_WtWeanBV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_WtWeanBV]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_WtWeanBV]
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared1st_OffspringCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornBeared1st_OffspringCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornBeared1st_OffspringCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared2nd_OffspringCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornBeared2nd_OffspringCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornBeared2nd_OffspringCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed1st_OffspringCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornExposed1st_OffspringCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornExposed1st_OffspringCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed2nd_OffspringCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornExposed2nd_OffspringCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornExposed2nd_OffspringCount]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_All    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_All]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_All]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned1st_WeightWean    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned1st_WeightWean]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned1st_WeightWean]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned2nd_WeightWean    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned2nd_WeightWean]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned2nd_WeightWean]
GO

/****** Object:  View dbo.SumFlockManagmV_Wt7Mon1st    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Wt7Mon1st]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Wt7Mon1st]
GO

/****** Object:  View dbo.SumFlockManagmV_Wt7Mon2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Wt7Mon2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Wt7Mon2nd]
GO

/****** Object:  View dbo.SumFlockManagmV_WtBirth1st    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_WtBirth1st]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_WtBirth1st]
GO

/****** Object:  View dbo.SumFlockManagmV_WtBirth2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_WtBirth2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_WtBirth2nd]
GO

/****** Object:  View dbo.SumFlockManagmV_WtWean1st    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_WtWean1st]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_WtWean1st]
GO

/****** Object:  View dbo.SumFlockManagmV_WtWean2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_WtWean2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_WtWean2nd]
GO

/****** Object:  View dbo.SumGenEvalV_WeightWoolFarm    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_WeightWoolFarm]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_WeightWoolFarm]
GO

/****** Object:  View dbo.SumGenEvalV_WeightWoolSire    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_WeightWoolSire]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_WeightWoolSire]
GO

/****** Object:  View dbo.SumGenEvalV_Wt7MonFarm    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_Wt7MonFarm]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_Wt7MonFarm]
GO

/****** Object:  View dbo.SumGenEvalV_Wt7MonSire    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_Wt7MonSire]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_Wt7MonSire]
GO

/****** Object:  View dbo.SumGenEvalV_WtBirthFarm    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_WtBirthFarm]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_WtBirthFarm]
GO

/****** Object:  View dbo.SumGenEvalV_WtBirthSire    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_WtBirthSire]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_WtBirthSire]
GO

/****** Object:  View dbo.SumGenEvalV_WtWeanFarm    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_WtWeanFarm]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_WtWeanFarm]
GO

/****** Object:  View dbo.SumGenEvalV_WtWeanSire    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_WtWeanSire]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_WtWeanSire]
GO

/****** Object:  View dbo.CertV_Perf    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_Perf]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_Perf]
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared1st_Offspring    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornBeared1st_Offspring]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornBeared1st_Offspring]
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared2nd_Offspring    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornBeared2nd_Offspring]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornBeared2nd_Offspring]
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed1st_Offspring    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornExposed1st_Offspring]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornExposed1st_Offspring]
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed2nd_Offspring    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornExposed2nd_Offspring]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornExposed2nd_Offspring]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_Avail    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_Avail]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_Avail]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned_WeightWean    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned_WeightWean]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned_WeightWean]
GO

/****** Object:  View dbo.SumFlockManagmV_Wt1Yr1st_Select    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Wt1Yr1st_Select]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Wt1Yr1st_Select]
GO

/****** Object:  View dbo.SumFlockManagmV_Wt1Yr2nd_Select    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Wt1Yr2nd_Select]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Wt1Yr2nd_Select]
GO

/****** Object:  View dbo.SumFlockManagmV_Wt7Mon1st_Select    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Wt7Mon1st_Select]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Wt7Mon1st_Select]
GO

/****** Object:  View dbo.SumFlockManagmV_Wt7Mon2nd_Select    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Wt7Mon2nd_Select]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Wt7Mon2nd_Select]
GO

/****** Object:  View dbo.SumFlockManagmV_WtBirth1st_Select    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_WtBirth1st_Select]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_WtBirth1st_Select]
GO

/****** Object:  View dbo.SumFlockManagmV_WtBirth2nd_Select    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_WtBirth2nd_Select]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_WtBirth2nd_Select]
GO

/****** Object:  View dbo.SumFlockManagmV_WtWean1st_Select    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_WtWean1st_Select]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_WtWean1st_Select]
GO

/****** Object:  View dbo.SumFlockManagmV_WtWean2nd_Select    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_WtWean2nd_Select]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_WtWean2nd_Select]
GO

/****** Object:  View dbo.SumGenEvalV_FarmSireOffspring    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumGenEvalV_FarmSireOffspring]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumGenEvalV_FarmSireOffspring]
GO

/****** Object:  View dbo.SumPerformV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumPerformV]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumPerformV]
GO

/****** Object:  View dbo.CertEweShegoatV_Reproduct_Offspring    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Reproduct_Offspring]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Reproduct_Offspring]
GO

/****** Object:  View dbo.CertV_Dam    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_Dam]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_Dam]
GO

/****** Object:  View dbo.CertV_DamsDam    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_DamsDam]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_DamsDam]
GO

/****** Object:  View dbo.CertV_DamsSire    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_DamsSire]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_DamsSire]
GO

/****** Object:  View dbo.CertV_Sire    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_Sire]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_Sire]
GO

/****** Object:  View dbo.CertV_SiresDam    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_SiresDam]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_SiresDam]
GO

/****** Object:  View dbo.CertV_SiresSire    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_SiresSire]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_SiresSire]
GO

/****** Object:  View dbo.InhertDefectV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[InhertDefectV]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[InhertDefectV]
GO

/****** Object:  View dbo.SumPerformV_WeightWoolAnnl    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumPerformV_WeightWoolAnnl]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumPerformV_WeightWoolAnnl]
GO

/****** Object:  View dbo.CertEweShegoatV_Reproduct_MateLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Reproduct_MateLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Reproduct_MateLambKid]
GO

/****** Object:  View dbo.CertEweShegoatV_Reproduct_OffspringWeightWool1Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Reproduct_OffspringWeightWool1Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Reproduct_OffspringWeightWool1Yr]
GO

/****** Object:  View dbo.CertV_Dam_MaxWeightWool    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_Dam_MaxWeightWool]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_Dam_MaxWeightWool]
GO

/****** Object:  View dbo.CertV_DamsDam_MaxWeightWool    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_DamsDam_MaxWeightWool]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_DamsDam_MaxWeightWool]
GO

/****** Object:  View dbo.CertV_DamsSire_MaxWeightWool    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_DamsSire_MaxWeightWool]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_DamsSire_MaxWeightWool]
GO

/****** Object:  View dbo.CertV_Sire_MaxWeightWool    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_Sire_MaxWeightWool]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_Sire_MaxWeightWool]
GO

/****** Object:  View dbo.CertV_SiresDam_MaxWeightWool    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_SiresDam_MaxWeightWool]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_SiresDam_MaxWeightWool]
GO

/****** Object:  View dbo.CertV_SiresSire_MaxWeightWool    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_SiresSire_MaxWeightWool]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_SiresSire_MaxWeightWool]
GO

/****** Object:  View dbo.SumPerformV_MaxAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumPerformV_MaxAge]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumPerformV_MaxAge]
GO

/****** Object:  View dbo.CertEweShegoatV_Temp    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Temp]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Temp]
GO

/****** Object:  View dbo.CertV_IndividInfo    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_IndividInfo]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_IndividInfo]
GO

/****** Object:  View dbo.SumFlockManagmV_Farms    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Farms]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Farms]
GO

/****** Object:  View dbo.SumPerformV_Farms    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumPerformV_Farms]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumPerformV_Farms]
GO

/****** Object:  View dbo.CertEweShegoatV_Fetility    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Fetility]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Fetility]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All2YrCountPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All2YrCountPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All2YrCountPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All3YrCountPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All3YrCountPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All3YrCountPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All4YrCountPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All4YrCountPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All4YrCountPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All5YrCountPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All5YrCountPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All5YrCountPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All6YrCountPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All6YrCountPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All6YrCountPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad2YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad2YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad2YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad3YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad3YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad3YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad4YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad4YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad4YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad5YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad5YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad5YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad6YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad6YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad6YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing2YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing2YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing2YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing3YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing3YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing3YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing4YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing4YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing4YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing5YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing5YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing5YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing6YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing6YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing6YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip2YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip2YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip2YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip3YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip3YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip3YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip4YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip4YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip4YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip5YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip5YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip5YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip6YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip6YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip6YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin2YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin2YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin2YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin3YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin3YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin3YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin4YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin4YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin4YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin5YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin5YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin5YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin6YrPercent    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin6YrPercent]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin6YrPercent]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_Union    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_Union]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_Union]
GO

/****** Object:  View dbo.CertV_PerfAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_PerfAge]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_PerfAge]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All2YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All2YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All2YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All3YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All3YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All3YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All4YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All4YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All4YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All5YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All5YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All5YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All6YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All6YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All6YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad2YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad2YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad2YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad3YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad3YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad3YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad4YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad4YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad4YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad5YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad5YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad5YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad6YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad6YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad6YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing2YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing2YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing2YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing3YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing3YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing3YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing4YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing4YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing4YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing5YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing5YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing5YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing6YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing6YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing6YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip2YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip2YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip2YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip3YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip3YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip3YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip4YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip4YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip4YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip5YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip5YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip5YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip6YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip6YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip6YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin2YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin2YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin2YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin3YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin3YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin3YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin4YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin4YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin4YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin5YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin5YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin5YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin6YrCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin6YrCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin6YrCount]
GO

/****** Object:  View dbo.SumFlockManagmV_Concept1st    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Concept1st]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Concept1st]
GO

/****** Object:  View dbo.SumFlockManagmV_Concept2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Concept2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Concept2nd]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All01    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All01]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All01]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All02    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All02]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All02]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All03    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All03]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All03]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All04    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All04]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All04]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All05    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All05]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All05]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All06    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All06]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All06]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All07    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All07]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All07]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All08    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All08]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All08]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All09    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All09]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All09]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All10    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All10]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All10]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All11    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All11]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All11]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All12    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All12]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All12]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll01    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll01]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll01]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll02    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll02]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll02]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll03    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll03]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll03]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll04    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll04]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll04]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll05    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll05]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll05]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll06    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll06]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll06]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll07    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll07]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll07]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll08    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll08]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll08]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll09    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll09]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll09]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll10    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll10]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll10]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll11    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll11]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll11]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll12    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll12]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll12]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll01    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll01]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll01]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll02    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll02]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll02]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll03    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll03]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll03]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll04    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll04]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll04]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll05    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll05]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll05]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll06    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll06]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll06]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll07    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll07]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll07]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll08    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll08]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll08]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll09    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll09]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll09]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll10    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll10]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll10]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll11    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll11]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll11]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll12    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll12]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll12]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll01    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll01]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll01]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll02    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll02]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll02]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll03    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll03]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll03]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll04    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll04]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll04]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll05    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll05]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll05]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll06    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll06]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll06]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll07    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll07]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll07]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll08    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll08]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll08]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll09    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll09]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll09]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll10    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll10]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll10]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll11    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll11]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll11]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll12    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll12]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll12]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_Union    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_Union]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_Union]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease1Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Grease1Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Grease1Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease2Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Grease2Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Grease2Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease3Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Grease3Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Grease3Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease4Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Grease4Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Grease4Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease5Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Grease5Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Grease5Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease6Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Grease6Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Grease6Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight1Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Weight1Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Weight1Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight2Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Weight2Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Weight2Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight3Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Weight3Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Weight3Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight4Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Weight4Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Weight4Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight5Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Weight5Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Weight5Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight6Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_Weight6Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_Weight6Yr]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_2nd]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_3rd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_3rd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_3rd]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_4th    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_4th]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_4th]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_5th    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_5th]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_5th]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_6th    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_6th]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_6th]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_7th    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_7th]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_7th]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_8th    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_8th]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_8th]
GO

/****** Object:  View dbo.CertV_PerfAge_All1Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_PerfAge_All1Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_PerfAge_All1Yr]
GO

/****** Object:  View dbo.CertV_PerfAge_All2Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_PerfAge_All2Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_PerfAge_All2Yr]
GO

/****** Object:  View dbo.CertV_PerfAge_All3Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_PerfAge_All3Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_PerfAge_All3Yr]
GO

/****** Object:  View dbo.CertV_PerfAge_All4Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_PerfAge_All4Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_PerfAge_All4Yr]
GO

/****** Object:  View dbo.CertV_PerfAge_All5Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_PerfAge_All5Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_PerfAge_All5Yr]
GO

/****** Object:  View dbo.CertV_PerfAge_All6Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_PerfAge_All6Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_PerfAge_All6Yr]
GO

/****** Object:  View dbo.CertV_WeightWoolAnnl    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_WeightWoolAnnl]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_WeightWoolAnnl]
GO

/****** Object:  View dbo.OffspringV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[OffspringV]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[OffspringV]
GO

/****** Object:  View dbo.SumFlockManagmV_Age1st    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Age1st]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Age1st]
GO

/****** Object:  View dbo.SumFlockManagmV_Age2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Age2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Age2nd]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All2Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All2Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All2Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All3Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All3Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All3Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All4Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All4Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All4Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All5Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All5Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All5Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All6Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_All6Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_All6Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad2Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad2Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad2Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad3Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad3Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad3Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad4Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad4Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad4Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad5Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad5Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad5Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad6Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Quad6Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Quad6Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing2Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing2Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing2Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing3Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing3Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing3Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing4Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing4Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing4Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing5Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing5Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing5Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing6Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Sing6Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Sing6Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip2Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip2Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip2Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip3Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip3Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip3Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip4Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip4Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip4Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip5Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip5Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip5Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip6Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Trip6Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Trip6Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin2Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin2Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin2Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin3Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin3Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin3Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin4Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin4Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin4Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin5Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin5Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin5Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin6Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_Twin6Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_Twin6Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared1st_LambKidCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornBeared1st_LambKidCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornBeared1st_LambKidCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared2nd_LambKidCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornBeared2nd_LambKidCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornBeared2nd_LambKidCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed1st_MateCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornExposed1st_MateCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornExposed1st_MateCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed2nd_MateCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornExposed2nd_MateCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornExposed2nd_MateCount]
GO

/****** Object:  View dbo.SumFlockManagmV_Concept1st_LambKidCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Concept1st_LambKidCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Concept1st_LambKidCount]
GO

/****** Object:  View dbo.SumFlockManagmV_Concept1st_MateCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Concept1st_MateCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Concept1st_MateCount]
GO

/****** Object:  View dbo.SumFlockManagmV_Concept2nd_LambKidCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Concept2nd_LambKidCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Concept2nd_LambKidCount]
GO

/****** Object:  View dbo.SumFlockManagmV_Concept2nd_MateCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Concept2nd_MateCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Concept2nd_MateCount]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_All]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_All]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAll]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAll]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAll]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAll]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAll]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAll]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_2nd]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_3rd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_3rd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_3rd]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_4th    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_4th]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_4th]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_5th    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_5th]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_5th]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_6th    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_6th]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_6th]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_7th    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_7th]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_7th]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_8th    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_8th]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_8th]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_GreaseAge6Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_GreaseAge6Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_GreaseAge6Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_GreaseGroup    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_GreaseGroup]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_GreaseGroup]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_WeightAge6Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_WeightAge6Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_WeightAge6Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_WeightGroup    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_WeightGroup]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_WeightGroup]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_IDAgeSex    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_IDAgeSex]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_IDAgeSex]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_WeightAnnl    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_WeightAnnl]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_WeightAnnl]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_WoolAnnl    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_WoolAnnl]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_WoolAnnl]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned1st_LambKidCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned1st_LambKidCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned1st_LambKidCount]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned2nd_LambKidCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned2nd_LambKidCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned2nd_LambKidCount]
GO

/****** Object:  View dbo.SumPerformV_AgeSexName    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumPerformV_AgeSexName]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumPerformV_AgeSexName]
GO

/****** Object:  View dbo.CertEweShegoatV_BornLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_BornLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_BornLambKid]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_2ndCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_2ndCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_2ndCycleLambKid]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_3rdCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_3rdCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_3rdCycleLambKid]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_4thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_4thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_4thCycleLambKid]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_5thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_5thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_5thCycleLambKid]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_6thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_6thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_6thCycleLambKid]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_7thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_7thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_7thCycleLambKid]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_8thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_8thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_8thCycleLambKid]
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_9thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertEweShegoatV_Inter_9thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertEweShegoatV_Inter_9thCycleLambKid]
GO

/****** Object:  View dbo.CertV_IndividInfo_Temp    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_IndividInfo_Temp]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_IndividInfo_Temp]
GO

/****** Object:  View dbo.CertV_MaxAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_MaxAge]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_MaxAge]
GO

/****** Object:  View dbo.CertV_PerfAge_All    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_PerfAge_All]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_PerfAge_All]
GO

/****** Object:  View dbo.CertV_WeightWool1Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CertV_WeightWool1Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[CertV_WeightWool1Yr]
GO

/****** Object:  View dbo.LambKidV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[LambKidV]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[LambKidV]
GO

/****** Object:  View dbo.MateV    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[MateV]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[MateV]
GO

/****** Object:  View dbo.SumFlockManagmV_Age1st_Days    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Age1st_Days]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Age1st_Days]
GO

/****** Object:  View dbo.SumFlockManagmV_Age2nd_Days    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Age2nd_Days]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Age2nd_Days]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_AllAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_AllAge]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_AllAge]
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_AllCount    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BearDistr_AllCount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BearDistr_AllCount]
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared1st_LambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornBeared1st_LambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornBeared1st_LambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared2nd_LambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornBeared2nd_LambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornBeared2nd_LambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed1st_Mate    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornExposed1st_Mate]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornExposed1st_Mate]
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed2nd_Mate    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_BornExposed2nd_Mate]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_BornExposed2nd_Mate]
GO

/****** Object:  View dbo.SumFlockManagmV_Concept1st_LambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Concept1st_LambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Concept1st_LambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Concept1st_Mate    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Concept1st_Mate]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Concept1st_Mate]
GO

/****** Object:  View dbo.SumFlockManagmV_Concept2nd_LambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Concept2nd_LambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Concept2nd_LambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Concept2nd_Mate    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Concept2nd_Mate]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Concept2nd_Mate]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_Avail    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_Avail]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_Avail]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAvail    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleAvail]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleAvail]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleTotal    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrFemaleTotal]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrFemaleTotal]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAvail    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleAvail]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleAvail]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleTotal    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_MatrMaleTotal]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_MatrMaleTotal]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_Total    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_Total]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_Total]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAvail    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngAvail]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngAvail]
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngTotal    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Disp_YngTotal]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Disp_YngTotal]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_2ndCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_2ndCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_2ndCycleLambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_3rdCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_3rdCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_3rdCycleLambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_4thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_4thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_4thCycleLambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_5thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_5thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_5thCycleLambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_6thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_6thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_6thCycleLambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_7thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_7thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_7thCycleLambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_8thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_8thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_8thCycleLambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_9thCycleLambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Inter_9thCycleLambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Inter_9thCycleLambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_GreaseAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_GreaseAge]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_GreaseAge]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_WeightAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfAge_WeightAge]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfAge_WeightAge]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_Weight1Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_Weight1Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_Weight1Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_WeightMaxAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_WeightMaxAge]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_WeightMaxAge]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_Wool1Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_Wool1Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_Wool1Yr]
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_WoolMaxAge    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_PerfSexAge_WoolMaxAge]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_PerfSexAge_WoolMaxAge]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned1st_LambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned1st_LambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned1st_LambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned2nd_LambKid    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Weaned2nd_LambKid]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Weaned2nd_LambKid]
GO

/****** Object:  View dbo.SumFlockManagmV_Wool    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Wool]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Wool]
GO

/****** Object:  View dbo.SumFlockManagmV_Wt1Yr1st    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Wt1Yr1st]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Wt1Yr1st]
GO

/****** Object:  View dbo.SumFlockManagmV_Wt1Yr2nd    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumFlockManagmV_Wt1Yr2nd]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumFlockManagmV_Wt1Yr2nd]
GO

/****** Object:  View dbo.SumPerformV_AgeSexCode    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumPerformV_AgeSexCode]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumPerformV_AgeSexCode]
GO

/****** Object:  View dbo.SumPerformV_AgeSexCode_Option    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumPerformV_AgeSexCode_Option]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumPerformV_AgeSexCode_Option]
GO

/****** Object:  View dbo.SumPerformV_BreedCross    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumPerformV_BreedCross]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumPerformV_BreedCross]
GO

/****** Object:  View dbo.SumPerformV_BreedCross_Option    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumPerformV_BreedCross_Option]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumPerformV_BreedCross_Option]
GO

/****** Object:  View dbo.SumPerformV_WeightWool1Yr    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SumPerformV_WeightWool1Yr]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[SumPerformV_WeightWool1Yr]
GO

/****** Object:  Table [dbo].[Offspring]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Offspring]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Offspring]
GO

/****** Object:  Table [dbo].[InhertDefect]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[InhertDefect]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[InhertDefect]
GO

/****** Object:  Table [dbo].[LambKid]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[LambKid]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LambKid]
GO

/****** Object:  Table [dbo].[Appraisal]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Appraisal]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Appraisal]
GO

/****** Object:  Table [dbo].[BreedCross]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[BreedCross]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BreedCross]
GO

/****** Object:  Table [dbo].[Mate]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Mate]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Mate]
GO

/****** Object:  Table [dbo].[SelIndxCompClass]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SelIndxCompClass]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SelIndxCompClass]
GO

/****** Object:  Table [dbo].[TransFarm]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[TransFarm]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TransFarm]
GO

/****** Object:  Table [dbo].[Weight7Mon]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Weight7Mon]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Weight7Mon]
GO

/****** Object:  Table [dbo].[WeightWean]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[WeightWean]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[WeightWean]
GO

/****** Object:  Table [dbo].[WeightWoolAnnl]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[WeightWoolAnnl]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[WeightWoolAnnl]
GO

/****** Object:  Table [dbo].[SheepGoat]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SheepGoat]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SheepGoat]
GO

/****** Object:  Table [dbo].[Farms]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Farms]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Farms]
GO

/****** Object:  Table [dbo].[Persons]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Persons]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Persons]
GO

/****** Object:  Table [dbo].[TownVill]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[TownVill]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TownVill]
GO

/****** Object:  Table [dbo].[Rayons]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Rayons]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Rayons]
GO

/****** Object:  Table [dbo].[Oblasts]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Oblasts]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Oblasts]
GO

/****** Object:  Table [dbo].[StandDiameter]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[StandDiameter]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[StandDiameter]
GO

/****** Object:  Table [dbo].[StandFluff]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[StandFluff]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[StandFluff]
GO

/****** Object:  Table [dbo].[StandGrease]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[StandGrease]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[StandGrease]
GO

/****** Object:  Table [dbo].[StandLength]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[StandLength]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[StandLength]
GO

/****** Object:  Table [dbo].[StandWeight]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[StandWeight]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[StandWeight]
GO

/****** Object:  Table [dbo].[AgeSex]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[AgeSex]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[AgeSex]
GO

/****** Object:  Table [dbo].[BodySize]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[BodySize]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BodySize]
GO

/****** Object:  Table [dbo].[BodyType]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[BodyType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BodyType]
GO

/****** Object:  Table [dbo].[BreedDen]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[BreedDen]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BreedDen]
GO

/****** Object:  Table [dbo].[BreedNum]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[BreedNum]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BreedNum]
GO

/****** Object:  Table [dbo].[Breeds]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Breeds]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Breeds]
GO

/****** Object:  Table [dbo].[Cert_WeightWoolAnnlAge]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Cert_WeightWoolAnnlAge]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Cert_WeightWoolAnnlAge]
GO

/****** Object:  Table [dbo].[Constitutn]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Constitutn]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Constitutn]
GO

/****** Object:  Table [dbo].[ContrlParam]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[ContrlParam]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ContrlParam]
GO

/****** Object:  Table [dbo].[CopmClass]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[CopmClass]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CopmClass]
GO

/****** Object:  Table [dbo].[Countries]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Countries]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Countries]
GO

/****** Object:  Table [dbo].[Crimpins]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Crimpins]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Crimpins]
GO

/****** Object:  Table [dbo].[Defects]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Defects]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Defects]
GO

/****** Object:  Table [dbo].[Disposition]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Disposition]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Disposition]
GO

/****** Object:  Table [dbo].[Evens]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Evens]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Evens]
GO

/****** Object:  Table [dbo].[FatTail]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[FatTail]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[FatTail]
GO

/****** Object:  Table [dbo].[Interests]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Interests]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Interests]
GO

/****** Object:  Table [dbo].[Liveability]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Liveability]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Liveability]
GO

/****** Object:  Table [dbo].[Mass]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Mass]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Mass]
GO

/****** Object:  Table [dbo].[MateLambKid_Prev]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[MateLambKid_Prev]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MateLambKid_Prev]
GO

/****** Object:  Table [dbo].[Offspring_Prev]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Offspring_Prev]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Offspring_Prev]
GO

/****** Object:  Table [dbo].[Quality]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Quality]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Quality]
GO

/****** Object:  Table [dbo].[Results]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Results]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Results]
GO

/****** Object:  Table [dbo].[Sex]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Sex]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Sex]
GO

/****** Object:  Table [dbo].[SexOffspring]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[SexOffspring]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SexOffspring]
GO

/****** Object:  Table [dbo].[Strength]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Strength]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Strength]
GO

/****** Object:  Table [dbo].[Temp_SumFlockManagm_Weight1Yr]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Temp_SumFlockManagm_Weight1Yr]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Temp_SumFlockManagm_Weight1Yr]
GO

/****** Object:  Table [dbo].[Temp_SumFlockManagm_Wool]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Temp_SumFlockManagm_Wool]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Temp_SumFlockManagm_Wool]
GO

/****** Object:  Table [dbo].[TypeBirth]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[TypeBirth]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TypeBirth]
GO

/****** Object:  Table [dbo].[Weight]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Weight]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Weight]
GO

/****** Object:  Table [dbo].[Weight1Yr_Prev]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Weight1Yr_Prev]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Weight1Yr_Prev]
GO

/****** Object:  Table [dbo].[WeightAnnual_Prev]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[WeightAnnual_Prev]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[WeightAnnual_Prev]
GO

/****** Object:  Table [dbo].[WeightAnnual_Prev0]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[WeightAnnual_Prev0]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[WeightAnnual_Prev0]
GO

/****** Object:  Table [dbo].[WeightWool_Prev]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[WeightWool_Prev]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[WeightWool_Prev]
GO

/****** Object:  Table [dbo].[WeightWoolAnnual_Prev]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[WeightWoolAnnual_Prev]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[WeightWoolAnnual_Prev]
GO

/****** Object:  Table [dbo].[WlGrsColour]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[WlGrsColour]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[WlGrsColour]
GO

/****** Object:  Table [dbo].[Wool1Yr_Prev]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[Wool1Yr_Prev]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Wool1Yr_Prev]
GO

/****** Object:  Table [dbo].[WoolAnnual_Prev]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[WoolAnnual_Prev]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[WoolAnnual_Prev]
GO

/****** Object:  Table [dbo].[WoolAnnual_Prev0]    Script Date: 14.08.02 4:50:59 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[WoolAnnual_Prev0]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[WoolAnnual_Prev0]
GO

/****** Object:  User dbo    Script Date: 14.08.02 4:50:53 ******/
/****** Object:  Table [dbo].[AgeSex]    Script Date: 14.08.02 4:51:09 ******/
CREATE TABLE [dbo].[AgeSex] (
	[IDAgeSex] [char] (1) NOT NULL ,
	[AgeSex] [varchar] (20) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BodySize]    Script Date: 14.08.02 4:51:09 ******/
CREATE TABLE [dbo].[BodySize] (
	[BodySize] [char] (2) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BodyType]    Script Date: 14.08.02 4:51:09 ******/
CREATE TABLE [dbo].[BodyType] (
	[BodyType] [char] (2) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BreedDen]    Script Date: 14.08.02 4:51:09 ******/
CREATE TABLE [dbo].[BreedDen] (
	[BreedDen] [tinyint] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BreedNum]    Script Date: 14.08.02 4:51:09 ******/
CREATE TABLE [dbo].[BreedNum] (
	[BreedNum] [tinyint] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Breeds]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[Breeds] (
	[IDBreed] [char] (2) NOT NULL ,
	[Breed] [varchar] (50) NOT NULL ,
	[Species] [char] (4) NOT NULL ,
	[WtWt] [tinyint] NOT NULL ,
	[WtGrease] [tinyint] NOT NULL ,
	[WtLeng] [tinyint] NOT NULL ,
	[WtDiam] [tinyint] NOT NULL ,
	[WtFluff] [tinyint] NOT NULL 
)
GO

/****** Object:  Table [dbo].[Cert_WeightWoolAnnlAge]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[Cert_WeightWoolAnnlAge] (
	[Age] [tinyint] NOT NULL ,
	[IDSheepGoat] [char] (6) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Constitutn]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[Constitutn] (
	[Constitutn] [char] (2) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ContrlParam]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[ContrlParam] (
	[AgeWeanMin] [smallint] NOT NULL ,
	[AgeWeanMax] [smallint] NOT NULL ,
	[Age7MonMin] [smallint] NOT NULL ,
	[Age7MonMax] [smallint] NOT NULL ,
	[Age1YrWtMin] [smallint] NOT NULL ,
	[Age1YrWtMax] [smallint] NOT NULL ,
	[Age1YrShearMin] [smallint] NOT NULL ,
	[Age1YrShearMax] [smallint] NOT NULL ,
	[Age1YrCheck] [bit] NOT NULL ,
	[AgeMatMinSire] [smallint] NOT NULL ,
	[AgeMatMinDam] [smallint] NOT NULL ,
	[PregnLengMin] [smallint] NOT NULL ,
	[PregnLengNorm] [smallint] NOT NULL ,
	[PregnLengMax] [smallint] NOT NULL ,
	[InterAnnlMin] [smallint] NOT NULL ,
	[InterAnnlMax] [smallint] NOT NULL ,
	[LiteTimeMax] [smallint] NOT NULL ,
	[SelIndxScale] [smallint] NOT NULL ,
	[BreedBaseDam] [bit] NOT NULL ,
	[BreedCrossKeep] [bit] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CopmClass]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[CopmClass] (
	[IDCompClass] [char] (1) NOT NULL ,
	[CompClass] [varchar] (10) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Countries]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[Countries] (
	[IDCountry] [char] (2) NOT NULL ,
	[Country] [varchar] (25) NOT NULL 
)
GO

/****** Object:  Table [dbo].[Crimpins]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[Crimpins] (
	[Crimpins] [char] (2) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Defects]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[Defects] (
	[IDDefect] [char] (2) NOT NULL ,
	[Defect] [varchar] (50) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Disposition]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[Disposition] (
	[IDDispReas] [char] (2) NOT NULL ,
	[DispReas] [varchar] (50) NOT NULL 
)
GO

/****** Object:  Table [dbo].[Evens]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[Evens] (
	[Evens] [char] (2) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[FatTail]    Script Date: 14.08.02 4:51:10 ******/
CREATE TABLE [dbo].[FatTail] (
	[FatTail] [char] (1) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Interests]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[Interests] (
	[IDInterest] [char] (2) NOT NULL ,
	[Interest] [varchar] (25) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Liveability]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[Liveability] (
	[IDLiv] [char] (1) NOT NULL ,
	[Liv] [varchar] (25) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Mass]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[Mass] (
	[Mass] [char] (2) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MateLambKid_Prev]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[MateLambKid_Prev] (
	[IDDam] [char] (6) NOT NULL ,
	[Cycle] [tinyint] NOT NULL ,
	[DateMatFrom] [smalldatetime] NOT NULL ,
	[DateMatTo] [smalldatetime] NOT NULL ,
	[IDSire] [char] (6) NOT NULL ,
	[DateLambKid] [smalldatetime] NULL ,
	[TypeBirth] [tinyint] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Offspring_Prev]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[Offspring_Prev] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[IDDam] [char] (6) NOT NULL ,
	[Cycle] [tinyint] NOT NULL ,
	[IDLambKid] [char] (6) NOT NULL ,
	[IDLiv] [char] (1) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Quality]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[Quality] (
	[Quality] [char] (2) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Results]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[Results] (
	[Address] [nvarchar] (100) NOT NULL ,
	[Email] [nvarchar] (50) NOT NULL ,
	[IDInterest] [nvarchar] (2) NOT NULL ,
	[IDPers] [nvarchar] (6) NOT NULL ,
	[IDTownVill] [nvarchar] (6) NOT NULL ,
	[NamFirst] [nvarchar] (20) NOT NULL ,
	[NamLast] [nvarchar] (20) NOT NULL ,
	[NamPatr] [nvarchar] (20) NOT NULL ,
	[Phone] [nvarchar] (25) NOT NULL ,
	[Remark] [nvarchar] (50) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Sex]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[Sex] (
	[IDSex] [char] (1) NOT NULL ,
	[Sex] [varchar] (20) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SexOffspring]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[SexOffspring] (
	[IDSex] [char] (1) NOT NULL ,
	[Sex] [varchar] (20) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Strength]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[Strength] (
	[Strength] [char] (1) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Temp_SumFlockManagm_Weight1Yr]    Script Date: 14.08.02 4:51:11 ******/
CREATE TABLE [dbo].[Temp_SumFlockManagm_Weight1Yr] (
	[IDFarm] [char] (2) NOT NULL ,
	[IDSheepGoat] [char] (6) NOT NULL ,
	[Wt1Yr] [real] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Temp_SumFlockManagm_Wool]    Script Date: 14.08.02 4:51:12 ******/
CREATE TABLE [dbo].[Temp_SumFlockManagm_Wool] (
	[IDFarm] [char] (2) NOT NULL ,
	[GreaseAnnl] [real] NOT NULL ,
	[Leng] [real] NOT NULL ,
	[Diam] [real] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TypeBirth]    Script Date: 14.08.02 4:51:12 ******/
CREATE TABLE [dbo].[TypeBirth] (
	[TypeBirth] [char] (1) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Weight]    Script Date: 14.08.02 4:51:12 ******/
CREATE TABLE [dbo].[Weight] (
	[IDSheepGoat] [nvarchar] (6) NOT NULL ,
	[WtBirth] [tinyint] NOT NULL ,
	[DateWean] [smalldatetime] NOT NULL ,
	[WtWean] [tinyint] NOT NULL ,
	[Date7Mon] [smalldatetime] NOT NULL ,
	[Wt7Mon] [tinyint] NOT NULL ,
	[Date1Yr] [smalldatetime] NOT NULL ,
	[Wt1Yr] [tinyint] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Weight1Yr_Prev]    Script Date: 14.08.02 4:51:12 ******/
CREATE TABLE [dbo].[Weight1Yr_Prev] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[Date1Yr] [smalldatetime] NOT NULL ,
	[Wt1Yr] [real] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[WeightAnnual_Prev]    Script Date: 14.08.02 4:51:12 ******/
CREATE TABLE [dbo].[WeightAnnual_Prev] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[DateAnnl] [smalldatetime] NOT NULL ,
	[WtAnnl] [real] NOT NULL 
)
GO

/****** Object:  Table [dbo].[WeightAnnual_Prev0]    Script Date: 14.08.02 4:51:12 ******/
CREATE TABLE [dbo].[WeightAnnual_Prev0] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[DateAnnl] [smalldatetime] NOT NULL ,
	[WtAnnl] [real] NOT NULL ,
	[Age1Yr] [bit] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[WeightWool_Prev]    Script Date: 14.08.02 4:51:12 ******/
CREATE TABLE [dbo].[WeightWool_Prev] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[WtBirth] [decimal](2, 1) NOT NULL ,
	[DateWean] [smalldatetime] NULL ,
	[WtWean] [decimal](3, 1) NULL ,
	[Date7Mon] [smalldatetime] NULL ,
	[Wt7Mon] [decimal](3, 1) NULL ,
	[Date1Yr] [smalldatetime] NULL ,
	[Wt1Yr] [decimal](3, 1) NULL ,
	[DateShear] [smalldatetime] NULL ,
	[Grease] [decimal](2, 1) NULL ,
	[Leng] [decimal](2, 1) NULL ,
	[Diam] [decimal](3, 1) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[WeightWoolAnnual_Prev]    Script Date: 14.08.02 4:51:12 ******/
CREATE TABLE [dbo].[WeightWoolAnnual_Prev] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[DateWtAnnl] [smalldatetime] NOT NULL ,
	[WtAnnl] [decimal](4, 1) NOT NULL ,
	[DateShearAnnl] [smalldatetime] NULL ,
	[GreaseAnnl] [decimal](2, 1) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[WlGrsColour]    Script Date: 14.08.02 4:51:12 ******/
CREATE TABLE [dbo].[WlGrsColour] (
	[IDColour] [char] (1) NOT NULL ,
	[Colour] [varchar] (15) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Wool1Yr_Prev]    Script Date: 14.08.02 4:51:12 ******/
CREATE TABLE [dbo].[Wool1Yr_Prev] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[DateShear1Yr] [smalldatetime] NOT NULL ,
	[Grease1Yr] [real] NOT NULL ,
	[Leng] [real] NOT NULL ,
	[Diam] [real] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[WoolAnnual_Prev]    Script Date: 14.08.02 4:51:13 ******/
CREATE TABLE [dbo].[WoolAnnual_Prev] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[DateShearAnnl] [smalldatetime] NOT NULL ,
	[GreaseAnnl] [real] NOT NULL 
)
GO

/****** Object:  Table [dbo].[WoolAnnual_Prev0]    Script Date: 14.08.02 4:51:13 ******/
CREATE TABLE [dbo].[WoolAnnual_Prev0] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[DateShearAnnl] [smalldatetime] NOT NULL ,
	[GreaseAnnl] [real] NOT NULL ,
	[Leng] [real] NOT NULL ,
	[Diam] [real] NOT NULL ,
	[Age1Yr] [bit] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Oblasts]    Script Date: 14.08.02 4:51:13 ******/
CREATE TABLE [dbo].[Oblasts] (
	[IDCountry] [char] (2) NOT NULL ,
	[IDOblast] [char] (6) NOT NULL ,
	[Oblast] [varchar] (25) NOT NULL 
)
GO

/****** Object:  Table [dbo].[StandDiameter]    Script Date: 14.08.02 4:51:13 ******/
CREATE TABLE [dbo].[StandDiameter] (
	[IDBreed] [char] (2) NOT NULL ,
	[Heritbl] [real] NOT NULL ,
	[MaleMax] [real] NOT NULL ,
	[MaleMin] [real] NOT NULL ,
	[MaleElite] [real] NOT NULL ,
	[MaleClass1] [real] NOT NULL ,
	[FemaleMax] [real] NOT NULL ,
	[FemaleMin] [real] NOT NULL ,
	[FemaleElite] [real] NOT NULL ,
	[FemaleClass1] [real] NOT NULL 
)
GO

/****** Object:  Table [dbo].[StandFluff]    Script Date: 14.08.02 4:51:13 ******/
CREATE TABLE [dbo].[StandFluff] (
	[IDBreed] [char] (2) NOT NULL ,
	[Heritbl] [real] NOT NULL ,
	[MaleMax] [tinyint] NOT NULL ,
	[MaleMin] [tinyint] NOT NULL ,
	[MaleElite] [tinyint] NOT NULL ,
	[MaleClass1] [tinyint] NOT NULL ,
	[FemaleMax] [tinyint] NOT NULL ,
	[FemaleMin] [tinyint] NOT NULL ,
	[FemaleElite] [tinyint] NOT NULL ,
	[FemaleClass1] [tinyint] NOT NULL 
)
GO

/****** Object:  Table [dbo].[StandGrease]    Script Date: 14.08.02 4:51:13 ******/
CREATE TABLE [dbo].[StandGrease] (
	[IDBreed] [char] (2) NOT NULL ,
	[Heritbl] [real] NOT NULL ,
	[MaleMax] [real] NOT NULL ,
	[MaleMin] [real] NOT NULL ,
	[MaleElite] [real] NOT NULL ,
	[MaleClass1] [real] NOT NULL ,
	[FemaleMax] [real] NOT NULL ,
	[FemaleMin] [real] NOT NULL ,
	[FemaleElite] [real] NOT NULL ,
	[FemaleClass1] [real] NOT NULL 
)
GO

/****** Object:  Table [dbo].[StandLength]    Script Date: 14.08.02 4:51:13 ******/
CREATE TABLE [dbo].[StandLength] (
	[IDBreed] [char] (2) NOT NULL ,
	[Heritbl] [real] NOT NULL ,
	[MaleMax] [real] NOT NULL ,
	[MaleMin] [real] NOT NULL ,
	[MaleElite] [real] NOT NULL ,
	[MaleClass1] [real] NOT NULL ,
	[FemaleMax] [real] NOT NULL ,
	[FemaleMin] [real] NOT NULL ,
	[FemaleElite] [real] NOT NULL ,
	[FemaleClass1] [real] NOT NULL 
)
GO

/****** Object:  Table [dbo].[StandWeight]    Script Date: 14.08.02 4:51:13 ******/
CREATE TABLE [dbo].[StandWeight] (
	[IDBreed] [char] (2) NOT NULL ,
	[Heritbl] [real] NOT NULL ,
	[MaleMax] [real] NOT NULL ,
	[MaleMin] [real] NOT NULL ,
	[MaleElite] [real] NOT NULL ,
	[MaleClass1] [real] NOT NULL ,
	[FemaleMax] [real] NOT NULL ,
	[FemaleMin] [real] NOT NULL ,
	[FemaleElite] [real] NOT NULL ,
	[FemaleClass1] [real] NOT NULL 
)
GO

/****** Object:  Table [dbo].[Rayons]    Script Date: 14.08.02 4:51:14 ******/
CREATE TABLE [dbo].[Rayons] (
	[IDOblast] [char] (6) NOT NULL ,
	[IDRayon] [char] (6) NOT NULL ,
	[Rayon] [varchar] (25) NOT NULL 
)
GO

/****** Object:  Table [dbo].[TownVill]    Script Date: 14.08.02 4:51:14 ******/
CREATE TABLE [dbo].[TownVill] (
	[IDRayon] [char] (6) NOT NULL ,
	[IDTownVill] [char] (6) NOT NULL ,
	[TownVill] [varchar] (25) NOT NULL 
)
GO

/****** Object:  Table [dbo].[Persons]    Script Date: 14.08.02 4:51:14 ******/
CREATE TABLE [dbo].[Persons] (
	[IDPers] [char] (6) NOT NULL ,
	[NamLast] [varchar] (20) NOT NULL ,
	[NamFirst] [varchar] (20) NOT NULL ,
	[NamPatr] [varchar] (20) NOT NULL ,
	[IDInterest] [char] (2) NOT NULL ,
	[IDTownVill] [char] (6) NOT NULL ,
	[Address] [varchar] (150) NOT NULL ,
	[Phone] [varchar] (25) NOT NULL ,
	[Email] [varchar] (50) NOT NULL ,
	[Remark] [varchar] (150) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Farms]    Script Date: 14.08.02 4:51:14 ******/
CREATE TABLE [dbo].[Farms] (
	[IDFarm] [char] (2) NOT NULL ,
	[IDTownVill] [char] (6) NOT NULL ,
	[IDPersFarmer] [char] (6) NOT NULL ,
	[IDPersCont] [char] (6) NOT NULL ,
	[Remark] [varchar] (50) NOT NULL 
)
GO

/****** Object:  Table [dbo].[SheepGoat]    Script Date: 14.08.02 4:51:14 ******/
CREATE TABLE [dbo].[SheepGoat] (
	[IDFarm] [char] (2) NOT NULL ,
	[IDSheepGoat] [char] (6) NOT NULL ,
	[IDSex] [char] (1) NOT NULL ,
	[IDBreedBase] [char] (2) NOT NULL ,
	[Crossed] [bit] NOT NULL ,
	[BreedCross] [varchar] (50) NOT NULL ,
	[DateBirth] [smalldatetime] NOT NULL ,
	[IDFarmBirth] [char] (2) NOT NULL ,
	[TypeBirth] [char] (1) NOT NULL ,
	[IDSire] [char] (6) NOT NULL ,
	[IDDam] [char] (6) NOT NULL ,
	[DateDisp] [smalldatetime] NOT NULL ,
	[IDDispReas] [char] (2) NOT NULL ,
	[Remark] [varchar] (150) NOT NULL 
)
GO

/****** Object:  Table [dbo].[Appraisal]    Script Date: 14.08.02 4:51:14 ******/
CREATE TABLE [dbo].[Appraisal] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[DateAppr] [smalldatetime] NOT NULL ,
	[BodySize] [char] (2) NOT NULL ,
	[BodyType] [char] (2) NOT NULL ,
	[Constitutn] [char] (2) NOT NULL ,
	[FatTail] [char] (1) NOT NULL ,
	[Mass] [char] (2) NOT NULL ,
	[Density] [smallint] NOT NULL ,
	[Strength] [char] (1) NOT NULL ,
	[Crimpins] [char] (2) NOT NULL ,
	[Evens] [char] (2) NOT NULL ,
	[Quality] [char] (2) NOT NULL ,
	[IDColour] [char] (1) NOT NULL ,
	[Fluff] [tinyint] NOT NULL ,
	[FibtreYield] [tinyint] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BreedCross]    Script Date: 14.08.02 4:51:15 ******/
CREATE TABLE [dbo].[BreedCross] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[IDBreed] [char] (2) NOT NULL ,
	[BreedNum] [tinyint] NOT NULL ,
	[BreedDen] [tinyint] NOT NULL 
)
GO

/****** Object:  Table [dbo].[Mate]    Script Date: 14.08.02 4:51:15 ******/
CREATE TABLE [dbo].[Mate] (
	[IDDam] [char] (6) NOT NULL ,
	[Cycle] [tinyint] NOT NULL ,
	[CycleLambKid] [tinyint] NOT NULL ,
	[DateMatFrom] [smalldatetime] NOT NULL ,
	[DateMatTo] [smalldatetime] NOT NULL ,
	[IDSire] [char] (6) NOT NULL 
)
GO

/****** Object:  Table [dbo].[SelIndxCompClass]    Script Date: 14.08.02 4:51:15 ******/
CREATE TABLE [dbo].[SelIndxCompClass] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[SelIndx] [real] NOT NULL ,
	[IDCompClass] [char] (1) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TransFarm]    Script Date: 14.08.02 4:51:15 ******/
CREATE TABLE [dbo].[TransFarm] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[DateTrans] [smalldatetime] NOT NULL ,
	[IDFarm] [char] (2) NOT NULL 
)
GO

/****** Object:  Table [dbo].[Weight7Mon]    Script Date: 14.08.02 4:51:15 ******/
CREATE TABLE [dbo].[Weight7Mon] (
	[IDLambKid] [char] (6) NOT NULL ,
	[Date7Mon] [smalldatetime] NOT NULL ,
	[Wt7Mon] [real] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[WeightWean]    Script Date: 14.08.02 4:51:15 ******/
CREATE TABLE [dbo].[WeightWean] (
	[IDLambKid] [char] (6) NOT NULL ,
	[DateWean] [smalldatetime] NOT NULL ,
	[WtWean] [real] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[WeightWoolAnnl]    Script Date: 14.08.02 4:51:15 ******/
CREATE TABLE [dbo].[WeightWoolAnnl] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[Age] [tinyint] NOT NULL ,
	[DateAnnl] [smalldatetime] NOT NULL ,
	[WtAnnl] [real] NOT NULL ,
	[DateShearAnnl] [smalldatetime] NOT NULL ,
	[GreaseAnnl] [real] NOT NULL ,
	[Leng] [real] NOT NULL ,
	[Diam] [real] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[InhertDefect]    Script Date: 14.08.02 4:51:15 ******/
CREATE TABLE [dbo].[InhertDefect] (
	[IDSheepGoat] [char] (6) NOT NULL ,
	[IDDefect] [char] (2) NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[LambKid]    Script Date: 14.08.02 4:51:16 ******/
CREATE TABLE [dbo].[LambKid] (
	[IDDam] [char] (6) NOT NULL ,
	[Cycle] [tinyint] NOT NULL ,
	[CycleLambKid] [tinyint] NOT NULL ,
	[DateLambKid] [smalldatetime] NOT NULL ,
	[TypeBirth] [char] (1) NOT NULL 
)
GO

/****** Object:  Table [dbo].[Offspring]    Script Date: 14.08.02 4:51:16 ******/
CREATE TABLE [dbo].[Offspring] (
	[IDDam] [char] (6) NOT NULL ,
	[Cycle] [tinyint] NOT NULL ,
	[NoLambKid] [tinyint] NOT NULL ,
	[IDLambKid] [char] (6) NOT NULL ,
	[IDSex] [char] (1) NOT NULL ,
	[WtBirth] [real] NOT NULL ,
	[IDLiv] [char] (1) NOT NULL 
)
GO

ALTER TABLE [dbo].[Breeds] WITH NOCHECK ADD 
	CONSTRAINT [PK_Breeds] PRIMARY KEY  CLUSTERED 
	(
		[IDBreed]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Countries] WITH NOCHECK ADD 
	CONSTRAINT [PK__countries__0BC6C43E] PRIMARY KEY  CLUSTERED 
	(
		[IDCountry]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Disposition] WITH NOCHECK ADD 
	CONSTRAINT [PK_Disposition] PRIMARY KEY  CLUSTERED 
	(
		[IDDispReas]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[WeightAnnual_Prev] WITH NOCHECK ADD 
	CONSTRAINT [PK_WeightAnnual] PRIMARY KEY  CLUSTERED 
	(
		[IDSheepGoat],
		[DateAnnl]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[WoolAnnual_Prev] WITH NOCHECK ADD 
	CONSTRAINT [PK_WoolAnnual] PRIMARY KEY  CLUSTERED 
	(
		[IDSheepGoat],
		[DateShearAnnl]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[StandDiameter] WITH NOCHECK ADD 
	CONSTRAINT [PK_StandDiameter] PRIMARY KEY  CLUSTERED 
	(
		[IDBreed]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[StandFluff] WITH NOCHECK ADD 
	CONSTRAINT [PK_StandFluff] PRIMARY KEY  CLUSTERED 
	(
		[IDBreed]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[StandGrease] WITH NOCHECK ADD 
	CONSTRAINT [PK_StandFleece] PRIMARY KEY  CLUSTERED 
	(
		[IDBreed]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[StandLength] WITH NOCHECK ADD 
	CONSTRAINT [PK_StandLength] PRIMARY KEY  CLUSTERED 
	(
		[IDBreed]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[StandWeight] WITH NOCHECK ADD 
	CONSTRAINT [PK_BreedStand] PRIMARY KEY  CLUSTERED 
	(
		[IDBreed]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Farms] WITH NOCHECK ADD 
	CONSTRAINT [PK_Farms] PRIMARY KEY  CLUSTERED 
	(
		[IDFarm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SheepGoat] WITH NOCHECK ADD 
	CONSTRAINT [PK_FlockBook] PRIMARY KEY  CLUSTERED 
	(
		[IDSheepGoat]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BreedCross] WITH NOCHECK ADD 
	CONSTRAINT [PK_BreedCross] PRIMARY KEY  CLUSTERED 
	(
		[IDSheepGoat],
		[IDBreed]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Mate] WITH NOCHECK ADD 
	CONSTRAINT [PK_Mate] PRIMARY KEY  CLUSTERED 
	(
		[IDDam],
		[Cycle]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TransFarm] WITH NOCHECK ADD 
	CONSTRAINT [PK_TransFarm] PRIMARY KEY  CLUSTERED 
	(
		[IDSheepGoat],
		[DateTrans]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[LambKid] WITH NOCHECK ADD 
	CONSTRAINT [PK_LambKid] PRIMARY KEY  CLUSTERED 
	(
		[IDDam],
		[Cycle]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Offspring] WITH NOCHECK ADD 
	CONSTRAINT [PK_Offspring_1] PRIMARY KEY  CLUSTERED 
	(
		[IDDam],
		[Cycle],
		[NoLambKid]
	)  ON [PRIMARY] 
GO

 CREATE  CLUSTERED  INDEX [IX_Oblasts] ON [dbo].[Oblasts]([IDCountry]) ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_Rayons] ON [dbo].[Rayons]([IDOblast]) ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_TownVill] ON [dbo].[TownVill]([IDRayon]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AgeSex] WITH NOCHECK ADD 
	CONSTRAINT [PK_SexAge] PRIMARY KEY  NONCLUSTERED 
	(
		[IDAgeSex]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BreedDen] WITH NOCHECK ADD 
	CONSTRAINT [PK_BreedDen] PRIMARY KEY  NONCLUSTERED 
	(
		[BreedDen]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BreedNum] WITH NOCHECK ADD 
	CONSTRAINT [PK_BreedNum] PRIMARY KEY  NONCLUSTERED 
	(
		[BreedNum]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Breeds] WITH NOCHECK ADD 
	CONSTRAINT [DF_Breeds_Species] DEFAULT ('Овцы') FOR [Species]
GO

ALTER TABLE [dbo].[Cert_WeightWoolAnnlAge] WITH NOCHECK ADD 
	CONSTRAINT [PK_WeightWoolAnnlAge] PRIMARY KEY  NONCLUSTERED 
	(
		[Age]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CopmClass] WITH NOCHECK ADD 
	CONSTRAINT [PK_CopmClass] PRIMARY KEY  NONCLUSTERED 
	(
		[IDCompClass]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Defects] WITH NOCHECK ADD 
	CONSTRAINT [PK_Defects] PRIMARY KEY  NONCLUSTERED 
	(
		[IDDefect]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Interests] WITH NOCHECK ADD 
	CONSTRAINT [PK__interests__0CBAE877] PRIMARY KEY  NONCLUSTERED 
	(
		[IDInterest]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Liveability] WITH NOCHECK ADD 
	CONSTRAINT [PK_Liveability] PRIMARY KEY  NONCLUSTERED 
	(
		[IDLiv]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MateLambKid_Prev] WITH NOCHECK ADD 
	CONSTRAINT [PK_MateLambKid] PRIMARY KEY  NONCLUSTERED 
	(
		[IDDam],
		[Cycle]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Offspring_Prev] WITH NOCHECK ADD 
	CONSTRAINT [DF_Offspring_IDLambKid] DEFAULT ('-') FOR [IDLambKid],
	CONSTRAINT [DF_Offspring_IDLiv] DEFAULT ('-') FOR [IDLiv],
	CONSTRAINT [PK_Offspring] PRIMARY KEY  NONCLUSTERED 
	(
		[ID],
		[IDDam],
		[Cycle]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Sex] WITH NOCHECK ADD 
	CONSTRAINT [PK_Sex] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSex]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SexOffspring] WITH NOCHECK ADD 
	CONSTRAINT [PK_SexOffspring] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSex]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TypeBirth] WITH NOCHECK ADD 
	CONSTRAINT [PK_TypeBirth] PRIMARY KEY  NONCLUSTERED 
	(
		[TypeBirth]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Weight1Yr_Prev] WITH NOCHECK ADD 
	CONSTRAINT [PK_Weight1Yr] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSheepGoat]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[WeightAnnual_Prev0] WITH NOCHECK ADD 
	CONSTRAINT [PK_WeightAnnual_1] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSheepGoat],
		[DateAnnl]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[WeightWool_Prev] WITH NOCHECK ADD 
	CONSTRAINT [PK_Weight] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSheepGoat]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[WeightWoolAnnual_Prev] WITH NOCHECK ADD 
	CONSTRAINT [PK_WeightWoolAnnual] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSheepGoat],
		[DateWtAnnl]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[WlGrsColour] WITH NOCHECK ADD 
	CONSTRAINT [PK_WlGrsColour] PRIMARY KEY  NONCLUSTERED 
	(
		[IDColour]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Wool1Yr_Prev] WITH NOCHECK ADD 
	CONSTRAINT [PK_Wool] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSheepGoat]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[WoolAnnual_Prev0] WITH NOCHECK ADD 
	CONSTRAINT [PK_WoolAnnual_1] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSheepGoat],
		[DateShearAnnl]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Oblasts] WITH NOCHECK ADD 
	CONSTRAINT [PK_Oblasts] PRIMARY KEY  NONCLUSTERED 
	(
		[IDOblast]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Rayons] WITH NOCHECK ADD 
	CONSTRAINT [PK_Rayons] PRIMARY KEY  NONCLUSTERED 
	(
		[IDRayon]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TownVill] WITH NOCHECK ADD 
	CONSTRAINT [PK_Townvill] PRIMARY KEY  NONCLUSTERED 
	(
		[IDTownVill]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Persons] WITH NOCHECK ADD 
	CONSTRAINT [DF_Persons_NamFirst] DEFAULT ('-') FOR [NamFirst],
	CONSTRAINT [DF_Persons_NamPatr] DEFAULT ('-') FOR [NamPatr],
	CONSTRAINT [DF_Persons_IDTownVill] DEFAULT ('-') FOR [IDTownVill],
	CONSTRAINT [DF_Persons_StreetDistr] DEFAULT ('-') FOR [Address],
	CONSTRAINT [DF_Persons_Phone] DEFAULT ('-') FOR [Phone],
	CONSTRAINT [DF_Persons_Email] DEFAULT ('-') FOR [Email],
	CONSTRAINT [DF_Persons_Remark] DEFAULT ('-') FOR [Remark],
	CONSTRAINT [PK_Persons] PRIMARY KEY  NONCLUSTERED 
	(
		[IDPers]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Farms] WITH NOCHECK ADD 
	CONSTRAINT [DF_Farms_IDPersCont] DEFAULT ('-') FOR [IDPersCont],
	CONSTRAINT [DF_Farms_Remark] DEFAULT ('-') FOR [Remark]
GO

ALTER TABLE [dbo].[Appraisal] WITH NOCHECK ADD 
	CONSTRAINT [PK_Appraisal] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSheepGoat]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SelIndxCompClass] WITH NOCHECK ADD 
	CONSTRAINT [PK_SelIndxCompClass] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSheepGoat]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Weight7Mon] WITH NOCHECK ADD 
	CONSTRAINT [PK_Weight7Mon] PRIMARY KEY  NONCLUSTERED 
	(
		[IDLambKid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[WeightWean] WITH NOCHECK ADD 
	CONSTRAINT [PK_WeightWean] PRIMARY KEY  NONCLUSTERED 
	(
		[IDLambKid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[WeightWoolAnnl] WITH NOCHECK ADD 
	CONSTRAINT [PK_WeightWool] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSheepGoat],
		[Age]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[InhertDefect] WITH NOCHECK ADD 
	CONSTRAINT [PK_InhertDefect] PRIMARY KEY  NONCLUSTERED 
	(
		[IDSheepGoat],
		[IDDefect]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [IX_MateLambKid] ON [dbo].[MateLambKid_Prev]([IDSire]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_Farms] ON [dbo].[Farms]([IDTownVill]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_SheepGoat] ON [dbo].[SheepGoat]([IDSire]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_SheepGoat_1] ON [dbo].[SheepGoat]([IDDam]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_SheepGoat_2] ON [dbo].[SheepGoat]([DateBirth]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_SheepGoat_3] ON [dbo].[SheepGoat]([DateDisp]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_Mate] ON [dbo].[Mate]([IDSire]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_Mate_1] ON [dbo].[Mate]([DateMatFrom]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_Mate_2] ON [dbo].[Mate]([CycleLambKid]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_LambKid] ON [dbo].[LambKid]([CycleLambKid]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_Offspring] ON [dbo].[Offspring]([IDLambKid]) WITH  STATISTICS_NORECOMPUTE  ON [PRIMARY]
GO

ALTER TABLE [dbo].[Oblasts] ADD 
	CONSTRAINT [FK_Oblasts_Countries] FOREIGN KEY 
	(
		[IDCountry]
	) REFERENCES [dbo].[Countries] (
		[IDCountry]
	)
GO

ALTER TABLE [dbo].[StandDiameter] ADD 
	CONSTRAINT [FK_StandDiameter_Breeds] FOREIGN KEY 
	(
		[IDBreed]
	) REFERENCES [dbo].[Breeds] (
		[IDBreed]
	)
GO

ALTER TABLE [dbo].[StandFluff] ADD 
	CONSTRAINT [FK_StandFluff_Breeds] FOREIGN KEY 
	(
		[IDBreed]
	) REFERENCES [dbo].[Breeds] (
		[IDBreed]
	)
GO

ALTER TABLE [dbo].[StandGrease] ADD 
	CONSTRAINT [FK_StandFleece_Breeds] FOREIGN KEY 
	(
		[IDBreed]
	) REFERENCES [dbo].[Breeds] (
		[IDBreed]
	)
GO

ALTER TABLE [dbo].[StandLength] ADD 
	CONSTRAINT [FK_StandLength_Breeds] FOREIGN KEY 
	(
		[IDBreed]
	) REFERENCES [dbo].[Breeds] (
		[IDBreed]
	)
GO

ALTER TABLE [dbo].[StandWeight] ADD 
	CONSTRAINT [FK_StandWeight_Breeds] FOREIGN KEY 
	(
		[IDBreed]
	) REFERENCES [dbo].[Breeds] (
		[IDBreed]
	)
GO

ALTER TABLE [dbo].[Rayons] ADD 
	CONSTRAINT [FK_Rayons_Oblasts] FOREIGN KEY 
	(
		[IDOblast]
	) REFERENCES [dbo].[Oblasts] (
		[IDOblast]
	)
GO

ALTER TABLE [dbo].[TownVill] ADD 
	CONSTRAINT [FK_TownVill_Rayons] FOREIGN KEY 
	(
		[IDRayon]
	) REFERENCES [dbo].[Rayons] (
		[IDRayon]
	)
GO

ALTER TABLE [dbo].[Persons] ADD 
	CONSTRAINT [FK_Persons_Interests] FOREIGN KEY 
	(
		[IDInterest]
	) REFERENCES [dbo].[Interests] (
		[IDInterest]
	),
	CONSTRAINT [FK_Persons_TownVill] FOREIGN KEY 
	(
		[IDTownVill]
	) REFERENCES [dbo].[TownVill] (
		[IDTownVill]
	)
GO

ALTER TABLE [dbo].[Farms] ADD 
	CONSTRAINT [FK_Farms_Persons] FOREIGN KEY 
	(
		[IDPersFarmer]
	) REFERENCES [dbo].[Persons] (
		[IDPers]
	),
	CONSTRAINT [FK_Farms_Persons1] FOREIGN KEY 
	(
		[IDPersCont]
	) REFERENCES [dbo].[Persons] (
		[IDPers]
	)
GO

ALTER TABLE [dbo].[SheepGoat] ADD 
	CONSTRAINT [FK_SheepGoat_Breeds] FOREIGN KEY 
	(
		[IDBreedBase]
	) REFERENCES [dbo].[Breeds] (
		[IDBreed]
	),
	CONSTRAINT [FK_SheepGoat_Disposition] FOREIGN KEY 
	(
		[IDDispReas]
	) REFERENCES [dbo].[Disposition] (
		[IDDispReas]
	),
	CONSTRAINT [FK_SheepGoat_Farms] FOREIGN KEY 
	(
		[IDFarmBirth]
	) REFERENCES [dbo].[Farms] (
		[IDFarm]
	),
	CONSTRAINT [FK_SheepGoat_Farms2] FOREIGN KEY 
	(
		[IDFarm]
	) REFERENCES [dbo].[Farms] (
		[IDFarm]
	),
	CONSTRAINT [FK_SheepGoat_SheepGoat] FOREIGN KEY 
	(
		[IDSire]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	),
	CONSTRAINT [FK_SheepGoat_SheepGoat1] FOREIGN KEY 
	(
		[IDDam]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	)
GO

ALTER TABLE [dbo].[Appraisal] ADD 
	CONSTRAINT [FK_Appraisal_SheepGoat] FOREIGN KEY 
	(
		[IDSheepGoat]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	),
	CONSTRAINT [FK_Appraisal_WlGrsColour] FOREIGN KEY 
	(
		[IDColour]
	) REFERENCES [dbo].[WlGrsColour] (
		[IDColour]
	)
GO

ALTER TABLE [dbo].[BreedCross] ADD 
	CONSTRAINT [FK_BreedCross_Breeds] FOREIGN KEY 
	(
		[IDBreed]
	) REFERENCES [dbo].[Breeds] (
		[IDBreed]
	),
	CONSTRAINT [FK_BreedCross_SheepGoat] FOREIGN KEY 
	(
		[IDSheepGoat]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	)
GO

ALTER TABLE [dbo].[Mate] ADD 
	CONSTRAINT [FK_Mate_SheepGoat] FOREIGN KEY 
	(
		[IDDam]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	),
	CONSTRAINT [FK_Mate_SheepGoat1] FOREIGN KEY 
	(
		[IDSire]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	)
GO

ALTER TABLE [dbo].[SelIndxCompClass] ADD 
	CONSTRAINT [FK_SelIndxCompClass_CopmClass] FOREIGN KEY 
	(
		[IDCompClass]
	) REFERENCES [dbo].[CopmClass] (
		[IDCompClass]
	),
	CONSTRAINT [FK_SelIndxCompClass_SheepGoat] FOREIGN KEY 
	(
		[IDSheepGoat]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	)
GO

ALTER TABLE [dbo].[TransFarm] ADD 
	CONSTRAINT [FK_TransFarm_Farms] FOREIGN KEY 
	(
		[IDFarm]
	) REFERENCES [dbo].[Farms] (
		[IDFarm]
	),
	CONSTRAINT [FK_TransferFarm_SheepGoat] FOREIGN KEY 
	(
		[IDSheepGoat]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	)
GO

ALTER TABLE [dbo].[Weight7Mon] ADD 
	CONSTRAINT [FK_Weight7Mon_SheepGoat] FOREIGN KEY 
	(
		[IDLambKid]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	)
GO

ALTER TABLE [dbo].[WeightWean] ADD 
	CONSTRAINT [FK_WeightWean_SheepGoat] FOREIGN KEY 
	(
		[IDLambKid]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	)
GO

ALTER TABLE [dbo].[WeightWoolAnnl] ADD 
	CONSTRAINT [FK_WeightWool_SheepGoat] FOREIGN KEY 
	(
		[IDSheepGoat]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	)
GO

ALTER TABLE [dbo].[InhertDefect] ADD 
	CONSTRAINT [FK_InhertDefect_Appraisal] FOREIGN KEY 
	(
		[IDSheepGoat]
	) REFERENCES [dbo].[Appraisal] (
		[IDSheepGoat]
	),
	CONSTRAINT [FK_InhertDefect_Defects] FOREIGN KEY 
	(
		[IDDefect]
	) REFERENCES [dbo].[Defects] (
		[IDDefect]
	)
GO

ALTER TABLE [dbo].[LambKid] ADD 
	CONSTRAINT [FK_LambKid_Mate] FOREIGN KEY 
	(
		[IDDam],
		[Cycle]
	) REFERENCES [dbo].[Mate] (
		[IDDam],
		[Cycle]
	)
GO

ALTER TABLE [dbo].[Offspring] ADD 
	CONSTRAINT [FK_Offspring_LambKid] FOREIGN KEY 
	(
		[IDDam],
		[Cycle]
	) REFERENCES [dbo].[LambKid] (
		[IDDam],
		[Cycle]
	),
	CONSTRAINT [FK_Offspring_SheepGoat] FOREIGN KEY 
	(
		[IDLambKid]
	) REFERENCES [dbo].[SheepGoat] (
		[IDSheepGoat]
	)
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_BornLambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDDam, COUNT(IDLambKid) AS CountIDLambKid
FROM CertEweShegoat_Offspring
GROUP BY IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_2ndCycleLambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDDam, CycleLambKid, DateLambKid
FROM CertEweShegoat_LambKid
WHERE (CycleLambKid = 2)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_3rdCycleLambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.[3]
AS
SELECT IDDam, CycleLambKid, DateLambKid
FROM CertEweShegoat_LambKid
WHERE (CycleLambKid = 3)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_4thCycleLambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.[4]
AS
SELECT IDDam, CycleLambKid, DateLambKid
FROM CertEweShegoat_LambKid
WHERE (CycleLambKid = 4)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_5thCycleLambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.[5]
AS
SELECT IDDam, CycleLambKid, DateLambKid
FROM CertEweShegoat_LambKid
WHERE (CycleLambKid = 5)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_6thCycleLambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.[6]
AS
SELECT IDDam, CycleLambKid, DateLambKid
FROM CertEweShegoat_LambKid
WHERE (CycleLambKid = 6)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_7thCycleLambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.[7]
AS
SELECT IDDam, CycleLambKid, DateLambKid
FROM CertEweShegoat_LambKid
WHERE (CycleLambKid = 7)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_8thCycleLambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.[8]
AS
SELECT IDDam, CycleLambKid, DateLambKid
FROM CertEweShegoat_LambKid
WHERE (CycleLambKid = 8)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_9thCycleLambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.[9]
AS
SELECT IDDam, CycleLambKid, DateLambKid
FROM CertEweShegoat_LambKid
WHERE (CycleLambKid = 9)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_IndividInfo_Temp    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.CertV_IndividInfo
AS
SELECT IDSheepGoat, BreedCross, DateBirth, TypeBirth, 
    IDFarmBirth, IDFarm
FROM Cert_SheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_MaxAge    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDSheepGoat, MAX(Age) AS MaxAge
FROM Cert_WeightWoolAnnl
GROUP BY IDSheepGoat
HAVING (MAX(Age) > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_PerfAge_All    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.CertV_PerfAge_All
AS
SELECT Cert_WeightWoolAnnlAge.IDSheepGoat, 
    Cert_WeightWoolAnnlAge.Age, Cert_WeightWoolAnnl.WtAnnl, 
    Cert_WeightWoolAnnl.GreaseAnnl
FROM Cert_WeightWoolAnnlAge LEFT OUTER JOIN
    Cert_WeightWoolAnnl ON 
    Cert_WeightWoolAnnlAge.Age = Cert_WeightWoolAnnl.Age

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_WeightWool1Yr    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.CertV_WeightWool1Yr
AS
SELECT IDSheepGoat, WtAnnl AS Wt1Yr, 
    GreaseAnnl AS Grease1Yr, Leng, Diam
FROM Cert_WeightWoolAnnl
WHERE (Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.LambKidV    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDDam, Cycle, DateLambKid AS [Ягнение(козление)], 
    TypeBirth AS [Голов приплода]
FROM LambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.MateV    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDDam, Cycle, DateMatFrom AS [Начало случки], 
    DateMatTo AS [Конец случки], 
    IDSire AS [Баран(козёл)]
FROM Mate

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Age1st_Days    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.SumFlockManagmV_Age1st_LambKid
AS
SELECT IDFarm, CycleLambKid, CAST((DateLambKid - DateBirth) 
    AS SMALLINT) AS Age1stDays
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Age2nd_Days    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.SumFlockManagmV_Age2nd_LambKid
AS
SELECT IDFarm, CycleLambKid, CAST((DateLambKid - DateBirth) 
    AS SMALLINT) AS Age2ndDays
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_AllAge    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_AllAge
AS
SELECT IDFarm, CAST((DateLambKid - DateBirth) AS SMALLINT) 
    / 365.25 AS Age, TypeBirth
FROM SumFlockManagm_LambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_AllCount    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_AllCount
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS REAL) 
    AS CountIDDam
FROM SumFlockManagm_LambKid
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared1st_LambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared2nd_LambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed1st_Mate    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid
FROM SumFlockManagm_Mate
WHERE (CycleLambKid = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed2nd_Mate    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid
FROM SumFlockManagm_Mate
WHERE (CycleLambKid > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Concept1st_LambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 1) AND (IDDispReas = '-')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Concept1st_Mate    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid
FROM SumFlockManagm_Mate
WHERE (CycleLambKid = 1) AND (IDDispReas = '-')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Concept2nd_LambKid    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid > 1) AND (IDDispReas = '-')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Concept2nd_Mate    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid
FROM SumFlockManagm_Mate
WHERE (CycleLambKid > 1) AND (IDDispReas = '-')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_Avail    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.SumFlockManagmV_Disp_Avail
AS
SELECT IDFarm, CAST(COUNT(IDSheepGoat) AS REAL) 
    AS CountIDSheepGoat, IDDispReas
FROM SumFlockManagm_SheepGoatDisp
GROUP BY IDFarm, IDDispReas

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAvail    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, COUNT(IDSheepGoat) AS CountIDSheepGoat, 
    IDDispReas
FROM SumFlockManagm_SheepGoatDisp
GROUP BY IDFarm, IDDispReas, IDAgeSex
HAVING (IDAgeSex = '2')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleTotal    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.SumFlockManagmV_Disp_MatrFemaleTotal
AS
SELECT IDFarm, COUNT(IDSheepGoat) AS MatrFemaleTotal
FROM SumFlockManagm_SheepGoat
GROUP BY IDFarm, IDAgeSex
HAVING (IDAgeSex = '2')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAvail    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.SumFlockManagmV_Disp_MatrMaleAvail
AS
SELECT IDFarm, COUNT(IDSheepGoat) AS CountIDSheepGoat, 
    IDDispReas
FROM SumFlockManagm_SheepGoatDisp
GROUP BY IDFarm, IDDispReas, IDAgeSex
HAVING (IDAgeSex = '1')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleTotal    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo._
AS
SELECT IDFarm, COUNT(IDSheepGoat) AS MatrMaleTotal
FROM SumFlockManagm_SheepGoat
GROUP BY IDFarm, IDAgeSex
HAVING (IDAgeSex = '1')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_Total    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.SumFlockManagmV_Disp_Total
AS
SELECT IDFarm, CAST(COUNT(IDSheepGoat) AS REAL) 
    AS CountIDSheepGoat
FROM SumFlockManagm_SheepGoatDisp
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAvail    Script Date: 14.08.02 4:51:16 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, COUNT(IDSheepGoat) AS CountIDSheepGoat, 
    IDDispReas
FROM SumFlockManagm_SheepGoatDisp
GROUP BY IDFarm, IDDispReas, IDAgeSex
HAVING (IDAgeSex = '3')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngTotal    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_Disp_YngTotal
AS
SELECT IDFarm, COUNT(IDSheepGoat) AS YngTotal
FROM SumFlockManagm_SheepGoat
GROUP BY IDFarm, IDAgeSex
HAVING (IDAgeSex = '3')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_2ndCycleLambKid    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_Inter_2nd
AS
SELECT IDFarm, IDDam, CycleLambKid, DateLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 2)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_3rdCycleLambKid    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_Inter_3rd
AS
SELECT IDFarm, IDDam, CycleLambKid, DateLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 3)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_4thCycleLambKid    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid, DateLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 4)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_5thCycleLambKid    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid, DateLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 5)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_6thCycleLambKid    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid, DateLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 6)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_7thCycleLambKid    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid, DateLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 7)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_8thCycleLambKid    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW8
AS
SELECT IDFarm, IDDam, CycleLambKid, DateLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 8)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_9thCycleLambKid    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW9
AS
SELECT IDFarm, IDDam, CycleLambKid, DateLambKid
FROM SumFlockManagm_LambKid
WHERE (CycleLambKid = 9)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_GreaseAge    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, ROUND(CAST((DateShearAnnl - DateBirth) 
    AS SMALLINT) / 365.25, 0) AS Age, GreaseAnnl
FROM SumFlockManagm_WoolAnnl

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_WeightAge    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, ROUND(CAST((DateAnnl - DateBirth) AS SMALLINT) 
    / 365.25, 0) AS Age, WtAnnl
FROM SumFlockManagm_WeightAnnl

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_Weight1Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDSheepGoat, WtAnnl AS Wt1Yr
FROM SumFlockManagm_WeightAnnl
WHERE (Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_WeightMaxAge    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDSheepGoat, MAX(Age) AS MaxAge
FROM SumFlockManagm_WeightAnnl
GROUP BY IDSheepGoat
HAVING (MAX(Age) > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_Wool1Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDSheepGoat, GreaseAnnl AS Grease1Yr, Leng, Diam
FROM SumFlockManagm_WoolAnnl
WHERE (Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_WoolMaxAge    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDSheepGoat, MAX(Age) AS MaxAge
FROM SumFlockManagm_WoolAnnl
GROUP BY IDSheepGoat
HAVING (MAX(Age) > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned1st_LambKid    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_Weaned1st
AS
SELECT IDFarm, IDDam, CycleLambKid
FROM SumFlockManagm_LambKidWeaned
WHERE (CycleLambKid = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned2nd_LambKid    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDDam, CycleLambKid
FROM SumFlockManagm_LambKidWeaned
WHERE (CycleLambKid > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Wool    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_Wool
AS
SELECT IDFarm, AVG(GreaseAnnl) AS GreaseAnnl, AVG(Leng) 
    AS Leng, AVG(Diam) AS Diam
FROM SumFlockManagm_WoolAnnl
GROUP BY IDFarm, Age, IDSex
HAVING (Age = 1) AND (IDSex = '1')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Wt1Yr1st    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AVG(Wt1Yr) AS Wt1Yr1st
FROM SumFlockManagmV_Wt1Yr1st_Select
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Wt1Yr2nd    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AVG(Wt1Yr) AS Wt1Yr2nd
FROM SumFlockManagmV_Wt1Yr2nd_Select
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumPerformV_AgeSexCode    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDAgeSex
FROM SumPerform_SheepGoat
GROUP BY IDFarm, IDAgeSex

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumPerformV_AgeSexCode_Option    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumPerformV_AgeSexCode
AS
SELECT DISTINCT IDFarm, IDAgeSex
FROM SumPerform_SheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumPerformV_BreedCross    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDAgeSex, BreedCross
FROM SumPerform_SheepGoat
GROUP BY IDFarm, IDAgeSex, BreedCross

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumPerformV_BreedCross_Option    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumPerformV_BreedCross_Temp
AS
SELECT DISTINCT IDFarm, IDAgeSex, BreedCross
FROM SumPerform_SheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumPerformV_WeightWool1Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.WeightWool1Yr
AS
SELECT IDSheepGoat, WtAnnl AS Wt1Yr, 
    GreaseAnnl AS Grease1Yr, Leng, Diam
FROM WeightWoolAnnl
WHERE (Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_2nd    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT CertEweShegoatV_Inter_2ndCycleLambKid.IDDam, 
    CAST((CertEweShegoatV_Inter_3rdCycleLambKid.DateLambKid - CertEweShegoatV_Inter_2ndCycleLambKid.DateLambKid)
     AS SMALLINT) AS Inter
FROM CertEweShegoatV_Inter_2ndCycleLambKid INNER JOIN
    CertEweShegoatV_Inter_3rdCycleLambKid ON 
    CertEweShegoatV_Inter_2ndCycleLambKid.IDDam = CertEweShegoatV_Inter_3rdCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_3rd    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.[3]
AS
SELECT CertEweShegoatV_Inter_3rdCycleLambKid.IDDam, 
    CAST((CertEweShegoatV_Inter_4thCycleLambKid.DateLambKid - CertEweShegoatV_Inter_3rdCycleLambKid.DateLambKid)
     AS SMALLINT) AS Inter
FROM CertEweShegoatV_Inter_3rdCycleLambKid INNER JOIN
    CertEweShegoatV_Inter_4thCycleLambKid ON 
    CertEweShegoatV_Inter_3rdCycleLambKid.IDDam = CertEweShegoatV_Inter_4thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_4th    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.[5]
AS
SELECT CertEweShegoatV_Inter_4thCycleLambKid.IDDam, 
    CAST((CertEweShegoatV_Inter_5thCycleLambKid.DateLambKid - CertEweShegoatV_Inter_4thCycleLambKid.DateLambKid)
     AS SMALLINT) AS Inter
FROM CertEweShegoatV_Inter_4thCycleLambKid INNER JOIN
    CertEweShegoatV_Inter_5thCycleLambKid ON 
    CertEweShegoatV_Inter_4thCycleLambKid.IDDam = CertEweShegoatV_Inter_5thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_5th    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.[6]
AS
SELECT CertEweShegoatV_Inter_5thCycleLambKid.IDDam, 
    CAST((CertEweShegoatV_Inter_6thCycleLambKid.DateLambKid - CertEweShegoatV_Inter_5thCycleLambKid.DateLambKid)
     AS SMALLINT) AS Inter
FROM CertEweShegoatV_Inter_5thCycleLambKid INNER JOIN
    CertEweShegoatV_Inter_6thCycleLambKid ON 
    CertEweShegoatV_Inter_5thCycleLambKid.IDDam = CertEweShegoatV_Inter_6thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_6th    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.[7]
AS
SELECT CertEweShegoatV_Inter_6thCycleLambKid.IDDam, 
    CAST((CertEweShegoatV_Inter_7thCycleLambKid.DateLambKid - CertEweShegoatV_Inter_6thCycleLambKid.DateLambKid)
     AS SMALLINT) AS Inter
FROM CertEweShegoatV_Inter_6thCycleLambKid INNER JOIN
    CertEweShegoatV_Inter_7thCycleLambKid ON 
    CertEweShegoatV_Inter_6thCycleLambKid.IDDam = CertEweShegoatV_Inter_7thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_7th    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.[8]
AS
SELECT CertEweShegoatV_Inter_7thCycleLambKid.IDDam, 
    CAST((CertEweShegoatV_Inter_8thCycleLambKid.DateLambKid - CertEweShegoatV_Inter_7thCycleLambKid.DateLambKid)
     AS SMALLINT) AS Inter
FROM CertEweShegoatV_Inter_7thCycleLambKid INNER JOIN
    CertEweShegoatV_Inter_8thCycleLambKid ON 
    CertEweShegoatV_Inter_7thCycleLambKid.IDDam = CertEweShegoatV_Inter_8thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_8th    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.[9]
AS
SELECT CertEweShegoatV_Inter_8thCycleLambKid.IDDam, 
    CAST((CertEweShegoatV_Inter_9thCycleLambKid.DateLambKid - CertEweShegoatV_Inter_8thCycleLambKid.DateLambKid)
     AS SMALLINT) AS Inter
FROM CertEweShegoatV_Inter_8thCycleLambKid INNER JOIN
    CertEweShegoatV_Inter_9thCycleLambKid ON 
    CertEweShegoatV_Inter_8thCycleLambKid.IDDam = CertEweShegoatV_Inter_9thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_PerfAge_All1Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.CertV_PerfAge_All1Yr
AS
SELECT IDSheepGoat, WtAnnl AS Wt1Yr, 
    GreaseAnnl AS Grease1Yr
FROM CertV_PerfAge_All
WHERE (Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_PerfAge_All2Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.CertV_PerfAge_All2Yr
AS
SELECT IDSheepGoat, WtAnnl AS Wt2Yr, 
    GreaseAnnl AS Grease2Yr
FROM CertV_PerfAge_All
WHERE (Age = 2)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_PerfAge_All3Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.CertV_PerfAge_All3Yr
AS
SELECT IDSheepGoat, WtAnnl AS Wt3Yr, 
    GreaseAnnl AS Grease3Yr
FROM CertV_PerfAge_All
WHERE (Age = 3)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_PerfAge_All4Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.CertV_PerfAge_All4Yr
AS
SELECT IDSheepGoat, WtAnnl AS Wt4Yr, 
    GreaseAnnl AS Grease4Yr
FROM CertV_PerfAge_All
WHERE (Age = 4)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_PerfAge_All5Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.CertV_PerfAge_All5Yr
AS
SELECT IDSheepGoat, WtAnnl AS Wt5Yr, 
    GreaseAnnl AS Grease5Yr
FROM CertV_PerfAge_All
WHERE (Age = 5)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_PerfAge_All6Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.CertV_PerfAge_All6Yr
AS
SELECT IDSheepGoat, WtAnnl AS Wt6Yr, 
    GreaseAnnl AS Grease6Yr
FROM CertV_PerfAge_All
WHERE (Age = 6)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_WeightWoolAnnl    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT CertV_MaxAge.IDSheepGoat, 
    Cert_WeightWoolAnnl.WtAnnl, 
    Cert_WeightWoolAnnl.GreaseAnnl
FROM CertV_MaxAge INNER JOIN
    Cert_WeightWoolAnnl ON 
    CertV_MaxAge.IDSheepGoat = Cert_WeightWoolAnnl.IDSheepGoat
     AND CertV_MaxAge.MaxAge = Cert_WeightWoolAnnl.Age

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.OffspringV    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.OffspringV
AS
SELECT Offspring.IDDam, Offspring.Cycle, Offspring.NoLambKid, 
    Offspring.IDLambKid, Offspring.IDSex, SexOffspring.Sex, 
    Offspring.WtBirth, Offspring.IDLiv, Liveability.Liv
FROM Offspring INNER JOIN
    SexOffspring ON 
    Offspring.IDSex = SexOffspring.IDSex INNER JOIN
    Liveability ON Offspring.IDLiv = Liveability.IDLiv

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Age1st    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_Age1st
AS
SELECT IDFarm, AVG(Age1stDays) / 365.25 AS Age1st
FROM SumFlockManagmV_Age1st_Days
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Age2nd    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_Age2nd
AS
SELECT IDFarm, AVG(Age2ndDays) / 365.25 AS Age2nd
FROM SumFlockManagmV_Age2nd_Days
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All2Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age2Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age < 2.5)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All3Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_All3Yr
AS
SELECT IDFarm, Age AS Age3Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 2.5) AND (Age < 3.5)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All4Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age4Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 3.5) AND (Age < 4.5)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All5Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age5Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 4.5) AND (Age < 5.5)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All6Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age6Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 5.5)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad2Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Quad2Yr
AS
SELECT IDFarm, Age AS Age2Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age < 2.5) AND (TypeBirth >= '4')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad3Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Quad3Yr
AS
SELECT IDFarm, Age AS Age3Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 2.5) AND (Age < 3.5) AND (TypeBirth >= '4')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad4Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Quad4Yr
AS
SELECT IDFarm, Age AS Age4Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 3.5) AND (Age < 4.5) AND (TypeBirth >= '4')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad5Yr    Script Date: 14.08.02 4:51:17 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Quad5Yr
AS
SELECT IDFarm, Age AS Age5Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 4.5) AND (Age < 5.5) AND (TypeBirth >= '4')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad6Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Quad6Yr
AS
SELECT IDFarm, Age AS Age6Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 5.5) AND (TypeBirth >= '4')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing2Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age2Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age < 2.5) AND (TypeBirth = '1')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing3Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age3Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 2.5) AND (Age < 3.5) AND (TypeBirth = '1')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing4Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Sing4Yr
AS
SELECT IDFarm, Age AS Age4Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 3.5) AND (Age < 4.5) AND (TypeBirth = '1')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing5Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age5Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 4.5) AND (Age < 5.5) AND (TypeBirth = '1')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing6Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age6Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 5.5) AND (TypeBirth = '1')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip2Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age2Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age < 2.5) AND (TypeBirth = '3')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip3Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age3Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 2.5) AND (Age < 3.5) AND (TypeBirth = '3')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip4Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age4Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 3.5) AND (Age < 4.5) AND (TypeBirth = '3')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip5Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age5Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 4.5) AND (Age < 5.5) AND (TypeBirth = '3')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip6Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age6Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 5.5) AND (TypeBirth = '3')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin2Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age2Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age < 2.5) AND (TypeBirth = '2')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin3Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age3Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 2.5) AND (Age < 3.5) AND (TypeBirth = '2')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin4Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age4Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 3.5) AND (Age < 4.5) AND (TypeBirth = '2')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin5Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age5Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 4.5) AND (Age < 5.5) AND (TypeBirth = '2')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin6Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age AS Age6Yr
FROM SumFlockManagmV_BearDistr_AllAge
WHERE (Age >= 5.5) AND (TypeBirth = '2')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared1st_LambKidCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_BornBeared1st_LambKidCount
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS real) 
    AS CountIDDam
FROM SumFlockManagmV_BornBeared1st_LambKid
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared2nd_LambKidCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_BornBeared2nd_LambKidCount
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS real) 
    AS CountIDDam
FROM SumFlockManagmV_BornBeared2nd_LambKid
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed1st_MateCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS real) 
    AS CountIDDam
FROM SumFlockManagmV_BornExposed1st_Mate
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed2nd_MateCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS real) 
    AS CountIDDam
FROM SumFlockManagmV_BornExposed2nd_Mate
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Concept1st_LambKidCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS real) 
    AS CountIDDam
FROM SumFlockManagmV_Concept1st_LambKid
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Concept1st_MateCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS real) 
    AS CountIDDam
FROM SumFlockManagmV_Concept1st_Mate
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Concept2nd_LambKidCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS real) 
    AS CountIDDam
FROM SumFlockManagmV_Concept2nd_LambKid
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Concept2nd_MateCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS real) 
    AS CountIDDam
FROM SumFlockManagmV_Concept2nd_Mate
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_Disp_All
AS
SELECT Disposition.IDDispReas, 
    SumFlockManagmV_Disp_Avail.IDFarm, 
    SumFlockManagmV_Disp_Avail.CountIDSheepGoat / SumFlockManagmV_Disp_Total.CountIDSheepGoat
     * 100 AS [Percent]
FROM SumFlockManagmV_Disp_Avail INNER JOIN
    SumFlockManagmV_Disp_Total ON 
    SumFlockManagmV_Disp_Avail.IDFarm = SumFlockManagmV_Disp_Total.IDFarm
     RIGHT OUTER JOIN
    Disposition ON 
    SumFlockManagmV_Disp_Avail.IDDispReas = Disposition.IDDispReas
WHERE (Disposition.IDDispReas <> '-')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT Disposition.IDDispReas, 
    SumFlockManagmV_Disp_MatrFemaleAvail.IDFarm, 
    SumFlockManagmV_Disp_MatrFemaleAvail.CountIDSheepGoat
FROM Disposition LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAvail ON 
    Disposition.IDDispReas = SumFlockManagmV_Disp_MatrFemaleAvail.IDDispReas
WHERE (Disposition.IDDispReas <> '-')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT Disposition.IDDispReas, 
    SumFlockManagmV_Disp_MatrMaleAvail.IDFarm, 
    SumFlockManagmV_Disp_MatrMaleAvail.CountIDSheepGoat
FROM Disposition LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAvail ON 
    Disposition.IDDispReas = SumFlockManagmV_Disp_MatrMaleAvail.IDDispReas
WHERE (Disposition.IDDispReas <> '-')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT Disposition.IDDispReas, 
    SumFlockManagmV_Disp_YngAvail.IDFarm, 
    SumFlockManagmV_Disp_YngAvail.CountIDSheepGoat
FROM Disposition LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAvail ON 
    Disposition.IDDispReas = SumFlockManagmV_Disp_YngAvail.IDDispReas
WHERE (Disposition.IDDispReas <> '-')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_2nd    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_Inter_2nd
AS
SELECT SumFlockManagmV_Inter_2ndCycleLambKid.IDFarm, 
    CAST((SumFlockManagmV_Inter_3rdCycleLambKid.DateLambKid
     - SumFlockManagmV_Inter_2ndCycleLambKid.DateLambKid) 
    AS SMALLINT) AS Inter
FROM SumFlockManagmV_Inter_2ndCycleLambKid INNER JOIN
    SumFlockManagmV_Inter_3rdCycleLambKid ON 
    SumFlockManagmV_Inter_2ndCycleLambKid.IDDam = SumFlockManagmV_Inter_3rdCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_3rd    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_Inter_3rd
AS
SELECT SumFlockManagmV_Inter_3rdCycleLambKid.IDFarm, 
    CAST((SumFlockManagmV_Inter_4thCycleLambKid.DateLambKid
     - SumFlockManagmV_Inter_3rdCycleLambKid.DateLambKid) 
    AS SMALLINT) AS Inter
FROM SumFlockManagmV_Inter_3rdCycleLambKid INNER JOIN
    SumFlockManagmV_Inter_4thCycleLambKid ON 
    SumFlockManagmV_Inter_3rdCycleLambKid.IDDam = SumFlockManagmV_Inter_4thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_4th    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_Inter_4thCycleLambKid.IDFarm, 
    CAST((SumFlockManagmV_Inter_5thCycleLambKid.DateLambKid
     - SumFlockManagmV_Inter_4thCycleLambKid.DateLambKid) 
    AS SMALLINT) AS Inter
FROM SumFlockManagmV_Inter_4thCycleLambKid INNER JOIN
    SumFlockManagmV_Inter_5thCycleLambKid ON 
    SumFlockManagmV_Inter_4thCycleLambKid.IDDam = SumFlockManagmV_Inter_5thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_5th    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_Inter_5thCycleLambKid.IDFarm, 
    CAST((SumFlockManagmV_Inter_6thCycleLambKid.DateLambKid
     - SumFlockManagmV_Inter_5thCycleLambKid.DateLambKid) 
    AS SMALLINT) AS Inter
FROM SumFlockManagmV_Inter_5thCycleLambKid INNER JOIN
    SumFlockManagmV_Inter_6thCycleLambKid ON 
    SumFlockManagmV_Inter_5thCycleLambKid.IDDam = SumFlockManagmV_Inter_6thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_6th    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_Inter_6th
AS
SELECT SumFlockManagmV_Inter_6thCycleLambKid.IDFarm, 
    CAST((SumFlockManagmV_Inter_7thCycleLambKid.DateLambKid
     - SumFlockManagmV_Inter_6thCycleLambKid.DateLambKid) 
    AS SMALLINT) AS Inter
FROM SumFlockManagmV_Inter_6thCycleLambKid INNER JOIN
    SumFlockManagmV_Inter_7thCycleLambKid ON 
    SumFlockManagmV_Inter_6thCycleLambKid.IDDam = SumFlockManagmV_Inter_7thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_7th    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW7
AS
SELECT SumFlockManagmV_Inter_7thCycleLambKid.IDFarm, 
    CAST((SumFlockManagmV_Inter_8thCycleLambKid.DateLambKid
     - SumFlockManagmV_Inter_7thCycleLambKid.DateLambKid) 
    AS SMALLINT) AS Inter
FROM SumFlockManagmV_Inter_7thCycleLambKid INNER JOIN
    SumFlockManagmV_Inter_8thCycleLambKid ON 
    SumFlockManagmV_Inter_7thCycleLambKid.IDDam = SumFlockManagmV_Inter_8thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_8th    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW8
AS
SELECT SumFlockManagmV_Inter_8thCycleLambKid.IDFarm, 
    CAST((SumFlockManagmV_Inter_9thCycleLambKid.DateLambKid
     - SumFlockManagmV_Inter_8thCycleLambKid.DateLambKid) 
    AS SMALLINT) AS Inter
FROM SumFlockManagmV_Inter_8thCycleLambKid INNER JOIN
    SumFlockManagmV_Inter_9thCycleLambKid ON 
    SumFlockManagmV_Inter_8thCycleLambKid.IDDam = SumFlockManagmV_Inter_9thCycleLambKid.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_GreaseAge6Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age, GreaseAnnl AS AvgGreaseAnnl
FROM SumFlockManagmV_PerfAge_GreaseAge
WHERE (Age >= 6)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_GreaseGroup    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age, AVG(GreaseAnnl) AS AvgGreaseAnnl
FROM SumFlockManagmV_PerfAge_GreaseAge
GROUP BY IDFarm, Age
HAVING (Age < 6)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_WeightAge6Yr    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, Age, WtAnnl AS AvgWtAnnl
FROM SumFlockManagmV_PerfAge_WeightAge
WHERE (Age >= 6)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_WeightGroup    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_PerfAge_Weight5Yrs
AS
SELECT IDFarm, Age, AVG(WtAnnl) AS AvgWtAnnl
FROM SumFlockManagmV_PerfAge_WeightAge
GROUP BY IDFarm, Age
HAVING (Age < 6)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_IDAgeSex    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDAgeSex
FROM AgeSex

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_WeightAnnl    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_PerfSexAge_WeightAnnl
AS
SELECT SumFlockManagmV_PerfSexAge_WeightMaxAge.IDSheepGoat,
     SumFlockManagm_WeightAnnl.WtAnnl
FROM SumFlockManagmV_PerfSexAge_WeightMaxAge INNER JOIN
    SumFlockManagm_WeightAnnl ON 
    SumFlockManagmV_PerfSexAge_WeightMaxAge.IDSheepGoat =
     SumFlockManagm_WeightAnnl.IDSheepGoat AND 
    SumFlockManagmV_PerfSexAge_WeightMaxAge.MaxAge = SumFlockManagm_WeightAnnl.Age

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_WoolAnnl    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_PerfSexAge_WoolAnnl
AS
SELECT SumFlockManagmV_PerfSexAge_WoolMaxAge.IDSheepGoat,
     SumFlockManagm_WoolAnnl.GreaseAnnl
FROM SumFlockManagmV_PerfSexAge_WoolMaxAge INNER JOIN
    SumFlockManagm_WoolAnnl ON 
    SumFlockManagmV_PerfSexAge_WoolMaxAge.IDSheepGoat = SumFlockManagm_WoolAnnl.IDSheepGoat
     AND 
    SumFlockManagmV_PerfSexAge_WoolMaxAge.MaxAge = SumFlockManagm_WoolAnnl.Age

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned1st_LambKidCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS real) 
    AS CountIDDam
FROM SumFlockManagmV_Weaned1st_LambKid
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned2nd_LambKidCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDDam) AS real) 
    AS CountIDDam
FROM SumFlockManagmV_Weaned2nd_LambKid
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumPerformV_AgeSexName    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumPerformV_AgeSexName
AS
SELECT SumPerformV_AgeSexCode.IDFarm, 
    SumPerformV_AgeSexCode.IDAgeSex, AgeSex.AgeSex
FROM SumPerformV_AgeSexCode INNER JOIN
    AgeSex ON 
    SumPerformV_AgeSexCode.IDAgeSex = AgeSex.IDAgeSex

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter_Union    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT *
FROM CertEweShegoatV_Inter_2nd
UNION ALL
SELECT *
FROM CertEweShegoatV_Inter_3rd
UNION ALL
SELECT *
FROM CertEweShegoatV_Inter_4th
UNION ALL
SELECT *
FROM CertEweShegoatV_Inter_5th
UNION ALL
SELECT *
FROM CertEweShegoatV_Inter_6th
UNION ALL
SELECT *
FROM CertEweShegoatV_Inter_7th
UNION ALL
SELECT *
FROM CertEweShegoatV_Inter_8th

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_PerfAge    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT CertV_PerfAge_All1Yr.IDSheepGoat, 
    CertV_PerfAge_All1Yr.Wt1Yr, CertV_PerfAge_All2Yr.Wt2Yr, 
    CertV_PerfAge_All3Yr.Wt3Yr, CertV_PerfAge_All4Yr.Wt4Yr, 
    CertV_PerfAge_All5Yr.Wt5Yr, CertV_PerfAge_All6Yr.Wt6Yr, 
    CertV_PerfAge_All1Yr.Grease1Yr, 
    CertV_PerfAge_All2Yr.Grease2Yr, 
    CertV_PerfAge_All3Yr.Grease3Yr, 
    CertV_PerfAge_All4Yr.Grease4Yr, 
    CertV_PerfAge_All5Yr.Grease5Yr, 
    CertV_PerfAge_All6Yr.Grease6Yr
FROM CertV_PerfAge_All1Yr INNER JOIN
    CertV_PerfAge_All2Yr ON 
    CertV_PerfAge_All1Yr.IDSheepGoat = CertV_PerfAge_All2Yr.IDSheepGoat
     INNER JOIN
    CertV_PerfAge_All3Yr ON 
    CertV_PerfAge_All1Yr.IDSheepGoat = CertV_PerfAge_All3Yr.IDSheepGoat
     INNER JOIN
    CertV_PerfAge_All4Yr ON 
    CertV_PerfAge_All1Yr.IDSheepGoat = CertV_PerfAge_All4Yr.IDSheepGoat
     INNER JOIN
    CertV_PerfAge_All6Yr ON 
    CertV_PerfAge_All1Yr.IDSheepGoat = CertV_PerfAge_All6Yr.IDSheepGoat
     INNER JOIN
    CertV_PerfAge_All5Yr ON 
    CertV_PerfAge_All1Yr.IDSheepGoat = CertV_PerfAge_All5Yr.IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All2YrCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_All2YrCount
AS
SELECT IDFarm, CAST(COUNT(Age2Yr) AS REAL) 
    AS CountAge2Yr
FROM SumFlockManagmV_BearDistr_All2Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All3YrCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age3Yr) AS REAL) 
    AS CountAge3Yr
FROM SumFlockManagmV_BearDistr_All3Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All4YrCount    Script Date: 14.08.02 4:51:18 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age4Yr) AS REAL) 
    AS CountAge4Yr
FROM SumFlockManagmV_BearDistr_All4Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All5YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age5Yr) AS REAL) 
    AS CountAge5Yr
FROM SumFlockManagmV_BearDistr_All5Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All6YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age6Yr) AS REAL) 
    AS CountAge6Yr
FROM SumFlockManagmV_BearDistr_All6Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad2YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age2Yr) AS REAL) 
    AS CountAge2Yr
FROM SumFlockManagmV_BearDistr_Quad2Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad3YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age3Yr) AS REAL) 
    AS CountAge3Yr
FROM SumFlockManagmV_BearDistr_Quad3Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad4YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age4Yr) AS REAL) 
    AS CountAge4Yr
FROM SumFlockManagmV_BearDistr_Quad4Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad5YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age5Yr) AS REAL) 
    AS CountAge5Yr
FROM SumFlockManagmV_BearDistr_Quad5Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad6YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age6Yr) AS REAL) 
    AS CountAge6Yr
FROM SumFlockManagmV_BearDistr_Quad6Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing2YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age2Yr) AS REAL) 
    AS CountAge2Yr
FROM SumFlockManagmV_BearDistr_Sing2Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing3YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age3Yr) AS REAL) 
    AS CountAge3Yr
FROM SumFlockManagmV_BearDistr_Sing3Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing4YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age4Yr) AS REAL) 
    AS CountAge4Yr
FROM SumFlockManagmV_BearDistr_Sing4Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing5YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age5Yr) AS REAL) 
    AS CountAge5Yr
FROM SumFlockManagmV_BearDistr_Sing5Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing6YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age6Yr) AS REAL) 
    AS CountAge6Yr
FROM SumFlockManagmV_BearDistr_Sing6Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip2YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age2Yr) AS REAL) 
    AS CountAge2Yr
FROM SumFlockManagmV_BearDistr_Trip2Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip3YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age3Yr) AS REAL) 
    AS CountAge3Yr
FROM SumFlockManagmV_BearDistr_Trip3Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip4YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age4Yr) AS REAL) 
    AS CountAge4Yr
FROM SumFlockManagmV_BearDistr_Trip4Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip5YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age5Yr) AS REAL) 
    AS CountAge5Yr
FROM SumFlockManagmV_BearDistr_Trip5Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip6YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age6Yr) AS REAL) 
    AS CountAge6Yr
FROM SumFlockManagmV_BearDistr_Trip6Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin2YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age2Yr) AS REAL) 
    AS CountAge2Yr
FROM SumFlockManagmV_BearDistr_Twin2Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin3YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age3Yr) AS REAL) 
    AS CountAge3Yr
FROM SumFlockManagmV_BearDistr_Twin3Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin4YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age4Yr) AS REAL) 
    AS CountAge4Yr
FROM SumFlockManagmV_BearDistr_Twin4Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin5YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age5Yr) AS REAL) 
    AS CountAge5Yr
FROM SumFlockManagmV_BearDistr_Twin5Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin6YrCount    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(Age6Yr) AS REAL) 
    AS CountAge6Yr
FROM SumFlockManagmV_BearDistr_Twin6Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Concept1st    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.SumFlockManagmV_Concept1st
AS
SELECT SumFlockManagmV_Concept1st_MateCount.IDFarm, 
    SumFlockManagmV_Concept1st_LambKidCount.CountIDDam / SumFlockManagmV_Concept1st_MateCount.CountIDDam
     * 100 AS Concept1st
FROM SumFlockManagmV_Concept1st_MateCount INNER JOIN
    SumFlockManagmV_Concept1st_LambKidCount ON 
    SumFlockManagmV_Concept1st_MateCount.IDFarm = SumFlockManagmV_Concept1st_LambKidCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Concept2nd    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.SumFlockManagmV_Concept2nd
AS
SELECT SumFlockManagmV_Concept2nd_MateCount.IDFarm, 
    SumFlockManagmV_Concept2nd_LambKidCount.CountIDDam / SumFlockManagmV_Concept2nd_MateCount.CountIDDam
     * 100 AS Concept2nd
FROM SumFlockManagmV_Concept2nd_MateCount INNER JOIN
    SumFlockManagmV_Concept2nd_LambKidCount ON 
    SumFlockManagmV_Concept2nd_MateCount.IDFarm = SumFlockManagmV_Concept2nd_LambKidCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All01    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, [Percent] AS Percent01
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '01')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All02    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW02
AS
SELECT IDFarm, [Percent] AS Percent02
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '02')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All03    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW03
AS
SELECT IDFarm, [Percent] AS Percent03
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '03')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All04    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW04
AS
SELECT IDFarm, [Percent] AS Percent04
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '04')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All05    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, [Percent] AS Percent05
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '05')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All06    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW06
AS
SELECT IDFarm, [Percent] AS Percent06
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '06')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All07    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW07
AS
SELECT IDFarm, [Percent] AS Percent07
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '07')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All08    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW08
AS
SELECT IDFarm, [Percent] AS Percent08
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '08')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All09    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW09
AS
SELECT IDFarm, [Percent] AS Percent09
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '09')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All10    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW10
AS
SELECT IDFarm, [Percent] AS Percent10
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '10')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All11    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW11
AS
SELECT IDFarm, [Percent] AS Percent11
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '11')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_All12    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW12
AS
SELECT IDFarm, [Percent] AS Percent12
FROM SumFlockManagmV_Disp_All
WHERE (IDDispReas = '12')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll01    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[01]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale01
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '01')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll02    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[02]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale02
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '02')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll03    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[03]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale03
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '03')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll04    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[04]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale04
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '04')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll05    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[05]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale05
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '05')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll06    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[06]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale06
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '06')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll07    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[07]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale07
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '07')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll08    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[08]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale08
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '08')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll09    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[09]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale09
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '09')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll10    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[10]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale10
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '10')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll11    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[11]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale11
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '11')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrFemaleAll12    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.[12]
AS
SELECT IDFarm, CountIDSheepGoat AS MatrFemale12
FROM SumFlockManagmV_Disp_MatrFemaleAll
WHERE (IDDispReas = '12')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll01    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW01
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale01
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '01')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll02    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW02
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale02
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '02')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll03    Script Date: 14.08.02 4:51:19 ******/
CREATE VIEW dbo.VIEW03
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale03
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '03')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll04    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW04
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale04
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '04')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll05    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW05
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale05
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '05')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll06    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW06
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale06
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '06')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll07    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW07
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale07
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '07')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll08    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW08
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale08
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '08')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll09    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW09
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale09
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '09')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll10    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW10
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale10
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '10')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll11    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale11
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '11')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_MatrMaleAll12    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW12
AS
SELECT IDFarm, CountIDSheepGoat AS MatrMale12
FROM SumFlockManagmV_Disp_MatrMaleAll
WHERE (IDDispReas = '12')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll01    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CountIDSheepGoat AS Yng01
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '01')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll02    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[02]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng02
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '02')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll03    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[03]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng03
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '03')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll04    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[04]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng04
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '04')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll05    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[05]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng05
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '05')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll06    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[06]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng06
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '06')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll07    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[0]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng07
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '07')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll08    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[08]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng08
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '08')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll09    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[09]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng09
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '09')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll10    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[10]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng10
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '10')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll11    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[11]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng11
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '11')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp_YngAll12    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.[12]
AS
SELECT IDFarm, CountIDSheepGoat AS Yng12
FROM SumFlockManagmV_Disp_YngAll
WHERE (IDDispReas = '12')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter_Union    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_Inter_Union
AS
SELECT *
FROM SumFlockManagmV_Inter_2nd
UNION ALL
SELECT *
FROM SumFlockManagmV_Inter_3rd
UNION ALL
SELECT *
FROM SumFlockManagmV_Inter_4th
UNION ALL
SELECT *
FROM SumFlockManagmV_Inter_5th
UNION ALL
SELECT *
FROM SumFlockManagmV_Inter_6th
UNION ALL
SELECT *
FROM SumFlockManagmV_Inter_7th
UNION ALL
SELECT *
FROM SumFlockManagmV_Inter_8th

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease1Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AvgGreaseAnnl AS AvgGreaseAnnl1Yr
FROM SumFlockManagmV_PerfAge_GreaseGroup
WHERE (Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease2Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AvgGreaseAnnl AS AvgGreaseAnnl2Yr
FROM SumFlockManagmV_PerfAge_GreaseGroup
WHERE (Age = 2)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease3Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AvgGreaseAnnl AS AvgGreaseAnnl3Yr
FROM SumFlockManagmV_PerfAge_GreaseGroup
WHERE (Age = 3)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease4Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AvgGreaseAnnl AS AvgGreaseAnnl4Yr
FROM SumFlockManagmV_PerfAge_GreaseGroup
WHERE (Age = 4)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease5Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AvgGreaseAnnl AS AvgGreaseAnnl5Yr
FROM SumFlockManagmV_PerfAge_GreaseGroup
WHERE (Age = 5)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Grease6Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_PerfAge_Grease6Yr
AS
SELECT IDFarm, AVG(AvgGreaseAnnl) AS AvgGreaseAnnl6Yr
FROM SumFlockManagmV_PerfAge_GreaseAge6Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight1Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AvgWtAnnl AS AvgWtAnnl1Yr
FROM SumFlockManagmV_PerfAge_WeightGroup
WHERE (Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight2Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AvgWtAnnl AS AvgWtAnnl2Yr
FROM SumFlockManagmV_PerfAge_WeightGroup
WHERE (Age = 2)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight3Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AvgWtAnnl AS AvgWtAnnl3Yr
FROM SumFlockManagmV_PerfAge_WeightGroup
WHERE (Age = 3)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight4Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AvgWtAnnl AS AvgWtAnnl4Yr
FROM SumFlockManagmV_PerfAge_WeightGroup
WHERE (Age = 4)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight5Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AvgWtAnnl AS AvgWtAnnl5Yr
FROM SumFlockManagmV_PerfAge_WeightGroup
WHERE (Age = 5)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge_Weight6Yr    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_PerfAge_Weight6Yr
AS
SELECT IDFarm, AVG(AvgWtAnnl) AS AvgWtAnnl6Yr
FROM SumFlockManagmV_PerfAge_WeightAge6Yr
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Inter    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDDam, AVG(Inter) AS Inter
FROM CertEweShegoatV_Inter_Union
GROUP BY IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All2YrCountPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_All2YrCountPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_All2YrCount.CountAge2Yr, 
    SumFlockManagmV_BearDistr_All2YrCount.CountAge2Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge2YrAll
FROM SumFlockManagmV_BearDistr_All2YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_All2YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All3YrCountPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_All3YrCountPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_All3YrCount.CountAge3Yr, 
    SumFlockManagmV_BearDistr_All3YrCount.CountAge3Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge3YrAll
FROM SumFlockManagmV_BearDistr_All3YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_All3YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All4YrCountPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_All4YrCountPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_All4YrCount.CountAge4Yr, 
    SumFlockManagmV_BearDistr_All4YrCount.CountAge4Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge4YrAll
FROM SumFlockManagmV_BearDistr_All4YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_All4YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All5YrCountPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_All5YrCountPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_All5YrCount.CountAge5Yr, 
    SumFlockManagmV_BearDistr_All5YrCount.CountAge5Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge5YrAll
FROM SumFlockManagmV_BearDistr_All5YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_All5YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_All6YrCountPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_All6YrCountPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_All6YrCount.CountAge6Yr, 
    SumFlockManagmV_BearDistr_All6YrCount.CountAge6Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge6YrAll
FROM SumFlockManagmV_BearDistr_All6YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_All6YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad2YrPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Quad2YrCount.CountAge2Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge2YrQuad
FROM SumFlockManagmV_BearDistr_Quad2YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Quad2YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad3YrPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Quad3YrPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Sing3YrCount.CountAge3Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge3YrQuad
FROM SumFlockManagmV_BearDistr_Sing3YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Sing3YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad4YrPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Quad4YrCount.CountAge4Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge4YrQuad
FROM SumFlockManagmV_BearDistr_Quad4YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Quad4YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad5YrPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Quad5YrCount.CountAge5Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge5YrQuad
FROM SumFlockManagmV_BearDistr_Quad5YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Quad5YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Quad6YrPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Quad6YrCount.CountAge6Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge6YrQuad
FROM SumFlockManagmV_BearDistr_Quad6YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Quad6YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing2YrPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Sing2YrPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Sing2YrCount.CountAge2Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge2YrSing
FROM SumFlockManagmV_BearDistr_Sing2YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Sing2YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing3YrPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Sing3YrPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Sing3YrCount.CountAge3Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge3YrSing
FROM SumFlockManagmV_BearDistr_Sing3YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Sing3YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing4YrPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Sing4YrPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Sing4YrCount.CountAge4Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge4YrSing
FROM SumFlockManagmV_BearDistr_Sing4YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Sing4YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing5YrPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Sing5YrPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Sing5YrCount.CountAge5Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge5YrSing
FROM SumFlockManagmV_BearDistr_Sing5YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Sing5YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Sing6YrPercent    Script Date: 14.08.02 4:51:20 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr_Sing6YrPercent
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Sing6YrCount.CountAge6Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge6YrSing
FROM SumFlockManagmV_BearDistr_Sing6YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Sing6YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip2YrPercent    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Trip2YrCount.CountAge2Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge2YrTrip
FROM SumFlockManagmV_BearDistr_Trip2YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Trip2YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip3YrPercent    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Trip3YrCount.CountAge3Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge3YrTrip
FROM SumFlockManagmV_BearDistr_Trip3YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Trip3YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip4YrPercent    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Trip4YrCount.CountAge4Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge4YrTrip
FROM SumFlockManagmV_BearDistr_Trip4YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Trip4YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip5YrPercent    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Trip5YrCount.CountAge5Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge5YrTrip
FROM SumFlockManagmV_BearDistr_Trip5YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Trip5YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Trip6YrPercent    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Trip6YrCount.CountAge6Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge6YrTrip
FROM SumFlockManagmV_BearDistr_Trip6YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Trip6YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin2YrPercent    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Twin2YrCount.CountAge2Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge2YrTwin
FROM SumFlockManagmV_BearDistr_Twin2YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Twin2YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin3YrPercent    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Twin3YrCount.CountAge3Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge3YrTwin
FROM SumFlockManagmV_BearDistr_Twin3YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Twin3YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin4YrPercent    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Twin4YrCount.CountAge4Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge4YrTwin
FROM SumFlockManagmV_BearDistr_Twin4YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Twin4YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin5YrPercent    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Twin5YrCount.CountAge5Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge5YrTwin
FROM SumFlockManagmV_BearDistr_Twin5YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Twin5YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr_Twin6YrPercent    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BearDistr_AllCount.IDFarm, 
    SumFlockManagmV_BearDistr_Twin6YrCount.CountAge6Yr / SumFlockManagmV_BearDistr_AllCount.CountIDDam
     * 100 AS PercentAge6YrTwin
FROM SumFlockManagmV_BearDistr_Twin6YrCount INNER JOIN
    SumFlockManagmV_BearDistr_AllCount ON 
    SumFlockManagmV_BearDistr_Twin6YrCount.IDFarm = SumFlockManagmV_BearDistr_AllCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Disp    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_Farms.IDFarm, 
    SumFlockManagmV_Disp_MatrMaleAll01.MatrMale01, 
    SumFlockManagmV_Disp_MatrMaleAll02.MatrMale02, 
    SumFlockManagmV_Disp_MatrMaleAll03.MatrMale03, 
    SumFlockManagmV_Disp_MatrMaleAll04.MatrMale04, 
    SumFlockManagmV_Disp_MatrMaleAll05.MatrMale05, 
    SumFlockManagmV_Disp_MatrMaleAll06.MatrMale06, 
    SumFlockManagmV_Disp_MatrMaleAll07.MatrMale07, 
    SumFlockManagmV_Disp_MatrMaleAll08.MatrMale08, 
    SumFlockManagmV_Disp_MatrMaleAll09.MatrMale09, 
    SumFlockManagmV_Disp_MatrMaleAll10.MatrMale10, 
    SumFlockManagmV_Disp_MatrMaleAll11.MatrMale11, 
    SumFlockManagmV_Disp_MatrMaleAll12.MatrMale12, 
    SumFlockManagmV_Disp_MatrMaleTotal.MatrMaleTotal, 
    SumFlockManagmV_Disp_MatrFemaleAll01.MatrFemale01, 
    SumFlockManagmV_Disp_MatrFemaleAll02.MatrFemale02, 
    SumFlockManagmV_Disp_MatrFemaleAll03.MatrFemale03, 
    SumFlockManagmV_Disp_MatrFemaleAll04.MatrFemale04, 
    SumFlockManagmV_Disp_MatrFemaleAll05.MatrFemale05, 
    SumFlockManagmV_Disp_MatrFemaleAll06.MatrFemale06, 
    SumFlockManagmV_Disp_MatrFemaleAll07.MatrFemale07, 
    SumFlockManagmV_Disp_MatrFemaleAll08.MatrFemale08, 
    SumFlockManagmV_Disp_MatrFemaleAll09.MatrFemale09, 
    SumFlockManagmV_Disp_MatrFemaleAll10.MatrFemale10, 
    SumFlockManagmV_Disp_MatrFemaleAll11.MatrFemale11, 
    SumFlockManagmV_Disp_MatrFemaleAll12.MatrFemale12, 
    SumFlockManagmV_Disp_MatrFemaleTotal.MatrFemaleTotal, 
    SumFlockManagmV_Disp_YngAll01.Yng01, 
    SumFlockManagmV_Disp_YngAll02.Yng02, 
    SumFlockManagmV_Disp_YngAll03.Yng03, 
    SumFlockManagmV_Disp_YngAll04.Yng04, 
    SumFlockManagmV_Disp_YngAll05.Yng05, 
    SumFlockManagmV_Disp_YngAll06.Yng06, 
    SumFlockManagmV_Disp_YngAll07.Yng07, 
    SumFlockManagmV_Disp_YngAll08.Yng08, 
    SumFlockManagmV_Disp_YngAll09.Yng09, 
    SumFlockManagmV_Disp_YngAll10.Yng10, 
    SumFlockManagmV_Disp_YngAll11.Yng11, 
    SumFlockManagmV_Disp_YngAll12.Yng12, 
    SumFlockManagmV_Disp_YngTotal.YngTotal, 
    SumFlockManagmV_Disp_All01.Percent01, 
    SumFlockManagmV_Disp_All02.Percent02, 
    SumFlockManagmV_Disp_All03.Percent03, 
    SumFlockManagmV_Disp_All04.Percent04, 
    SumFlockManagmV_Disp_All05.Percent05, 
    SumFlockManagmV_Disp_All06.Percent06, 
    SumFlockManagmV_Disp_All07.Percent07, 
    SumFlockManagmV_Disp_All08.Percent08, 
    SumFlockManagmV_Disp_All09.Percent09, 
    SumFlockManagmV_Disp_All10.Percent10, 
    SumFlockManagmV_Disp_All11.Percent11, 
    SumFlockManagmV_Disp_All12.Percent12
FROM SumFlockManagm_Farms LEFT OUTER JOIN
    SumFlockManagmV_Disp_All12 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All12.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All11 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All11.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All10 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All10.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All09 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All09.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All08 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All08.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All07 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All07.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All06 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All06.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All05 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All05.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All04 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All04.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All03 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All03.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All02 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All02.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_All01 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_All01.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll12 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll12.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngTotal ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngTotal.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll11 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll11.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll10 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll10.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll08 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll08.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll09 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll09.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll07 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll07.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll06 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll06.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll04 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll04.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll05 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll05.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll03 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll03.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll02 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll02.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_YngAll01 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_YngAll01.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleTotal ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleTotal.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll12 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll12.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll11 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll11.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll10 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll10.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll09 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll09.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll08 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll08.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll07 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll07.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll06 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll06.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll05 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll05.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll04 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll04.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll03 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll03.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll02 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll02.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrFemaleAll01 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrFemaleAll01.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleTotal ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleTotal.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll12 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll12.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll11 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll11.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll10 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll10.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll09 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll09.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll08 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll08.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll07 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll07.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll06 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll06.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll05 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll05.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll04 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll04.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll03 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll03.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll02 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll02.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Disp_MatrMaleAll01 ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Disp_MatrMaleAll01.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Inter    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.SumFlockManagmV_Inter
AS
SELECT IDFarm, AVG(Inter) AS Inter
FROM SumFlockManagmV_Inter_Union
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfAge    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.SumFlockManagmV_PerfAge
AS
SELECT SumFlockManagm_Farms.IDFarm, 
    SumFlockManagmV_PerfAge_Weight1Yr.AvgWtAnnl1Yr, 
    SumFlockManagmV_PerfAge_Weight2Yr.AvgWtAnnl2Yr, 
    SumFlockManagmV_PerfAge_Weight3Yr.AvgWtAnnl3Yr, 
    SumFlockManagmV_PerfAge_Weight4Yr.AvgWtAnnl4Yr, 
    SumFlockManagmV_PerfAge_Weight5Yr.AvgWtAnnl5Yr, 
    SumFlockManagmV_PerfAge_Weight6Yr.AvgWtAnnl6Yr, 
    SumFlockManagmV_PerfAge_Grease1Yr.AvgGreaseAnnl1Yr, 
    SumFlockManagmV_PerfAge_Grease2Yr.AvgGreaseAnnl2Yr, 
    SumFlockManagmV_PerfAge_Grease3Yr.AvgGreaseAnnl3Yr, 
    SumFlockManagmV_PerfAge_Grease4Yr.AvgGreaseAnnl4Yr, 
    SumFlockManagmV_PerfAge_Grease5Yr.AvgGreaseAnnl5Yr, 
    SumFlockManagmV_PerfAge_Grease6Yr.AvgGreaseAnnl6Yr
FROM SumFlockManagm_Farms LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Grease6Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Grease6Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Grease5Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Grease5Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Grease4Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Grease4Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Grease3Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Grease3Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Grease2Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Grease2Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Grease1Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Grease1Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Weight6Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Weight6Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Weight5Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Weight5Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Weight4Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Weight4Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Weight3Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Weight3Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Weight2Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Weight2Yr.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfAge_Weight1Yr ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfAge_Weight1Yr.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Fetility    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.c
AS
SELECT Cert_SheepGoat.IDSheepGoat, 
    CertEweShegoatV_Inter.Inter, 
    CertEweShegoatV_BornLambKid.CountIDLambKid
FROM Cert_SheepGoat LEFT OUTER JOIN
    CertEweShegoatV_BornLambKid ON 
    Cert_SheepGoat.IDSheepGoat = CertEweShegoatV_BornLambKid.IDDam
     LEFT OUTER JOIN
    CertEweShegoatV_Inter ON 
    Cert_SheepGoat.IDSheepGoat = CertEweShegoatV_Inter.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BearDistr    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.SumFlockManagmV_BearDistr
AS
SELECT SumFlockManagm_Farms.IDFarm, 
    SumFlockManagmV_BearDistr_All2YrCountPercent.CountAge2Yr,
     SumFlockManagmV_BearDistr_All3YrCountPercent.CountAge3Yr,
     SumFlockManagmV_BearDistr_All4YrCountPercent.CountAge4Yr,
     SumFlockManagmV_BearDistr_All5YrCountPercent.CountAge5Yr,
     SumFlockManagmV_BearDistr_All6YrCountPercent.CountAge6Yr,
     SumFlockManagmV_BearDistr_All2YrCountPercent.PercentAge2YrAll,
     SumFlockManagmV_BearDistr_All3YrCountPercent.PercentAge3YrAll,
     SumFlockManagmV_BearDistr_All4YrCountPercent.PercentAge4YrAll,
     SumFlockManagmV_BearDistr_All5YrCountPercent.PercentAge5YrAll,
     SumFlockManagmV_BearDistr_All6YrCountPercent.PercentAge6YrAll,
     SumFlockManagmV_BearDistr_Sing2YrPercent.PercentAge2YrSing,
     SumFlockManagmV_BearDistr_Sing3YrPercent.PercentAge3YrSing,
     SumFlockManagmV_BearDistr_Sing4YrPercent.PercentAge4YrSing,
     SumFlockManagmV_BearDistr_Sing5YrPercent.PercentAge5YrSing,
     SumFlockManagmV_BearDistr_Sing6YrPercent.PercentAge6YrSing,
     SumFlockManagmV_BearDistr_Twin2YrPercent.PercentAge2YrTwin,
     SumFlockManagmV_BearDistr_Twin3YrPercent.PercentAge3YrTwin,
     SumFlockManagmV_BearDistr_Twin4YrPercent.PercentAge4YrTwin,
     SumFlockManagmV_BearDistr_Twin5YrPercent.PercentAge5YrTwin,
     SumFlockManagmV_BearDistr_Twin6YrPercent.PercentAge6YrTwin,
     SumFlockManagmV_BearDistr_Trip2YrPercent.PercentAge2YrTrip,
     SumFlockManagmV_BearDistr_Trip3YrPercent.PercentAge3YrTrip,
     SumFlockManagmV_BearDistr_Trip4YrPercent.PercentAge4YrTrip,
     SumFlockManagmV_BearDistr_Trip5YrPercent.PercentAge5YrTrip,
     SumFlockManagmV_BearDistr_Trip6YrPercent.PercentAge6YrTrip,
     SumFlockManagmV_BearDistr_Quad2YrPercent.PercentAge2YrQuad,
     SumFlockManagmV_BearDistr_Quad3YrPercent.PercentAge3YrQuad,
     SumFlockManagmV_BearDistr_Quad4YrPercent.PercentAge4YrQuad,
     SumFlockManagmV_BearDistr_Quad5YrPercent.PercentAge5YrQuad,
     SumFlockManagmV_BearDistr_Quad6YrPercent.PercentAge6YrQuad
FROM SumFlockManagm_Farms LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Quad6YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Quad6YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Quad5YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Quad5YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Quad4YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Quad4YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Quad3YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Quad3YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Quad2YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Quad2YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Trip6YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Trip6YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Trip5YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Trip5YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Trip4YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Trip4YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Trip3YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Trip3YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Trip2YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Trip2YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Twin6YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Twin6YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Twin5YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Twin5YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Twin4YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Twin4YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Twin3YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Twin3YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Twin2YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Twin2YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Sing6YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Sing6YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Sing5YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Sing5YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Sing4YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Sing4YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Sing3YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Sing3YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_Sing2YrPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_Sing2YrPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_All6YrCountPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_All6YrCountPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_All5YrCountPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_All5YrCountPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_All4YrCountPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_All4YrCountPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_All3YrCountPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_All3YrCountPercent.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BearDistr_All2YrCountPercent ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BearDistr_All2YrCountPercent.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Farms    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.SumFlockManagmV
AS
SELECT Persons.NamLast, Persons.NamFirst, Persons.NamPatr, 
    SumFlockManagm_Farms.IDFarm
FROM SumFlockManagm_Farms INNER JOIN
    Persons ON 
    SumFlockManagm_Farms.IDPersFarmer = Persons.IDPers

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumPerformV_Farms    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.SumPerformV_Farms
AS
SELECT DISTINCT 
    SumPerform_Farms.IDFarm, Persons.NamLast, 
    Persons.NamFirst, Persons.NamPatr
FROM SumPerform_Farms INNER JOIN
    Persons ON 
    SumPerform_Farms.IDPersFarmer = Persons.IDPers

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Temp    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertEweShegoatV
AS
SELECT Cert_SheepGoat.IDFarm, Persons.NamLast, 
    Persons.NamFirst, Persons.NamPatr, 
    Cert_SheepGoat.IDSheepGoat
FROM Cert_SheepGoat INNER JOIN
    Farms ON 
    Cert_SheepGoat.IDFarm = Farms.IDFarm INNER JOIN
    Persons ON Farms.IDPersFarmer = Persons.IDPers

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_IndividInfo    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertV_IndividInfo
AS
SELECT Cert_SheepGoat.IDFarm, Persons.NamLast, 
    Persons.NamFirst, Persons.NamPatr, 
    Cert_SheepGoat.IDSheepGoat, Cert_SheepGoat.BreedCross, 
    Cert_SheepGoat.DateBirth, Cert_SheepGoat.TypeBirth, 
    Cert_SheepGoat.IDFarmBirth
FROM Cert_SheepGoat INNER JOIN
    Farms ON 
    Cert_SheepGoat.IDFarm = Farms.IDFarm INNER JOIN
    Persons ON Farms.IDPersFarmer = Persons.IDPers

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Reproduct_MateLambKid    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertEweShegoatV_Reproduct_MateLambKid
AS
SELECT Mate.IDDam, Mate.DateMatFrom, Mate.DateMatTo, 
    Mate.IDSire, CertEweShegoat_LambKid.Cycle, 
    CertEweShegoat_LambKid.CycleLambKid, 
    CertEweShegoat_LambKid.DateLambKid
FROM Mate INNER JOIN
    CertEweShegoat_LambKid ON 
    Mate.IDDam = CertEweShegoat_LambKid.IDDam AND 
    Mate.CycleLambKid = CertEweShegoat_LambKid.CycleLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Reproduct_OffspringWeightWool1Yr    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertEweShegoatV_Reproduct_Offspring_WeightWool1Yr
AS
SELECT CertEweShegoat_Offspring.IDLambKid, 
    WeightWoolAnnl.WtAnnl AS Wt1Yr, 
    WeightWoolAnnl.GreaseAnnl, WeightWoolAnnl.Leng, 
    WeightWoolAnnl.Diam
FROM CertEweShegoat_Offspring INNER JOIN
    WeightWoolAnnl ON 
    CertEweShegoat_Offspring.IDLambKid = WeightWoolAnnl.IDSheepGoat
WHERE (WeightWoolAnnl.Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_Dam_MaxWeightWool    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.C
AS
SELECT Cert_SheepGoatDam.IDDam, MAX(WeightWoolAnnl.WtAnnl) 
    AS MaxWtAnnl, MAX(WeightWoolAnnl.GreaseAnnl) 
    AS MaxGreaseAnnl
FROM Cert_SheepGoatDam INNER JOIN
    WeightWoolAnnl ON 
    Cert_SheepGoatDam.IDDam = WeightWoolAnnl.IDSheepGoat
GROUP BY Cert_SheepGoatDam.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_DamsDam_MaxWeightWool    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.c
AS
SELECT Cert_SheepGoatDam.IDDamsDam, 
    MAX(WeightWoolAnnl.WtAnnl) AS MaxWtAnnl, 
    MAX(WeightWoolAnnl.GreaseAnnl) AS MaxGreaseAnnl
FROM Cert_SheepGoatDam INNER JOIN
    WeightWoolAnnl ON 
    Cert_SheepGoatDam.IDDamsDam = WeightWoolAnnl.IDSheepGoat
GROUP BY Cert_SheepGoatDam.IDDamsDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_DamsSire_MaxWeightWool    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT Cert_SheepGoatDam.IDDamsSire, 
    MAX(WeightWoolAnnl.WtAnnl) AS MaxWtAnnl, 
    MAX(WeightWoolAnnl.GreaseAnnl) AS MaxGreaseAnnl
FROM Cert_SheepGoatDam INNER JOIN
    WeightWoolAnnl ON 
    Cert_SheepGoatDam.IDDamsSire = WeightWoolAnnl.IDSheepGoat
GROUP BY Cert_SheepGoatDam.IDDamsSire

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_Sire_MaxWeightWool    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertV_Sire_MaxWeightWool
AS
SELECT Cert_SheepGoatSire.IDSire, MAX(WeightWoolAnnl.WtAnnl) 
    AS MaxWtAnnl, MAX(WeightWoolAnnl.GreaseAnnl) 
    AS MaxGreaseAnnl
FROM WeightWoolAnnl INNER JOIN
    Cert_SheepGoatSire ON 
    WeightWoolAnnl.IDSheepGoat = Cert_SheepGoatSire.IDSire
GROUP BY Cert_SheepGoatSire.IDSire

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_SiresDam_MaxWeightWool    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.C
AS
SELECT Cert_SheepGoatSire.IDSiresDam, 
    MAX(WeightWoolAnnl.WtAnnl) AS MaxWtAnnl, 
    MAX(WeightWoolAnnl.GreaseAnnl) AS MaxGreaseAnnl
FROM Cert_SheepGoatSire INNER JOIN
    WeightWoolAnnl ON 
    Cert_SheepGoatSire.IDSiresDam = WeightWoolAnnl.IDSheepGoat
GROUP BY Cert_SheepGoatSire.IDSiresDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_SiresSire_MaxWeightWool    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT Cert_SheepGoatSire.IDSiresSire, 
    MAX(WeightWoolAnnl.WtAnnl) AS MaxWtAnnl, 
    MAX(WeightWoolAnnl.GreaseAnnl) AS MaxGreaseAnnl
FROM Cert_SheepGoatSire INNER JOIN
    WeightWoolAnnl ON 
    Cert_SheepGoatSire.IDSiresSire = WeightWoolAnnl.IDSheepGoat
GROUP BY Cert_SheepGoatSire.IDSiresSire

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumPerformV_MaxAge    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.SumPerformV_MaxAge
AS
SELECT IDSheepGoat, MAX(Age) AS MaxAge
FROM WeightWoolAnnl
GROUP BY IDSheepGoat
HAVING (MAX(Age) > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertEweShegoatV_Reproduct_Offspring    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertEweShegoatV_Reproduct_Offspring
AS
SELECT CertEweShegoat_Offspring.IDDam, 
    CertEweShegoat_Offspring.Cycle, 
    CertEweShegoat_Offspring.IDLambKid, SexOffspring.Sex, 
    Liveability.Liv, CertEweShegoat_Offspring.WtBirth, 
    WeightWean.WtWean, Weight7Mon.Wt7Mon, 
    CertEweShegoatV_Reproduct_OffspringWeightWool1Yr.Wt1Yr, 
    CertEweShegoatV_Reproduct_OffspringWeightWool1Yr.GreaseAnnl,
     CertEweShegoatV_Reproduct_OffspringWeightWool1Yr.Leng, 
    CertEweShegoatV_Reproduct_OffspringWeightWool1Yr.Diam, 
    SelIndxCompClass.SelIndx, CopmClass.CompClass
FROM Weight7Mon RIGHT OUTER JOIN
    CertEweShegoat_Offspring INNER JOIN
    Liveability ON 
    CertEweShegoat_Offspring.IDLiv = Liveability.IDLiv INNER JOIN
    SexOffspring ON 
    CertEweShegoat_Offspring.IDSex = SexOffspring.IDSex LEFT OUTER
     JOIN
    CertEweShegoatV_Reproduct_OffspringWeightWool1Yr ON 
    CertEweShegoat_Offspring.IDLambKid = CertEweShegoatV_Reproduct_OffspringWeightWool1Yr.IDLambKid
     LEFT OUTER JOIN
    SelIndxCompClass INNER JOIN
    CopmClass ON 
    SelIndxCompClass.IDCompClass = CopmClass.IDCompClass ON
     CertEweShegoat_Offspring.IDLambKid = SelIndxCompClass.IDSheepGoat
     ON 
    Weight7Mon.IDLambKid = CertEweShegoat_Offspring.IDLambKid
     LEFT OUTER JOIN
    WeightWean ON 
    CertEweShegoat_Offspring.IDLambKid = WeightWean.IDLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_Dam    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertV_Dam
AS
SELECT Cert_SheepGoat.IDSheepGoat, 
    Cert_SheepGoatDam.IDDam, 
    Cert_SheepGoatDam.BreedCross AS BreedCrossDam, 
    CertV_Dam_MaxWeightWool.MaxWtAnnl AS MaxWtAnnlDam, 
    CertV_Dam_MaxWeightWool.MaxGreaseAnnl AS MaxGreaseAnnlDam,
     SelIndxCompClass.SelIndx AS SelIndxDam, 
    CopmClass.CompClass AS CompClassDam
FROM SelIndxCompClass INNER JOIN
    CopmClass ON 
    SelIndxCompClass.IDCompClass = CopmClass.IDCompClass RIGHT
     OUTER JOIN
    Cert_SheepGoatDam RIGHT OUTER JOIN
    Cert_SheepGoat ON 
    Cert_SheepGoatDam.IDDam = Cert_SheepGoat.IDDam ON 
    SelIndxCompClass.IDSheepGoat = Cert_SheepGoatDam.IDDam LEFT
     OUTER JOIN
    CertV_Dam_MaxWeightWool ON 
    Cert_SheepGoatDam.IDDam = CertV_Dam_MaxWeightWool.IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_DamsDam    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertV_DamsDam
AS
SELECT Cert_SheepGoat.IDSheepGoat, 
    Cert_SheepGoatDam.IDDamsDam, 
    SheepGoat.BreedCross AS BreedCrossDamsDam, 
    CertV_DamsDam_MaxWeightWool.MaxWtAnnl AS MaxWtAnnlDamsDam,
     CertV_DamsDam_MaxWeightWool.MaxGreaseAnnl AS MaxGreaseAnnlDamsDam,
     SelIndxCompClass.SelIndx AS SelIndxDamsDam, 
    CopmClass.CompClass AS CompClassDamsDam
FROM CertV_DamsDam_MaxWeightWool RIGHT OUTER JOIN
    SheepGoat INNER JOIN
    Cert_SheepGoatDam ON 
    SheepGoat.IDSheepGoat = Cert_SheepGoatDam.IDDamsDam RIGHT
     OUTER JOIN
    Cert_SheepGoat ON 
    Cert_SheepGoatDam.IDDam = Cert_SheepGoat.IDDam ON 
    CertV_DamsDam_MaxWeightWool.IDDamsDam = Cert_SheepGoatDam.IDDamsDam
     LEFT OUTER JOIN
    SelIndxCompClass INNER JOIN
    CopmClass ON 
    SelIndxCompClass.IDCompClass = CopmClass.IDCompClass ON
     SheepGoat.IDSheepGoat = SelIndxCompClass.IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_DamsSire    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertV_DamsSire
AS
SELECT Cert_SheepGoat.IDSheepGoat, 
    Cert_SheepGoatDam.IDDamsSire, 
    SheepGoat.BreedCross AS BreedCrossDamsSire, 
    CertV_DamsSire_MaxWeightWool.MaxWtAnnl AS MaxWtAnnlDamsSire,
     CertV_DamsSire_MaxWeightWool.MaxGreaseAnnl AS MaxGreaseAnnlDamsSire,
     SelIndxCompClass.SelIndx AS SelIndxDamsSire, 
    CopmClass.CompClass AS CompClassDamsSire
FROM Cert_SheepGoat LEFT OUTER JOIN
    Cert_SheepGoatDam INNER JOIN
    SheepGoat ON 
    Cert_SheepGoatDam.IDDamsSire = SheepGoat.IDSheepGoat ON
     Cert_SheepGoat.IDDam = Cert_SheepGoatDam.IDDam LEFT OUTER
     JOIN
    CopmClass INNER JOIN
    SelIndxCompClass ON 
    CopmClass.IDCompClass = SelIndxCompClass.IDCompClass ON
     SheepGoat.IDSheepGoat = SelIndxCompClass.IDSheepGoat LEFT
     OUTER JOIN
    CertV_DamsSire_MaxWeightWool ON 
    Cert_SheepGoatDam.IDDamsSire = CertV_DamsSire_MaxWeightWool.IDDamsSire

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_Sire    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertV_Sire
AS
SELECT Cert_SheepGoat.IDSheepGoat, Cert_SheepGoatSire.IDSire, 
    Cert_SheepGoatSire.BreedCross AS BreedCrossSire, 
    CertV_Sire_MaxWeightWool.MaxWtAnnl AS MaxWtAnnlSire, 
    CertV_Sire_MaxWeightWool.MaxGreaseAnnl AS MaxGreaseAnnlSire,
     SelIndxCompClass.SelIndx AS SelIndxSire, 
    CopmClass.CompClass AS CompClassSire, 
    Cert_SheepGoatSire.IDSiresSire, 
    Cert_SheepGoatSire.IDSiresDam
FROM CertV_Sire_MaxWeightWool RIGHT OUTER JOIN
    Cert_SheepGoatSire RIGHT OUTER JOIN
    Cert_SheepGoat ON 
    Cert_SheepGoatSire.IDSire = Cert_SheepGoat.IDSire ON 
    CertV_Sire_MaxWeightWool.IDSire = Cert_SheepGoatSire.IDSire
     LEFT OUTER JOIN
    CopmClass INNER JOIN
    SelIndxCompClass ON 
    CopmClass.IDCompClass = SelIndxCompClass.IDCompClass ON
     Cert_SheepGoatSire.IDSire = SelIndxCompClass.IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_SiresDam    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertV_SiresDam
AS
SELECT Cert_SheepGoat.IDSheepGoat, 
    Cert_SheepGoatSire.IDSiresDam, 
    SheepGoat.BreedCross AS BreedCrossSiresDam, 
    CertV_SiresDam_MaxWeightWool.MaxWtAnnl AS MaxWtAnnlSiresDam,
     CertV_SiresDam_MaxWeightWool.MaxGreaseAnnl AS MaxGreaseAnnlSiresDam,
     SelIndxCompClass.SelIndx AS SelIndxSiresDam, 
    CopmClass.CompClass AS CompClassSiresDam
FROM Cert_SheepGoat LEFT OUTER JOIN
    Cert_SheepGoatSire INNER JOIN
    SheepGoat ON 
    Cert_SheepGoatSire.IDSiresDam = SheepGoat.IDSheepGoat ON 
    Cert_SheepGoat.IDSire = Cert_SheepGoatSire.IDSire LEFT OUTER
     JOIN
    CopmClass INNER JOIN
    SelIndxCompClass ON 
    CopmClass.IDCompClass = SelIndxCompClass.IDCompClass ON
     SheepGoat.IDSheepGoat = SelIndxCompClass.IDSheepGoat LEFT
     OUTER JOIN
    CertV_SiresDam_MaxWeightWool ON 
    Cert_SheepGoatSire.IDSiresDam = CertV_SiresDam_MaxWeightWool.IDSiresDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_SiresSire    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertV_SiresSire
AS
SELECT Cert_SheepGoat.IDSheepGoat, 
    Cert_SheepGoatSire.IDSiresSire, 
    SheepGoat.BreedCross AS BreedCrossSiresSire, 
    CertV_SiresSire_MaxWeightWool.MaxWtAnnl AS MaxWtAnnlSiresSire,
     CertV_SiresSire_MaxWeightWool.MaxGreaseAnnl AS MaxGreaseAnnlSiresSire,
     SelIndxCompClass.SelIndx AS SelIndxSiresSire, 
    CopmClass.CompClass AS CompClassSiresSire
FROM Cert_SheepGoat LEFT OUTER JOIN
    Cert_SheepGoatSire INNER JOIN
    SheepGoat ON 
    Cert_SheepGoatSire.IDSiresSire = SheepGoat.IDSheepGoat ON 
    Cert_SheepGoat.IDSire = Cert_SheepGoatSire.IDSire LEFT OUTER
     JOIN
    CopmClass INNER JOIN
    SelIndxCompClass ON 
    CopmClass.IDCompClass = SelIndxCompClass.IDCompClass ON
     SheepGoat.IDSheepGoat = SelIndxCompClass.IDSheepGoat LEFT
     OUTER JOIN
    CertV_SiresSire_MaxWeightWool ON 
    Cert_SheepGoatSire.IDSiresSire = CertV_SiresSire_MaxWeightWool.IDSiresSire

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.InhertDefectV    Script Date: 14.08.02 4:51:21 ******/

/****** Object:  View dbo.InhertDefectV    Script Date: 21.07.02 0:09:49 ******/
CREATE VIEW dbo.InhertDefectV
AS
SELECT InhertDefect.IDSheepGoat, InhertDefect.IDDefect, 
    Defects.Defect
FROM InhertDefect INNER JOIN
    Defects ON InhertDefect.IDDefect = Defects.IDDefect


GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumPerformV_WeightWoolAnnl    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.SumPerformV_WeightWoolAnnl
AS
SELECT SumPerformV_MaxAge.IDSheepGoat, 
    WeightWoolAnnl.WtAnnl, WeightWoolAnnl.GreaseAnnl
FROM SumPerformV_MaxAge INNER JOIN
    WeightWoolAnnl ON 
    SumPerformV_MaxAge.IDSheepGoat = WeightWoolAnnl.IDSheepGoat
     AND SumPerformV_MaxAge.MaxAge = WeightWoolAnnl.Age

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.CertV_Perf    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.CertV_Perf
AS
SELECT Cert_SheepGoat.IDSheepGoat, Offspring.WtBirth, 
    WeightWean.WtWean, Weight7Mon.Wt7Mon, 
    CertV_WeightWool1Yr.Wt1Yr, 
    CertV_WeightWool1Yr.Grease1Yr, 
    CertV_WeightWool1Yr.Leng, CertV_WeightWool1Yr.Diam, 
    SelIndxCompClass.SelIndx, CopmClass.CompClass, 
    Appraisal.BodySize, Appraisal.BodyType, Appraisal.Constitutn, 
    Appraisal.FatTail, Appraisal.Mass, Appraisal.Density, 
    Appraisal.Strength, Appraisal.Crimpins, Appraisal.Evens, 
    Appraisal.Quality, WlGrsColour.Colour, Appraisal.Fluff, 
    Appraisal.FibtreYield
FROM WlGrsColour INNER JOIN
    Appraisal ON 
    WlGrsColour.IDColour = Appraisal.IDColour RIGHT OUTER JOIN
    CopmClass INNER JOIN
    SelIndxCompClass ON 
    CopmClass.IDCompClass = SelIndxCompClass.IDCompClass RIGHT
     OUTER JOIN
    Cert_SheepGoat ON 
    SelIndxCompClass.IDSheepGoat = Cert_SheepGoat.IDSheepGoat
     ON 
    Appraisal.IDSheepGoat = Cert_SheepGoat.IDSheepGoat LEFT OUTER
     JOIN
    CertV_WeightWool1Yr ON 
    Cert_SheepGoat.IDSheepGoat = CertV_WeightWool1Yr.IDSheepGoat
     LEFT OUTER JOIN
    Weight7Mon ON 
    Cert_SheepGoat.IDSheepGoat = Weight7Mon.IDLambKid LEFT OUTER
     JOIN
    WeightWean ON 
    Cert_SheepGoat.IDSheepGoat = WeightWean.IDLambKid LEFT OUTER
     JOIN
    Offspring ON 
    Cert_SheepGoat.IDSheepGoat = Offspring.IDLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared1st_Offspring    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_LambKid.IDFarm, 
    SumFlockManagm_LambKid.CycleLambKid, 
    Offspring.IDLambKid
FROM SumFlockManagm_LambKid INNER JOIN
    Offspring ON 
    SumFlockManagm_LambKid.IDDam = Offspring.IDDam AND 
    SumFlockManagm_LambKid.Cycle = Offspring.Cycle
WHERE (SumFlockManagm_LambKid.CycleLambKid = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared2nd_Offspring    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_LambKid.IDFarm, 
    SumFlockManagm_LambKid.CycleLambKid, 
    Offspring.IDLambKid
FROM SumFlockManagm_LambKid INNER JOIN
    Offspring ON 
    SumFlockManagm_LambKid.IDDam = Offspring.IDDam AND 
    SumFlockManagm_LambKid.Cycle = Offspring.Cycle
WHERE (SumFlockManagm_LambKid.CycleLambKid > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed1st_Offspring    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_LambKid.IDFarm, 
    SumFlockManagm_LambKid.CycleLambKid, 
    Offspring.IDLambKid
FROM SumFlockManagm_LambKid INNER JOIN
    Offspring ON 
    SumFlockManagm_LambKid.IDDam = Offspring.IDDam AND 
    SumFlockManagm_LambKid.Cycle = Offspring.Cycle
WHERE (SumFlockManagm_LambKid.CycleLambKid = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed2nd_Offspring    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_LambKid.IDFarm, 
    SumFlockManagm_LambKid.CycleLambKid, 
    Offspring.IDLambKid
FROM SumFlockManagm_LambKid INNER JOIN
    Offspring ON 
    SumFlockManagm_LambKid.IDDam = Offspring.IDDam AND 
    SumFlockManagm_LambKid.Cycle = Offspring.Cycle
WHERE (SumFlockManagm_LambKid.CycleLambKid > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_Avail    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.SumFlockManagmV_PerfSexAge
AS
SELECT SumFlockManagm_SheepGoat.IDFarm, 
    SumFlockManagm_SheepGoat.IDAgeSex, 
    AVG(Offspring.WtBirth) AS WtBirth, 
    AVG(SumFlockManagm_WeightWean.WtWean) AS WtWean, 
    AVG(SumFlockManagm_Weight7Mon.Wt7Mon) AS Wt7Mon, 
    AVG(SumFlockManagmV_PerfSexAge_Weight1Yr.Wt1Yr) 
    AS Wt1Yr, 
    AVG(SumFlockManagmV_PerfSexAge_WeightAnnl.WtAnnl) 
    AS WtAnnl, 
    AVG(SumFlockManagmV_PerfSexAge_Wool1Yr.Grease1Yr) 
    AS Grease1Yr, 
    AVG(SumFlockManagmV_PerfSexAge_WoolAnnl.GreaseAnnl) 
    AS GreaseAnnl, 
    AVG(SumFlockManagmV_PerfSexAge_Wool1Yr.Leng) AS Leng, 
    AVG(SumFlockManagmV_PerfSexAge_Wool1Yr.Diam) 
    AS Diam, AVG(SelIndxCompClass.SelIndx) AS SelIndx
FROM SumFlockManagmV_PerfSexAge_WeightAnnl RIGHT OUTER JOIN
    SumFlockManagm_SheepGoat LEFT OUTER JOIN
    SumFlockManagmV_PerfSexAge_WoolAnnl ON 
    SumFlockManagm_SheepGoat.IDSheepGoat = SumFlockManagmV_PerfSexAge_WoolAnnl.IDSheepGoat
     ON 
    SumFlockManagmV_PerfSexAge_WeightAnnl.IDSheepGoat = SumFlockManagm_SheepGoat.IDSheepGoat
     LEFT OUTER JOIN
    SumFlockManagmV_PerfSexAge_Wool1Yr ON 
    SumFlockManagm_SheepGoat.IDSheepGoat = SumFlockManagmV_PerfSexAge_Wool1Yr.IDSheepGoat
     LEFT OUTER JOIN
    SumFlockManagmV_PerfSexAge_Weight1Yr ON 
    SumFlockManagm_SheepGoat.IDSheepGoat = SumFlockManagmV_PerfSexAge_Weight1Yr.IDSheepGoat
     LEFT OUTER JOIN
    SumFlockManagm_Weight7Mon ON 
    SumFlockManagm_SheepGoat.IDSheepGoat = SumFlockManagm_Weight7Mon.IDLambKid
     LEFT OUTER JOIN
    SumFlockManagm_WeightWean ON 
    SumFlockManagm_SheepGoat.IDSheepGoat = SumFlockManagm_WeightWean.IDLambKid
     LEFT OUTER JOIN
    SumPerformV_WeightWoolAnnl ON 
    SumFlockManagm_SheepGoat.IDSheepGoat = SumPerformV_WeightWoolAnnl.IDSheepGoat
     LEFT OUTER JOIN
    SumPerformV_WeightWool1Yr ON 
    SumFlockManagm_SheepGoat.IDSheepGoat = SumPerformV_WeightWool1Yr.IDSheepGoat
     LEFT OUTER JOIN
    Offspring ON 
    SumFlockManagm_SheepGoat.IDSheepGoat = Offspring.IDLambKid
     LEFT OUTER JOIN
    SelIndxCompClass ON 
    SumFlockManagm_SheepGoat.IDSheepGoat = SelIndxCompClass.IDSheepGoat
GROUP BY SumFlockManagm_SheepGoat.IDFarm, 
    SumFlockManagm_SheepGoat.IDAgeSex

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned_WeightWean    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.SumFlockManagmV_WeightWean
AS
SELECT SumFlockManagm_LambKidWeaned.IDFarm, 
    SumFlockManagm_LambKidWeaned.CycleLambKid, 
    WeightWean.IDLambKid
FROM Offspring INNER JOIN
    SumFlockManagm_LambKidWeaned ON 
    Offspring.IDDam = SumFlockManagm_LambKidWeaned.IDDam AND
     Offspring.Cycle = SumFlockManagm_LambKidWeaned.Cycle INNER
     JOIN
    WeightWean ON 
    Offspring.IDLambKid = WeightWean.IDLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Wt1Yr1st_Select    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.SumFlockManagmV_Wt1Yr1st_Select
AS
SELECT SumFlockManagm_WeightAnnl.IDFarm, 
    SumFlockManagm_WeightAnnl.WtAnnl AS Wt1Yr
FROM LambKid INNER JOIN
    Offspring ON LambKid.IDDam = Offspring.IDDam AND 
    LambKid.Cycle = Offspring.Cycle INNER JOIN
    SumFlockManagm_WeightAnnl ON 
    Offspring.IDLambKid = SumFlockManagm_WeightAnnl.IDSheepGoat
WHERE (LambKid.CycleLambKid = 1) AND 
    (SumFlockManagm_WeightAnnl.Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Wt1Yr2nd_Select    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_WeightAnnl.IDFarm, 
    SumFlockManagm_WeightAnnl.WtAnnl AS Wt1Yr
FROM LambKid INNER JOIN
    Offspring ON LambKid.IDDam = Offspring.IDDam AND 
    LambKid.Cycle = Offspring.Cycle INNER JOIN
    SumFlockManagm_WeightAnnl ON 
    Offspring.IDLambKid = SumFlockManagm_WeightAnnl.IDSheepGoat
WHERE (LambKid.CycleLambKid > 1) AND 
    (SumFlockManagm_WeightAnnl.Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Wt7Mon1st_Select    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_Weight7Mon.IDFarm, 
    SumFlockManagm_Weight7Mon.Wt7Mon
FROM Offspring INNER JOIN
    LambKid ON Offspring.IDDam = LambKid.IDDam AND 
    Offspring.Cycle = LambKid.Cycle INNER JOIN
    SumFlockManagm_Weight7Mon ON 
    Offspring.IDLambKid = SumFlockManagm_Weight7Mon.IDLambKid
WHERE (LambKid.CycleLambKid = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Wt7Mon2nd_Select    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_Weight7Mon.IDFarm, 
    SumFlockManagm_Weight7Mon.Wt7Mon
FROM Offspring INNER JOIN
    LambKid ON Offspring.IDDam = LambKid.IDDam AND 
    Offspring.Cycle = LambKid.Cycle INNER JOIN
    SumFlockManagm_Weight7Mon ON 
    Offspring.IDLambKid = SumFlockManagm_Weight7Mon.IDLambKid
WHERE (LambKid.CycleLambKid > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_WtBirth1st_Select    Script Date: 14.08.02 4:51:21 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_LambKid.IDFarm, 
    Offspring.WtBirth
FROM SumFlockManagm_LambKid INNER JOIN
    Offspring ON 
    SumFlockManagm_LambKid.IDDam = Offspring.IDDam
WHERE (SumFlockManagm_LambKid.CycleLambKid = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_WtBirth2nd_Select    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_LambKid.IDFarm, 
    Offspring.WtBirth
FROM SumFlockManagm_LambKid INNER JOIN
    Offspring ON 
    SumFlockManagm_LambKid.IDDam = Offspring.IDDam
WHERE (SumFlockManagm_LambKid.CycleLambKid > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_WtWean1st_Select    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_WtWean
AS
SELECT SumFlockManagm_WeightWean.IDFarm, 
    SumFlockManagm_WeightWean.WtWean
FROM Offspring INNER JOIN
    LambKid ON Offspring.IDDam = LambKid.IDDam AND 
    Offspring.Cycle = LambKid.Cycle INNER JOIN
    SumFlockManagm_WeightWean ON 
    Offspring.IDLambKid = SumFlockManagm_WeightWean.IDLambKid
WHERE (LambKid.CycleLambKid = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_WtWean2nd_Select    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_WeightWean.IDFarm, 
    SumFlockManagm_WeightWean.WtWean
FROM Offspring INNER JOIN
    LambKid ON Offspring.IDDam = LambKid.IDDam AND 
    Offspring.Cycle = LambKid.Cycle INNER JOIN
    SumFlockManagm_WeightWean ON 
    Offspring.IDLambKid = SumFlockManagm_WeightWean.IDLambKid
WHERE (LambKid.CycleLambKid > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_FarmSireOffspring    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV_FarmSireOffspring
AS
SELECT SheepGoat.IDFarm, Mate.IDSire, LambKid.DateLambKid, 
    Offspring.IDLambKid, Offspring.WtBirth
FROM Mate INNER JOIN
    LambKid ON Mate.IDDam = LambKid.IDDam AND 
    Mate.Cycle = LambKid.Cycle INNER JOIN
    Offspring ON LambKid.IDDam = Offspring.IDDam AND 
    LambKid.Cycle = Offspring.Cycle INNER JOIN
    SheepGoat ON 
    Mate.IDSire = SheepGoat.IDSheepGoat
WHERE (SheepGoat.IDFarm = 'АА') AND 
    (Offspring.IDLambKid <> '-') AND 
    (SheepGoat.IDDispReas = '-')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumPerformV    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumPerformV_Temp
AS
SELECT SumPerform_SheepGoat.IDFarm, 
    SumPerform_SheepGoat.IDSheepGoat, 
    SumPerform_SheepGoat.IDAgeSex, 
    SumPerform_SheepGoat.BreedCross, 
    SumPerform_SheepGoat.DateBirth, 
    SumPerform_SheepGoat.TypeBirth, Offspring.WtBirth, 
    WeightWean.WtWean, Weight7Mon.Wt7Mon, 
    SumPerformV_WeightWool1Yr.Wt1Yr, 
    SumPerformV_WeightWoolAnnl.WtAnnl, 
    SumPerformV_WeightWool1Yr.Grease1Yr, 
    SumPerformV_WeightWoolAnnl.GreaseAnnl, 
    SumPerformV_WeightWool1Yr.Leng, 
    SumPerformV_WeightWool1Yr.Diam, 
    SelIndxCompClass.SelIndx, CopmClass.CompClass
FROM WeightWean RIGHT OUTER JOIN
    SumPerform_SheepGoat LEFT OUTER JOIN
    SumPerformV_WeightWoolAnnl ON 
    SumPerform_SheepGoat.IDSheepGoat = SumPerformV_WeightWoolAnnl.IDSheepGoat
     LEFT OUTER JOIN
    SumPerformV_WeightWool1Yr ON 
    SumPerform_SheepGoat.IDSheepGoat = SumPerformV_WeightWool1Yr.IDSheepGoat
     ON 
    WeightWean.IDLambKid = SumPerform_SheepGoat.IDSheepGoat
     LEFT OUTER JOIN
    Offspring ON 
    SumPerform_SheepGoat.IDSheepGoat = Offspring.IDLambKid LEFT
     OUTER JOIN
    Weight7Mon ON 
    SumPerform_SheepGoat.IDSheepGoat = Weight7Mon.IDLambKid
     LEFT OUTER JOIN
    CopmClass INNER JOIN
    SelIndxCompClass ON 
    CopmClass.IDCompClass = SelIndxCompClass.IDCompClass ON
     SumPerform_SheepGoat.IDSheepGoat = SelIndxCompClass.IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared1st_OffspringCount    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_BornBeared1st_OffspringCount
AS
SELECT IDFarm, CAST(COUNT(IDLambKid) AS real) 
    AS CountIDLambKid
FROM SumFlockManagmV_BornBeared1st_Offspring
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared2nd_OffspringCount    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_BornBeared2nd_OffspringCount
AS
SELECT IDFarm, CAST(COUNT(IDLambKid) AS real) 
    AS CountIDLambKid
FROM SumFlockManagmV_BornBeared2nd_Offspring
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed1st_OffspringCount    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDLambKid) AS real) 
    AS CountIDLambKid
FROM SumFlockManagmV_BornExposed1st_Offspring
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed2nd_OffspringCount    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDLambKid) AS real) 
    AS CountIDLambKid
FROM SumFlockManagmV_BornExposed2nd_Offspring
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_All    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_PerfSexAge_IDAgeSex.IDAgeSex, 
    SumFlockManagmV_PerfSexAge_Avail.IDFarm, 
    SumFlockManagmV_PerfSexAge_Avail.WtBirth, 
    SumFlockManagmV_PerfSexAge_Avail.WtWean, 
    SumFlockManagmV_PerfSexAge_Avail.Wt7Mon, 
    SumFlockManagmV_PerfSexAge_Avail.Wt1Yr, 
    SumFlockManagmV_PerfSexAge_Avail.WtAnnl, 
    SumFlockManagmV_PerfSexAge_Avail.Grease1Yr, 
    SumFlockManagmV_PerfSexAge_Avail.GreaseAnnl, 
    SumFlockManagmV_PerfSexAge_Avail.Leng, 
    SumFlockManagmV_PerfSexAge_Avail.Diam, 
    SumFlockManagmV_PerfSexAge_Avail.SelIndx
FROM SumFlockManagmV_PerfSexAge_IDAgeSex LEFT OUTER JOIN
    SumFlockManagmV_PerfSexAge_Avail ON 
    SumFlockManagmV_PerfSexAge_IDAgeSex.IDAgeSex = SumFlockManagmV_PerfSexAge_Avail.IDAgeSex

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned1st_WeightWean    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_Weaned1st_WeightWean
AS
SELECT IDFarm, IDLambKid, CycleLambKid
FROM SumFlockManagmV_Weaned_WeightWean
WHERE (CycleLambKid = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned2nd_WeightWean    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDLambKid, CycleLambKid
FROM SumFlockManagmV_Weaned_WeightWean
WHERE (CycleLambKid > 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Wt7Mon1st    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AVG(Wt7Mon) AS Wt7Mon1st
FROM SumFlockManagmV_Wt7Mon1st_Select
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Wt7Mon2nd    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AVG(Wt7Mon) AS Wt7Mon2nd
FROM SumFlockManagmV_Wt7Mon2nd_Select
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_WtBirth1st    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_WtBirth1st
AS
SELECT IDFarm, AVG(WtBirth) AS WtBirth1st
FROM SumFlockManagmV_WtBirth1st_Select
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_WtBirth2nd    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_WtBirth2nd
AS
SELECT IDFarm, AVG(WtBirth) AS WtBirth2nd
FROM SumFlockManagmV_WtBirth2nd_Select
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_WtWean1st    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AVG(WtWean) AS WtWean1st
FROM SumFlockManagmV_WtWean1st_Select
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_WtWean2nd    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AVG(WtWean) AS WtWean2nd
FROM SumFlockManagmV_WtWean2nd_Select
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_WeightWoolFarm    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV_WeightWoolFarm
AS
SELECT SumGenEvalV_FarmSireOffspring.IDFarm, 
    AVG(WeightWoolAnnl.WtAnnl) AS AvgWt1Yr, 
    AVG(WeightWoolAnnl.GreaseAnnl) AS AvgGrease1Yr, 
    AVG(WeightWoolAnnl.Leng) AS AvgLeng, 
    AVG(WeightWoolAnnl.Diam) AS AvgDiam
FROM SumGenEvalV_FarmSireOffspring INNER JOIN
    WeightWoolAnnl ON 
    SumGenEvalV_FarmSireOffspring.IDLambKid = WeightWoolAnnl.IDSheepGoat
WHERE (GETDATE() - WeightWoolAnnl.DateAnnl < 1095) AND 
    (WeightWoolAnnl.Age = 1)
GROUP BY SumGenEvalV_FarmSireOffspring.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_WeightWoolSire    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV_WeightWoolSire
AS
SELECT SumGenEvalV_FarmSireOffspring.IDFarm, 
    SumGenEvalV_FarmSireOffspring.IDSire, 
    AVG(WeightWoolAnnl.WtAnnl) AS AvgWt1Yr, 
    AVG(WeightWoolAnnl.GreaseAnnl) AS AvgGrease1Yr, 
    AVG(WeightWoolAnnl.Leng) AS AvgLeng, 
    AVG(WeightWoolAnnl.Diam) AS AvgDiam
FROM SumGenEvalV_FarmSireOffspring INNER JOIN
    WeightWoolAnnl ON 
    SumGenEvalV_FarmSireOffspring.IDLambKid = WeightWoolAnnl.IDSheepGoat
WHERE (GETDATE() - WeightWoolAnnl.DateAnnl < 1095) AND 
    (WeightWoolAnnl.Age = 1)
GROUP BY SumGenEvalV_FarmSireOffspring.IDFarm, 
    SumGenEvalV_FarmSireOffspring.IDSire

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_Wt7MonFarm    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV_Wt7MonFarm
AS
SELECT SumGenEvalV_FarmSireOffspring.IDFarm, 
    AVG(Weight7Mon.Wt7Mon) AS AvgWt7Mon
FROM SumGenEvalV_FarmSireOffspring INNER JOIN
    Weight7Mon ON 
    SumGenEvalV_FarmSireOffspring.IDLambKid = Weight7Mon.IDLambKid
WHERE (GETDATE() - Weight7Mon.Date7Mon < 1095)
GROUP BY SumGenEvalV_FarmSireOffspring.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_Wt7MonSire    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV_Wt7MonSire
AS
SELECT SumGenEvalV_FarmSireOffspring.IDFarm, 
    SumGenEvalV_FarmSireOffspring.IDSire, 
    AVG(Weight7Mon.Wt7Mon) AS AvgWt7Mon
FROM SumGenEvalV_FarmSireOffspring INNER JOIN
    Weight7Mon ON 
    SumGenEvalV_FarmSireOffspring.IDLambKid = Weight7Mon.IDLambKid
WHERE (GETDATE() - Weight7Mon.Date7Mon < 1095)
GROUP BY SumGenEvalV_FarmSireOffspring.IDSire, 
    SumGenEvalV_FarmSireOffspring.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_WtBirthFarm    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, AVG(WtBirth) AS AvgWtBirth
FROM SumGenEvalV_FarmSireOffspring
WHERE (GETDATE() - DateLambKid <= 1095)
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_WtBirthSire    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, IDSire, AVG(WtBirth) AS AvgWtBirth
FROM SumGenEvalV_FarmSireOffspring
WHERE (GETDATE() - DateLambKid <= 1095)
GROUP BY IDSire, IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_WtWeanFarm    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumGenEvalV_FarmSireOffspring.IDFarm, 
    AVG(WeightWean.WtWean) AS AvgWtWean
FROM SumGenEvalV_FarmSireOffspring INNER JOIN
    WeightWean ON 
    SumGenEvalV_FarmSireOffspring.IDLambKid = WeightWean.IDLambKid
WHERE (GETDATE() - WeightWean.DateWean < 1095)
GROUP BY SumGenEvalV_FarmSireOffspring.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_WtWeanSire    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV_WtWeanSire
AS
SELECT SumGenEvalV_FarmSireOffspring.IDFarm, 
    SumGenEvalV_FarmSireOffspring.IDSire, 
    AVG(WeightWean.WtWean) AS AvgWtWean
FROM SumGenEvalV_FarmSireOffspring INNER JOIN
    WeightWean ON 
    SumGenEvalV_FarmSireOffspring.IDLambKid = WeightWean.IDLambKid
WHERE (GETDATE() - WeightWean.DateWean < 1095)
GROUP BY SumGenEvalV_FarmSireOffspring.IDSire, 
    SumGenEvalV_FarmSireOffspring.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared1st    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_BornBeared1st
AS
SELECT SumFlockManagmV_BornBeared1st_LambKidCount.IDFarm, 
    SumFlockManagmV_BornBeared1st_OffspringCount.CountIDLambKid
     / SumFlockManagmV_BornBeared1st_LambKidCount.CountIDDam
     AS BornBeared1st
FROM SumFlockManagmV_BornBeared1st_LambKidCount INNER JOIN
    SumFlockManagmV_BornBeared1st_OffspringCount ON 
    SumFlockManagmV_BornBeared1st_LambKidCount.IDFarm = SumFlockManagmV_BornBeared1st_OffspringCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornBeared2nd    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_BornBeared2nd
AS
SELECT SumFlockManagmV_BornBeared2nd_LambKidCount.IDFarm,
     SumFlockManagmV_BornBeared2nd_OffspringCount.CountIDLambKid
     / SumFlockManagmV_BornBeared2nd_LambKidCount.CountIDDam
     AS BornBeared2nd
FROM SumFlockManagmV_BornBeared2nd_LambKidCount INNER JOIN
    SumFlockManagmV_BornBeared2nd_OffspringCount ON 
    SumFlockManagmV_BornBeared2nd_LambKidCount.IDFarm = SumFlockManagmV_BornBeared2nd_OffspringCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed1st    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_BornExposed1st
AS
SELECT SumFlockManagmV_BornExposed1st_MateCount.IDFarm, 
    SumFlockManagmV_BornExposed1st_OffspringCount.CountIDLambKid
     / SumFlockManagmV_BornExposed1st_MateCount.CountIDDam
     AS BornExposed1st
FROM SumFlockManagmV_BornExposed1st_MateCount INNER JOIN
    SumFlockManagmV_BornExposed1st_OffspringCount ON 
    SumFlockManagmV_BornExposed1st_MateCount.IDFarm = SumFlockManagmV_BornExposed1st_OffspringCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_BornExposed2nd    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagmV_BornExposed2nd_MateCount.IDFarm, 
    SumFlockManagmV_BornExposed2nd_MateCount.CountIDDam AS
     CountIDDam2nd, 
    SumFlockManagmV_BornExposed2nd_OffspringCount.CountIDLambKid
     AS CountIDLambKid2nd, 
    SumFlockManagmV_BornExposed2nd_OffspringCount.CountIDLambKid
     / SumFlockManagmV_BornExposed2nd_MateCount.CountIDDam
     AS BornExposed2nd
FROM SumFlockManagmV_BornExposed2nd_MateCount INNER JOIN
    SumFlockManagmV_BornExposed2nd_OffspringCount ON 
    SumFlockManagmV_BornExposed2nd_MateCount.IDFarm = SumFlockManagmV_BornExposed2nd_OffspringCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_MatrFemale    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_PerfSexAge_MatrFemale
AS
SELECT IDAgeSex, IDFarm, WtBirth AS MatrFemaleWtBirth, 
    WtWean AS MatrFemaleWtWean, 
    Wt7Mon AS MatrFemaleWt7Mon, 
    Wt1Yr AS MatrFemaleWt1Yr, WtAnnl AS MatrFemaleWtAnnl, 
    Grease1Yr AS MatrFemaleGrease1Yr, 
    GreaseAnnl AS MatrFemaleGreaseAnnl, 
    Leng AS MatrFemaleLeng, Diam AS MatrFemaleDiam, 
    SelIndx AS MatrFemaleSelIndx
FROM SumFlockManagmV_PerfSexAge_All
WHERE (IDAgeSex = '2')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_MatrMale    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDAgeSex, IDFarm, WtBirth AS MatrMaleWtBirth, 
    WtWean AS MatrMaleWtWean, 
    Wt7Mon AS MatrMaleWt7Mon, Wt1Yr AS MatrMaleWt1Yr, 
    WtAnnl AS MatrMaleWtAnnl, 
    Grease1Yr AS MatrMaleGrease1Yr, 
    GreaseAnnl AS MatrMaleGreaseAnnl, Leng AS MatrMaleLeng, 
    Diam AS MatrMaleDiam, SelIndx AS MatrMaleSelIndx
FROM SumFlockManagmV_PerfSexAge_All
WHERE (IDAgeSex = '1')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge_Yng    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDAgeSex, IDFarm, WtBirth AS YngWtBirth, 
    WtWean AS YngWtWean, Wt7Mon AS YngWt7Mon, 
    Wt1Yr AS YngWt1Yr, WtAnnl AS YngWtAnnl, 
    Grease1Yr AS YngGrease1Yr, 
    GreaseAnnl AS YngGreaseAnnl, Leng AS YngLeng, 
    Diam AS YngDiam, SelIndx AS YngSelIndx
FROM SumFlockManagmV_PerfSexAge_All
WHERE (IDAgeSex = '3')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned1st_WeightWeanCount    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDLambKid) AS real) 
    AS CountIDLambKid
FROM SumFlockManagmV_Weaned1st_WeightWean
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned2nd_WeightWeanCount    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT IDFarm, CAST(COUNT(IDLambKid) AS real) 
    AS CountIDLambKid
FROM SumFlockManagmV_Weaned2nd_WeightWean
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_WeightWoolBV    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV_WeightWoolBV
AS
SELECT DISTINCT 
    SumGenEvalV_WeightWoolFarm.IDFarm, 
    SumGenEvalV_WeightWoolSire.IDSire, 
    (SumGenEvalV_WeightWoolSire.AvgWt1Yr - SumGenEvalV_WeightWoolFarm.AvgWt1Yr)
     * StandWeight.Heritbl AS BVWt1Yr, 
    (SumGenEvalV_WeightWoolSire.AvgGrease1Yr - SumGenEvalV_WeightWoolFarm.AvgGrease1Yr)
     * StandGrease.Heritbl AS BVGrease1Yr, 
    (SumGenEvalV_WeightWoolSire.AvgLeng - SumGenEvalV_WeightWoolFarm.AvgLeng)
     * StandLength.Heritbl AS BVLeng, 
    (SumGenEvalV_WeightWoolSire.AvgDiam - SumGenEvalV_WeightWoolFarm.AvgDiam)
     * StandDiameter.Heritbl AS BVDiam
FROM StandGrease INNER JOIN
    StandWeight ON 
    StandGrease.IDBreed = StandWeight.IDBreed INNER JOIN
    StandLength ON 
    StandGrease.IDBreed = StandLength.IDBreed INNER JOIN
    StandDiameter ON 
    StandGrease.IDBreed = StandDiameter.IDBreed, 
    SumGenEvalV_WeightWoolFarm INNER JOIN
    SumGenEvalV_WeightWoolSire ON 
    SumGenEvalV_WeightWoolFarm.IDFarm = SumGenEvalV_WeightWoolSire.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_Wt7MonBV    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV_Wt7MonBV
AS
SELECT DISTINCT 
    SumGenEvalV_Wt7MonFarm.IDFarm, 
    SumGenEvalV_Wt7MonSire.IDSire, 
    (SumGenEvalV_Wt7MonSire.AvgWt7Mon - SumGenEvalV_Wt7MonFarm.AvgWt7Mon)
     * StandWeight.Heritbl AS BVWt7Mon
FROM SumGenEvalV_Wt7MonSire INNER JOIN
    SumGenEvalV_Wt7MonFarm ON 
    SumGenEvalV_Wt7MonSire.IDFarm = SumGenEvalV_Wt7MonFarm.IDFarm,
     StandWeight

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_WtBirthBV    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV_WtBirthBV
AS
SELECT DISTINCT 
    SumGenEvalV_WtBirthFarm.IDFarm, 
    SumGenEvalV_WtBirthSire.IDSire, 
    (SumGenEvalV_WtBirthSire.AvgWtBirth - SumGenEvalV_WtBirthFarm.AvgWtBirth)
     * StandWeight.Heritbl AS BVWtBirth
FROM SumGenEvalV_WtBirthSire INNER JOIN
    SumGenEvalV_WtBirthFarm ON 
    SumGenEvalV_WtBirthSire.IDFarm = SumGenEvalV_WtBirthFarm.IDFarm,
     StandWeight

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV_WtWeanBV    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV_WtWeanBV
AS
SELECT DISTINCT 
    SumGenEvalV_WtWeanFarm.IDFarm, 
    SumGenEvalV_WtWeanSire.IDSire, 
    (SumGenEvalV_WtWeanSire.AvgWtWean - SumGenEvalV_WtWeanFarm.AvgWtWean)
     * StandWeight.Heritbl AS BVWtWean
FROM SumGenEvalV_WtWeanSire INNER JOIN
    SumGenEvalV_WtWeanFarm ON 
    SumGenEvalV_WtWeanSire.IDFarm = SumGenEvalV_WtWeanFarm.IDFarm,
     StandWeight

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_PerfSexAge    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.VIEW1
AS
SELECT SumFlockManagm_Farms.IDFarm, 
    SumFlockManagmV_PerfSexAge_MatrMale.MatrMaleWtBirth, 
    SumFlockManagmV_PerfSexAge_MatrMale.MatrMaleWtWean, 
    SumFlockManagmV_PerfSexAge_MatrMale.MatrMaleWt7Mon, 
    SumFlockManagmV_PerfSexAge_MatrMale.MatrMaleWt1Yr, 
    SumFlockManagmV_PerfSexAge_MatrMale.MatrMaleWtAnnl, 
    SumFlockManagmV_PerfSexAge_MatrMale.MatrMaleGrease1Yr,
     SumFlockManagmV_PerfSexAge_MatrMale.MatrMaleGreaseAnnl,
     SumFlockManagmV_PerfSexAge_MatrMale.MatrMaleLeng, 
    SumFlockManagmV_PerfSexAge_MatrMale.MatrMaleDiam, 
    SumFlockManagmV_PerfSexAge_MatrMale.MatrMaleSelIndx, 
    SumFlockManagmV_PerfSexAge_MatrFemale.MatrFemaleWtBirth,
     SumFlockManagmV_PerfSexAge_MatrFemale.MatrFemaleWtWean,
     SumFlockManagmV_PerfSexAge_MatrFemale.MatrFemaleWt7Mon,
     SumFlockManagmV_PerfSexAge_MatrFemale.MatrFemaleWt1Yr,
     SumFlockManagmV_PerfSexAge_MatrFemale.MatrFemaleWtAnnl,
     SumFlockManagmV_PerfSexAge_MatrFemale.MatrFemaleGrease1Yr,
     SumFlockManagmV_PerfSexAge_MatrFemale.MatrFemaleGreaseAnnl,
     SumFlockManagmV_PerfSexAge_MatrFemale.MatrFemaleLeng,
     SumFlockManagmV_PerfSexAge_MatrFemale.MatrFemaleDiam,
     SumFlockManagmV_PerfSexAge_MatrFemale.MatrFemaleSelIndx,
     SumFlockManagmV_PerfSexAge_Yng.YngWtBirth, 
    SumFlockManagmV_PerfSexAge_Yng.YngWtWean, 
    SumFlockManagmV_PerfSexAge_Yng.YngWt7Mon, 
    SumFlockManagmV_PerfSexAge_Yng.YngWt1Yr, 
    SumFlockManagmV_PerfSexAge_Yng.YngWtAnnl, 
    SumFlockManagmV_PerfSexAge_Yng.YngGrease1Yr, 
    SumFlockManagmV_PerfSexAge_Yng.YngGreaseAnnl, 
    SumFlockManagmV_PerfSexAge_Yng.YngLeng, 
    SumFlockManagmV_PerfSexAge_Yng.YngDiam, 
    SumFlockManagmV_PerfSexAge_Yng.YngSelIndx
FROM SumFlockManagm_Farms LEFT OUTER JOIN
    SumFlockManagmV_PerfSexAge_Yng ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfSexAge_Yng.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfSexAge_MatrFemale ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfSexAge_MatrFemale.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_PerfSexAge_MatrMale ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_PerfSexAge_MatrMale.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned1st    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_Weaned1st
AS
SELECT SumFlockManagmV_Weaned1st_LambKidCount.IDFarm, 
    SumFlockManagmV_Weaned1st_WeightWeanCount.CountIDLambKid
     / SumFlockManagmV_Weaned1st_LambKidCount.CountIDDam AS
     Weaned1st
FROM SumFlockManagmV_Weaned1st_LambKidCount INNER JOIN
    SumFlockManagmV_Weaned1st_WeightWeanCount ON 
    SumFlockManagmV_Weaned1st_LambKidCount.IDFarm = SumFlockManagmV_Weaned1st_WeightWeanCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Weaned2nd    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV_Weaned2nd
AS
SELECT SumFlockManagmV_Weaned2nd_LambKidCount.IDFarm, 
    SumFlockManagmV_Weaned2nd_WeightWeanCount.CountIDLambKid
     / SumFlockManagmV_Weaned2nd_LambKidCount.CountIDDam AS
     Weaned2nd
FROM SumFlockManagmV_Weaned2nd_LambKidCount INNER JOIN
    SumFlockManagmV_Weaned2nd_WeightWeanCount ON 
    SumFlockManagmV_Weaned2nd_LambKidCount.IDFarm = SumFlockManagmV_Weaned2nd_WeightWeanCount.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumGenEvalV    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumGenEvalV
AS
SELECT SumGenEvalV_WtBirthBV.IDFarm, Persons.NamLast, 
    Persons.NamFirst, Persons.NamPatr, 
    SumGenEvalV_WtBirthBV.IDSire, SheepGoat.BreedCross, 
    SheepGoat.DateBirth, SheepGoat.TypeBirth, 
    SumGenEvalV_WtBirthBV.BVWtBirth, 
    SumGenEvalV_WtWeanBV.BVWtWean, 
    SumGenEvalV_Wt7MonBV.BVWt7Mon, 
    SumGenEvalV_WeightWoolBV.BVWt1Yr, 
    SumGenEvalV_WeightWoolBV.BVGrease1Yr, 
    SumGenEvalV_WeightWoolBV.BVLeng, 
    SumGenEvalV_WeightWoolBV.BVDiam, 
    SelIndxCompClass.SelIndx, CopmClass.CompClass
FROM Farms INNER JOIN
    SumGenEvalV_WtBirthBV INNER JOIN
    SumGenEvalV_WtWeanBV ON 
    SumGenEvalV_WtBirthBV.IDSire = SumGenEvalV_WtWeanBV.IDSire
     INNER JOIN
    SumGenEvalV_Wt7MonBV ON 
    SumGenEvalV_WtBirthBV.IDSire = SumGenEvalV_Wt7MonBV.IDSire
     INNER JOIN
    SumGenEvalV_WeightWoolBV ON 
    SumGenEvalV_WtBirthBV.IDSire = SumGenEvalV_WeightWoolBV.IDSire
     INNER JOIN
    SheepGoat ON 
    SumGenEvalV_WtBirthBV.IDSire = SheepGoat.IDSheepGoat ON 
    Farms.IDFarm = SheepGoat.IDFarm INNER JOIN
    Persons ON 
    Farms.IDPersFarmer = Persons.IDPers LEFT OUTER JOIN
    CopmClass INNER JOIN
    SelIndxCompClass ON 
    CopmClass.IDCompClass = SelIndxCompClass.IDCompClass ON
     SheepGoat.IDSheepGoat = SelIndxCompClass.IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  View dbo.SumFlockManagmV_Product    Script Date: 14.08.02 4:51:22 ******/
CREATE VIEW dbo.SumFlockManagmV
AS
SELECT SumFlockManagm_Farms.IDFarm, 
    SumFlockManagmV_Concept1st.Concept1st, 
    SumFlockManagmV_Concept2nd.Concept2nd, 
    SumFlockManagmV_BornBeared1st.BornBeared1st, 
    SumFlockManagmV_BornBeared2nd.BornBeared2nd, 
    SumFlockManagmV_BornExposed1st.BornExposed1st, 
    SumFlockManagmV_BornExposed2nd.BornExposed2nd, 
    SumFlockManagmV_Weaned1st.Weaned1st, 
    SumFlockManagmV_Weaned2nd.Weaned2nd, 
    SumFlockManagmV_Age1st.Age1st, 
    SumFlockManagmV_Age2nd.Age2nd, 
    SumFlockManagmV_Inter.Inter, 
    SumFlockManagmV_Wool.GreaseAnnl, 
    SumFlockManagmV_Wool.Leng, 
    SumFlockManagmV_Wool.Diam, 
    SumFlockManagmV_WtBirth1st.WtBirth1st, 
    SumFlockManagmV_WtBirth2nd.WtBirth2nd, 
    SumFlockManagmV_WtWean1st.WtWean1st, 
    SumFlockManagmV_WtWean2nd.WtWean2nd, 
    SumFlockManagmV_Wt7Mon1st.Wt7Mon1st, 
    SumFlockManagmV_Wt7Mon2nd.Wt7Mon2nd, 
    SumFlockManagmV_Wt1Yr1st.Wt1Yr1st, 
    SumFlockManagmV_Wt1Yr2nd.Wt1Yr2nd
FROM SumFlockManagm_Farms LEFT OUTER JOIN
    SumFlockManagmV_Wt1Yr2nd ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Wt1Yr2nd.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Wt1Yr1st ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Wt1Yr1st.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Wt7Mon2nd ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Wt7Mon2nd.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Wt7Mon1st ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Wt7Mon1st.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_WtWean2nd ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_WtWean2nd.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_WtWean1st ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_WtWean1st.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_WtBirth2nd ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_WtBirth2nd.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_WtBirth1st ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_WtBirth1st.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Wool ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Wool.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Inter ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Inter.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Age2nd ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Age2nd.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Age1st ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Age1st.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Weaned2nd ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Weaned2nd.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Weaned1st ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Weaned1st.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BornExposed2nd ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BornExposed2nd.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BornExposed1st ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BornExposed1st.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BornBeared2nd ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BornBeared2nd.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_BornBeared1st ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_BornBeared1st.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Concept1st ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Concept1st.IDFarm
     LEFT OUTER JOIN
    SumFlockManagmV_Concept2nd ON 
    SumFlockManagm_Farms.IDFarm = SumFlockManagmV_Concept2nd.IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spAlter_SumFlockManagm_SheepGoat    Script Date: 14.08.02 4:51:22 ******/

CREATE PROCEDURE spAlter_SumFlockManagm_SheepGoat
AS
alter table SumFlockManagm_SheepGoat
add IDAgeSex char(1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spAlter_SumFlockManagm_SheepGoatDisp    Script Date: 14.08.02 4:51:22 ******/

CREATE PROCEDURE spAlter_SumFlockManagm_SheepGoatDisp
AS
ALTER TABLE SumFlockManagm_SheepGoatDisp
ADD IDAgeSex char(1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spAlter_SumPerform_SheepGoat    Script Date: 14.08.02 4:51:22 ******/

CREATE PROCEDURE spAlter_SumPerform_SheepGoat
AS
alter table SumPerform_SheepGoat
add IDAgeSex char(1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_Appraisal_IDSheepGoat    Script Date: 14.08.02 4:51:22 ******/

CREATE PROCEDURE spDelete_Appraisal_IDSheepGoat (@IDSheepGoat char(6))
AS
delete Appraisal
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_LambKid_IDDamCycle    Script Date: 14.08.02 4:51:22 ******/

CREATE PROCEDURE spDelete_LambKid_IDDamCycle (@IDDam char(6), @Cycle tinyint)
AS
delete LambKid
where IDDam = @IDDam and Cycle = @Cycle

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_Mate_IDDamCycle    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_Mate_IDDamCycle (@IDDam char(6), @Cycle tinyint)
AS
delete Mate
where IDDam = @IDDam and Cycle = @Cycle

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_Offspring_IDDamCycleNoLK    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_Offspring_IDDamCycleNoLK (@IDDam char(6), @Cycle tinyint, 
	@NoLambKid tinyint)
AS
delete Offspring
where IDDam = @IDDam and Cycle = @Cycle and NoLambKid = @NoLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_SheepGoat_IDShG    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_SheepGoat_IDShG (@IDSheepGoatOrigin char(6))
AS
delete SheepGoat
where IDSheepGoat = @IDSheepGoatOrigin

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_Weight1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_Weight1Yr_IDSheepGoat_Prev (@IDSheepGoat char(6))
AS
delete Weight1Yr
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_WeightAnnual_IDSheepGoatDateAnnl_Prev    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_WeightAnnual_IDSheepGoatDateAnnl_Prev (@IDSheepGoat char(6), 
	@DateAnnl varchar(8))
AS
SET DATEFORMAT dmy
delete WeightAnnual
where IDSheepGoat = @IDSheepGoat and DateAnnl = CAST(@DateAnnl AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_WeightAnnual_IDSheepGoatDateAnnl_Prev0    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_WeightAnnual_IDSheepGoatDateAnnl_Prev0 (@IDSheepGoat char(6), 
	@DateAnnl varchar(8))
AS
SET DATEFORMAT dmy
delete WeightAnnual
where IDSheepGoat = @IDSheepGoat and DateAnnl = CAST(@DateAnnl AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_WeightWean_IDLambKid    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_WeightWean_IDLambKid (@IDLambKid char(6))
AS
delete WeightWean
where IDLambKid = @IDLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_WeightWoolAnnl_IDSheepGoatAge    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_WeightWoolAnnl_IDSheepGoatAge (@IDSheepGoat char(6), 
	@Age tinyint)
AS
delete WeightWoolAnnl
where IDSheepGoat = @IDSheepGoat and Age = @Age

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_Wool1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_Wool1Yr_IDSheepGoat_Prev (@IDSheepGoat char(6))
AS
delete Wool1Yr
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_WoolAnnual_IDSheepGoatDateShearAnnl_Prev    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_WoolAnnual_IDSheepGoatDateShearAnnl_Prev (@IDSheepGoat char(6), 
	@DateShearAnnl varchar(8))
AS
SET DATEFORMAT dmy
delete WoolAnnual
where IDSheepGoat = @IDSheepGoat and DateShearAnnl = CAST(@DateShearAnnl AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDelete_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0 (@IDSheepGoat char(6), 
	@DateShearAnnl varchar(8))
AS
SET DATEFORMAT dmy
delete WoolAnnual
where IDSheepGoat = @IDSheepGoat and DateShearAnnl = CAST(@DateShearAnnl AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDropTable_SumFlockManagm    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDropTable_SumFlockManagm
AS
-- Drop the SumFlockManagm_Farms table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_Farms') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_Farms

-- Drop the SumFlockManagm_LambKid table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_LambKid') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_LambKid
-- Drop the SumFlockManagm_LambKidWeaned table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_LambKidWeaned') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_LambKidWeaned

-- Drop the SumFlockManagm_Mate table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_Mate') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_Mate

-- Drop the SumFlockManagm_SheepGoat table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_SheepGoat') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_SheepGoat
-- Drop the SumFlockManagm_SheepGoatDisp table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_SheepGoatDisp') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_SheepGoatDisp
-- Drop the SumFlockManagm_Weight7Mon table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_Weight7Mon') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_Weight7Mon
-- Drop the SumFlockManagm_WeightAnnl table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_WeightAnnl') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_WeightAnnl
-- Drop the SumFlockManagm_WeightWean table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_WeightWean') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_WeightWean
-- Drop the SumFlockManagm_WoolAnnl table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_WoolAnnl') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_WoolAnnl

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDropTable_SumPerform    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spDropTable_SumPerform
AS
-- Drop the SumPerform_Farms table.
if exists (select * from sysobjects where id = object_id(N'SumPerform_Farms') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumPerform_Farms
-- Drop the SumPerform_Farms table.
if exists (select * from sysobjects where id = object_id(N'SumPerform_SheepGoat') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumPerform_SheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_InhertDefect    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spInsert_InhertDefect (@IDSheepGoat char(6), @IDDefect char(2))
AS
INSERT INTO InhertDefectV(IDSheepGoat, IDDefect)
VALUES (@IDSheepGoat, @IDDefect)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_InhertDefectV    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spInsert_InhertDefectV (@IDSheepGoat char(6), @IDDefect char(2))
AS
INSERT INTO InhertDefectV(IDSheepGoat, IDDefect)
VALUES (@IDSheepGoat, @IDDefect)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_MateLambKid    Script Date: 14.08.02 4:51:23 ******/
CREATE PROCEDURE spInsert_MateLambKid (@IDDam char(6), @Cycle tinyint, 
	@IDSire char(6))
AS
SET DATEFORMAT dmy
INSERT INTO MateLambKid
(IDDam, Cycle, DateMatFrom, DateMatTo, IDSire, DateLambKid, TypeBirth)
VALUES (@IDDam, @Cycle,  getdate(), getdate(), @IDSire, getdate(), 1)


GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_SheepGoat_Fill    Script Date: 14.08.02 4:51:23 ******/
CREATE PROCEDURE spInsert_SheepGoat_Fill (@IDFarm char(2), @IDSheepGoat char(6))
--CREATE PROCEDURE spInsertSheepGoat @IDSheepGoat char(6)
--CREATE PROCEDURE spInsertSheepGoat
AS
INSERT INTO SheepGoat
(IDFarm, IDSheepGoat, IDSex, IDBreedBase, BreedCross, DateBirth, IDFarmBirth, TypeBirth, IDSire, IDDam, DateDisp, IDDispReas, Remark)
VALUES (@IDFarm, @IDSheepGoat, "1", "КИ", "КИ", getdate(), "АА", 1, "", "", getdate(), "00", "")
--VALUES ("АА", @IDSheepGoat, "1", "КИ", "КИ", getdate(), "АА", 1, "", "", getdate(), "00", "")
--VALUES ("АА", "АА0017", "1", "КИ", "КИ", getdate(), "АА", 1, "", "", getdate(), "00", "")

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_SheepGoat_Object    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spInsert_SheepGoat_Object
(
	@IDFarm char(2), 
	@IDSheepGoat char(6), 
	@IDSex char(1), 
	@IDBreedBase char(2),
	@Crossed bit,
	@BreedCross varchar(50), 
--	@DateBirth smalldatetime,
	@DateBirth varchar(8),
	@IDFarmBirth char(2), 
	@TypeBirth char(1),
	@IDSire char(6),
	@IDDam char(6),	
--	@DateDisp smalldatetime,
	@DateDisp  varchar(8),
	@IDDispReas char(2), 
	@Remark varchar(150)
)
AS
SET DATEFORMAT dmy
INSERT INTO SheepGoat(IDFarm, IDSheepGoat, IDSex, IDBreedBase, Crossed,
	BreedCross, DateBirth, IDFarmBirth, TypeBirth, IDSire, IDDam, 
	DateDisp, IDDispReas, Remark)
VALUES 
(
	@IDFarm, 
	@IDSheepGoat, 
	@IDSex, 
	@IDBreedBase, 
	@Crossed,
	@BreedCross, 
--	@DateBirth,
	CAST(@DateBirth AS smalldatetime),
	@IDFarmBirth, 
	@TypeBirth, 
	@IDSire, 
	@IDDam, 
--	@DateDisp, 
	CAST(@DateDisp AS smalldatetime),
	@IDDispReas,
	@Remark
)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_Weight1Yr_Prev    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spInsert_Weight1Yr_Prev (@IDSheepGoat char(6), @Date1Yr varchar(8), @Wt1Yr real)
AS
SET DATEFORMAT dmy
INSERT INTO Weight1Yr (IDSheepGoat, Date1Yr, Wt1Yr)
VALUES (@IDSheepGoat, CAST(@Date1Yr AS smalldatetime), @Wt1Yr)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightAnnual_Prev    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spInsert_WeightAnnual_Prev (@IDSheepGoat char(6), @DateAnnl varchar(8), @WtAnnl real)
AS
SET DATEFORMAT dmy
INSERT INTO WeightAnnual (IDSheepGoat, DateAnnl, WtAnnl)
VALUES (@IDSheepGoat, CAST(@DateAnnl AS smalldatetime), @WtAnnl)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightAnnual_Prev0    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spInsert_WeightAnnual_Prev0 (@IDSheepGoat char(6), @DateAnnl varchar(8), @WtAnnl real,
	@Age1Yr bit)
AS
SET DATEFORMAT dmy
INSERT INTO WeightAnnual (IDSheepGoat, DateAnnl, WtAnnl, Age1Yr)
VALUES (@IDSheepGoat, CAST(@DateAnnl AS smalldatetime), @WtAnnl, @Age1Yr)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightWoolAnnl    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spInsert_WeightWoolAnnl (@IDSheepGoat char(6), @Age tinyint, 
	@DateAnnl varchar(8), @WtAnnl real, @DateShearAnnl varchar(8), @GreaseAnnl real,
	@Leng real, @Diam real)
AS
SET DATEFORMAT dmy
INSERT INTO WeightWoolAnnl (IDSheepGoat, Age, DateAnnl, WtAnnl, DateShearAnnl, GreaseAnnl, Leng,
	Diam)
VALUES (@IDSheepGoat, @Age, CAST(@DateAnnl AS smalldatetime), @WtAnnl / 10, 
	CAST(@DateShearAnnl AS smalldatetime), @GreaseAnnl / 10, @Leng / 10, @Diam / 10)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightWoolAnnual    Script Date: 14.08.02 4:51:23 ******/
CREATE PROCEDURE spInsert_WeightWoolAnnual @IDSheepGoat char(6)
AS
INSERT INTO WeightWoolAnnual
(IDSheepGoat, DateWtAnnl, WtAnnl, DateShearAnnl, GreaseAnnl)
VALUES (@IDSheepGoat, getdate(), 60, getdate(), 4)


GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_Wool1Yr_Prev    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spInsert_Wool1Yr_Prev (@IDSheepGoat char(6), @DateShear1Yr varchar(8), 
	@Grease1Yr real, @Leng real, @Diam real)
AS
SET DATEFORMAT dmy
INSERT INTO Wool1Yr (IDSheepGoat, DateShear1Yr, Grease1Yr, Leng, Diam)
VALUES (@IDSheepGoat, CAST(@DateShear1Yr AS smalldatetime), @Grease1Yr, @Leng, @Diam)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_WoolAnnual_Prev    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spInsert_WoolAnnual_Prev (@IDSheepGoat char(6), @DateShearAnnl varchar(8), 
	@GreaseAnnl real)
AS
SET DATEFORMAT dmy
INSERT INTO WoolAnnual (IDSheepGoat, DateShearAnnl, GreaseAnnl)
VALUES (@IDSheepGoat, CAST(@DateShearAnnl AS smalldatetime), @GreaseAnnl)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_WoolAnnual_Prev0    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spInsert_WoolAnnual_Prev0 (@IDSheepGoat char(6), @DateShearAnnl varchar(8), 
	@GreaseAnnl real, @Leng real, @Diam real, @Age1Yr bit)
AS
SET DATEFORMAT dmy
INSERT INTO WoolAnnual (IDSheepGoat, DateShearAnnl, GreaseAnnl, Leng, Diam, Age1Yr)
VALUES (@IDSheepGoat, CAST(@DateShearAnnl AS smalldatetime), @GreaseAnnl, @Leng, @Diam, @Age1Yr)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spPedigree    Script Date: 14.08.02 4:51:23 ******/
CREATE PROCEDURE spPedigree (@DigitDam char(2), @DigitSG char(2))
AS
update SheepGoat
-- Step 1.
--set IDSire = right(left(IDSheepGoat, 4), 2) + "00" 
set IDDam = @DigitDam
where right(IDSheepGoat, 2) = @DigitSG

--Step 2.
--set IDSire = left(IDSheepGoat,2) + IDSire 
--set IDDam = left(IDSheepGoat,4) + IDDam

-- Step 3.
--set IDSire = "", IDDam = ""
--where right(IDSheepGoat,2) < "02"

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Appraisal_IDSheepGoat    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_Appraisal_IDSheepGoat (@IDSheepGoat char(6))
AS
select * from Appraisal
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_BodyConstitutn    Script Date: 14.08.02 4:51:23 ******/

create procedure spSelect_BodyConstitutn as
select * from BodyConstitutn

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Breeds_ID_B    Script Date: 14.08.02 4:51:23 ******/
create procedure spSelect_Breeds_ID_B as
select IDBreed, Breed from Breeds
--spSelect_Breeds_ID_B

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Breeds_IDBreed    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_Breeds_IDBreed (@IDBreed char(2))
AS
select * from Breeds
where IDBreed = @IDBreed

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_ContrlParam    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_ContrlParam
AS
select * from ContrlParam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_InhertDefectV_IDShGIDDefect    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_InhertDefectV_IDShGIDDefect (@IDSheepGoat char(6), @IDDefect char(2))
AS
select * from InhertDefectV
where IDSheepGoat = @IDSheepGoat and IDDefect = @IDDefect

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_LambKid_IDDam    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_LambKid_IDDam (@IDDam char(6))
AS
select * from LambKid
where IDDam = @IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_LambKid_IDDamCycle    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_LambKid_IDDamCycle (@IDDam char(6), @Cycle tinyint)
AS
select * from LambKid
where IDDam = @IDDam and Cycle = @Cycle

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Mate_IDDam    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_Mate_IDDam (@IDDam char(6))
AS
select * from Mate
where IDDam = @IDDam

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Mate_IDDamCycle    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_Mate_IDDamCycle (@IDDam char(6), @Cycle tinyint)
AS
select * from Mate
where IDDam = @IDDam and Cycle = @Cycle

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Offspring_IDDamCycle_Kyes    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_Offspring_IDDamCycle_Kyes (@IDDam char(6), @Cycle tinyint)
AS
select IDDam, Cycle, NoLambKid from Offspring
where IDDam = @IDDam and Cycle = @Cycle

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Offspring_IDDamCycleNoLK    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_Offspring_IDDamCycleNoLK (@IDDam char(6), @Cycle tinyint, 
	@NoLambKid tinyint)
AS
select * from Offspring
where IDDam = @IDDam and Cycle = @Cycle and NoLambKid = @NoLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_StandFatTail_IDBreed    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_StandFatTail_IDBreed (@IDBreed char(2))
AS
select * from StandFatTail
where IDBreed = @IDBreed

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Weight1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:51:23 ******/

CREATE PROCEDURE spSelect_Weight1Yr_IDSheepGoat_Prev (@IDSheepGoat char(6))
AS
select * from Weight1Yr
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightAnnual_IDSheepGoat_Prev    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelect_WeightAnnual_IDSheepGoat_Prev (@IDSheepGoat char(6))
AS
SET DATEFORMAT dmy
select * from WeightAnnual
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightAnnual_IDSheepGoat_Prev0    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelect_WeightAnnual_IDSheepGoat_Prev0 (@IDSheepGoat char(6))
AS
SET DATEFORMAT dmy
select * from WeightAnnual
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightAnnual_IDSheepGoatDateAnnl_Prev    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelect_WeightAnnual_IDSheepGoatDateAnnl_Prev (@IDSheepGoat char(6), 
	@DateAnnl varchar(8))
AS
SET DATEFORMAT dmy
select * from WeightAnnual
where IDSheepGoat = @IDSheepGoat and DateAnnl = CAST(@DateAnnl AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightAnnual_IDSheepGoatDateAnnl_Prev0    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelect_WeightAnnual_IDSheepGoatDateAnnl_Prev0 (@IDSheepGoat char(6), 
	@DateAnnl varchar(8))
AS
SET DATEFORMAT dmy
select * from WeightAnnual
where IDSheepGoat = @IDSheepGoat and DateAnnl = CAST(@DateAnnl AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightWoolAnnl_IDSheepGoat_Keys    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelect_WeightWoolAnnl_IDSheepGoat_Keys (@IDSheepGoat char(6))
AS
select IDSheepGoat, Age from WeightWoolAnnl
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightWoolAnnl_IDSheepGoatAge    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelect_WeightWoolAnnl_IDSheepGoatAge (@IDSheepGoat char(6), @Age tinyint)
AS
SET DATEFORMAT dmy
select * from WeightWoolAnnl
where IDSheepGoat = @IDSheepGoat and Age = @Age

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Wool1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelect_Wool1Yr_IDSheepGoat_Prev (@IDSheepGoat char(6))
AS
select * from Wool1Yr
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WoolAnnual_IDSheepGoat_Prev0    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelect_WoolAnnual_IDSheepGoat_Prev0 (@IDSheepGoat char(6))
AS
SET DATEFORMAT dmy
select * from WoolAnnual
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WoolAnnual_IDSheepGoatDateShearAnnl_Prev    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelect_WoolAnnual_IDSheepGoatDateShearAnnl_Prev (@IDSheepGoat char(6), 
	@DateShearAnnl varchar(8))
AS
SET DATEFORMAT dmy
select * from WoolAnnual
where IDSheepGoat = @IDSheepGoat and DateShearAnnl = CAST(@DateShearAnnl AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelect_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0 (@IDSheepGoat char(6), 
	@DateShearAnnl varchar(8))
AS
SET DATEFORMAT dmy
select * from WoolAnnual
where IDSheepGoat = @IDSheepGoat and DateShearAnnl = CAST(@DateShearAnnl AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumGenEval_FarmWtBirth    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spSelectInto_SumGenEval_FarmWtBirth
AS
-- Drop the previous table.
if exists (select * from sysobjects where id = object_id(N'SumGenEval_FarmWtBirth') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumGenEval_FarmWtBirth
-- Create a new one.
SELECT IDFarm, AVG(WtBirth) AS AvgWtBirth
INTO SumGenEval_FarmWtBirth 
FROM SumGenEval_FarmSireOffspring
WHERE (GETDATE() - DateLambKid <= 1095)
GROUP BY IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSheepGoat    Script Date: 14.08.02 4:51:24 ******/

/****** Object:  Stored Procedure dbo.spSheepGoat    Script Date: 06.05.02 22:31:31 ******/
CREATE PROCEDURE spSheepGoat  AS
SELECT * FROM SheepGoat


GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSheepGoat_IDShG    Script Date: 14.08.02 4:51:24 ******/

/****** Object:  Stored Procedure dbo.spSheepGoat_IDShG    Script Date: 06.05.02 22:31:31 ******/
CREATE PROCEDURE spSheepGoat_IDShG @IDSheepGoat char(6) AS
SELECT * FROM SheepGoat
WHERE IDSheepGoat=@IDSheepGoat 




GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_SheepGoat_IDShG    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_SheepGoat_IDShG
(
	@IDSheepGoatOrigin char(6),
	@IDFarm char(2), 
	@IDSheepGoat char(6), 
	@IDSex char(1), 
	@IDBreedBase char(2),
	@Crossed bit,
	@BreedCross varchar(50), 
--	@DateBirth smalldatetime,
	@DateBirth varchar(8),
	@IDFarmBirth char(2), 
	@TypeBirth char(1),
	@IDSire char(6),
	@IDDam char(6),	
--	@DateDisp smalldatetime,
	@DateDisp  varchar(8),
	@IDDispReas char(2), 
	@Remark varchar(150)
)
AS
SET DATEFORMAT dmy
update SheepGoat
set   	IDFarm = @IDFarm, 
	IDSheepGoat = @IDSheepGoat,
	IDSex = @IDSex, 
	IDBreedBase = @IDBreedBase, 
	Crossed = @Crossed,
	BreedCross = @BreedCross, 
--	DateBirth = @DateBirth, 
	DateBirth = CAST(@DateBirth AS smalldatetime),
	IDFarmBirth = @IDFarmBirth, 
	TypeBirth = @TypeBirth, 
	IDSire = @IDSire, 
	IDDam = @IDDam, 
--	DateDisp = @DateDisp, 
	DateDisp = CAST(@DateDisp AS smalldatetime),
	IDDispReas = @IDDispReas, 
	Remark = @Remark
where IDSheepGoat = @IDSheepGoatOrigin

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_SumFlockManagm_SheepGoat    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_SumFlockManagm_SheepGoat (@DateEnd varchar(8))
AS
SET DATEFORMAT dmy
-- Mark mature males.
update SumFlockManagm_SheepGoat
set IDAgeSex = "1"
where CAST(@DateEnd AS smalldatetime) - DateBirth >=365 and IDSex = "0"
-- Mark mature females.
update SumFlockManagm_SheepGoat
set IDAgeSex = "2"
where CAST(@DateEnd AS smalldatetime) - DateBirth >=365 and IDSex = "1"
-- Mark young males/females.
update SumFlockManagm_SheepGoat
set IDAgeSex = "3"
where CAST(@DateEnd AS smalldatetime) - DateBirth <365

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_SumFlockManagm_SheepGoatDisp    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_SumFlockManagm_SheepGoatDisp (@DateEnd varchar(8))
AS
SET DATEFORMAT dmy
-- Mark mature males.
update SumFlockManagm_SheepGoatDisp
set IDAgeSex = "1"
where CAST(@DateEnd AS smalldatetime) - DateBirth >=365 and IDSex = "0"
-- Mark mature females.
update SumFlockManagm_SheepGoatDisp
set IDAgeSex = "2"
where CAST(@DateEnd AS smalldatetime) - DateBirth >=365 and IDSex = "1"
-- Mark young males/females.
update SumFlockManagm_SheepGoatDisp
set IDAgeSex = "3"
where CAST(@DateEnd AS smalldatetime) - DateBirth <365

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_SumPerform_SheepGoat    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_SumPerform_SheepGoat
AS
-- Mark mature males.
update SumPerform_SheepGoat
set IDAgeSex = "1"
where getdate() - DateBirth >=365 and IDSex = "0"
-- Mark mature females.
update SumPerform_SheepGoat
set IDAgeSex = "2"
where getdate() - DateBirth >=365 and IDSex = "1"
-- Mark young males/females.
update SumPerform_SheepGoat
set IDAgeSex = "3"
where getdate() - DateBirth <365

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_Weight1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_Weight1Yr_IDSheepGoat_Prev (@IDSheepGoat char(6), @Date1Yr varchar(8), 
	@Wt1Yr real)
AS
SET DATEFORMAT dmy
update Weight1Yr
set Date1Yr = CAST(@Date1Yr AS smalldatetime), Wt1Yr = @Wt1Yr
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_WeightAnnual_IDSheepGoatDateAnnl_Prev    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_WeightAnnual_IDSheepGoatDateAnnl_Prev (@IDSheepGoat char(6), 
	@DateAnnlOrigin varchar(8), @DateAnnl varchar(8), @WtAnnl real)
AS
SET DATEFORMAT dmy
update WeightAnnual
set DateAnnl = CAST(@DateAnnl AS smalldatetime), WtAnnl = @WtAnnl
where IDSheepGoat = @IDSheepGoat and DateAnnl = CAST(@DateAnnlOrigin AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_WeightAnnual_IDSheepGoatDateAnnl_Prev0    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_WeightAnnual_IDSheepGoatDateAnnl_Prev0 (@IDSheepGoat char(6), 
	@DateAnnlOrigin varchar(8), @DateAnnl varchar(8), @WtAnnl real, @Age1Yr bit)
AS
SET DATEFORMAT dmy
update WeightAnnual
set DateAnnl = CAST(@DateAnnl AS smalldatetime), WtAnnl = @WtAnnl, Age1Yr = @Age1Yr
where IDSheepGoat = @IDSheepGoat and DateAnnl = CAST(@DateAnnlOrigin AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_WeightWoolAnnl_IDSheepGoatAge    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_WeightWoolAnnl_IDSheepGoatAge (@IDSheepGoat char(6), 
	@Age tinyint, @DateAnnl varchar(8), @WtAnnl real, @DateShearAnnl varchar(8), 
	@GreaseAnnl real, @Leng real, @Diam real)
AS
SET DATEFORMAT dmy
update WeightWoolAnnl
set Age = @Age, DateAnnl = @DateAnnl, WtAnnl = @WtAnnl / 10, DateShearAnnl = @DateShearAnnl, 
	GreaseAnnl = @GreaseAnnl / 10, Leng = @Leng / 10, Diam = @Diam / 10
where IDSheepGoat = @IDSheepGoat and Age = @Age

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_Wool1Yr_IDSheepGoat_Prev    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_Wool1Yr_IDSheepGoat_Prev (@IDSheepGoat char(6), @DateShear1Yr varchar(8), 
	@Grease1Yr real, @Leng real, @Diam real)
AS
SET DATEFORMAT dmy
update Wool1Yr
set DateShear1Yr = CAST(@DateShear1Yr AS smalldatetime), Grease1Yr = @Grease1Yr, Leng = @Leng,
	Diam = @Diam
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_WoolAnnual_IDSheepGoatDateShearAnnl_Prev    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_WoolAnnual_IDSheepGoatDateShearAnnl_Prev (@IDSheepGoat char(6), 
	@DateShearAnnlOrigin varchar(8), @DateShearAnnl varchar(8), @GreaseAnnl real)
AS
SET DATEFORMAT dmy
update WoolAnnual
set DateShearAnnl = CAST(@DateShearAnnl AS smalldatetime), GreaseAnnl = @GreaseAnnl
where IDSheepGoat = @IDSheepGoat and DateShearAnnl = CAST(@DateShearAnnlOrigin AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0    Script Date: 14.08.02 4:51:24 ******/

CREATE PROCEDURE spUpdate_WoolAnnual_IDSheepGoatDateShearAnnl_Prev0 (@IDSheepGoat char(6), 
	@DateShearAnnlOrigin varchar(8), @DateShearAnnl varchar(8), @GreaseAnnl real, @Leng real,
	@Diam real, @Age1Yr bit)
AS
SET DATEFORMAT dmy
update WoolAnnual
set DateShearAnnl = CAST(@DateShearAnnl AS smalldatetime), GreaseAnnl = @GreaseAnnl, 
	Leng = @Leng, Diam = @Diam, Age1Yr = @Age1Yr
where IDSheepGoat = @IDSheepGoat and DateShearAnnl = CAST(@DateShearAnnlOrigin AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightWool    Script Date: 14.08.02 4:51:24 ******/
CREATE PROCEDURE spInsert_WeightWool @IDSheepGoat char(6)
AS
INSERT INTO WeightWool
(IDSheepGoat, WtBirth, DateWean, WtWean, Date7Mon, Wt7Mon, Date1Yr, Wt1Yr, 
	DateShear, Grease, Leng, Diam)
VALUES (@IDSheepGoat, 8, getdate(), 20, getdate(), 40, getdate(), 55,
	getdate(), 4, 9, 25)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_BodySize    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_BodySize as
select * from BodySize

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_BodyType    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_BodyType as
select * from BodyType

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_BreedDen    Script Date: 14.08.02 4:51:24 ******/
create procedure spSelect_BreedDen as
select * from BreedDen

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_BreedNum    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_BreedNum as
select * from BreedNum

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Constitutn    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_Constitutn as
select * from Constitutn

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Crimpins    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_Crimpins as
select * from Crimpins

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Defects    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_Defects as
select * from Defects
where IDDefect <> "-"

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Disposition    Script Date: 14.08.02 4:51:24 ******/
create procedure spSelect_Disposition as
select * from Disposition
where IDDispReas <> "- "

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Evens    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_Evens as
select * from Evens

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_FatTail    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_FatTail as
select * from FatTail

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Liveability    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_Liveability as
select * from Liveability
where IDLiv <> "0"

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Mass    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_Mass as
select * from Mass

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Quality    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_Quality as
select * from Quality

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Sex    Script Date: 14.08.02 4:51:24 ******/
create procedure spSelect_Sex as
select * from Sex

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_SexOffspring    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_SexOffspring as
select * from SexOffspring
where IDSex <> "-"

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Strength    Script Date: 14.08.02 4:51:24 ******/

create procedure spSelect_Strength as
select * from Strength

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_TypeBirth    Script Date: 14.08.02 4:51:25 ******/
create procedure spSelect_TypeBirth as
select * from TypeBirth
where TypeBirth <> "-"

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WlGrsColour    Script Date: 14.08.02 4:51:25 ******/

create procedure spSelect_WlGrsColour as
select * from WlGrsColour
where IDColour <> "-"

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_Cert    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spUpdate_Cert
AS
-- Remove hyphens from the Cert_SheepGoatSire table's pedigree columns.
UPDATE Cert_SheepGoatSire
SET IDSiresSire = "" WHERE IDSiresSire = "-" 
UPDATE Cert_SheepGoatSire
SET IDSiresDam = "" WHERE IDSiresDam = "-" 

-- Remove hyphens from the Cert_SheepGoatDam table's pedigree columns.
UPDATE Cert_SheepGoatDam
SET IDDamsSire = "" WHERE IDDamsSire = "-" 
UPDATE Cert_SheepGoatDam
SET IDDamsDam = "" WHERE IDDamsDam = "-" 

-- Insert the sheep/goat's ID into the Cert_WeightWoolAnnlAge table next to the ages.
UPDATE Cert_WeightWoolAnnlAge
SET IDSheepGoat = (SELECT IDSheepGoat FROM Cert_SheepGoat)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_OffspringV_IDDamCycleNoLK    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_OffspringV_IDDamCycleNoLK (@IDDam char(6), @Cycle tinyint, 
	@NoLambKid tinyint)
AS
select * from OffspringV
where IDDam = @IDDam and Cycle = @Cycle and NoLambKid = @NoLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_StandDiameter_IDBreed    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_StandDiameter_IDBreed (@IDBreed char(2))
AS
select * from StandDiameter
where IDBreed = @IDBreed

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_StandFluff_IDBreed    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_StandFluff_IDBreed (@IDBreed char(2))
AS
select * from StandFluff
where IDBreed = @IDBreed

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_StandGrease_IDBreed    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_StandGrease_IDBreed (@IDBreed char(2))
AS
select * from StandGrease
where IDBreed = @IDBreed

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_StandLength_IDBreed    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_StandLength_IDBreed (@IDBreed char(2))
AS
select * from StandLength
where IDBreed = @IDBreed

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_StandWeight_IDBreed    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_StandWeight_IDBreed (@IDBreed char(2))
AS
select * from StandWeight
where IDBreed = @IDBreed

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spRayons    Script Date: 14.08.02 4:51:25 ******/
CREATE PROCEDURE spRayons  AS
SELECT * FROM Rayons
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsertTownVill    Script Date: 14.08.02 4:51:25 ******/
CREATE PROCEDURE spInsertTownVill (@IDRayon char(6), @IDTownVill char(6),  @TownVill char(25))
AS
INSERT INTO TownVill
(IDRayon, IDTownVill, TownVill)
VALUES (@IDRayon, @IDTownVill, @TownVill)


GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Farms_IDFarm    Script Date: 14.08.02 4:51:25 ******/
CREATE PROCEDURE spSelect_Farms_IDFarm AS
select IDFarm from Farms
where IDFarm <> "- "

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_Farms    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_Farms (@IDFarm char(2))
AS
-- Drop the previous table.
if exists (select * from sysobjects where id = object_id(N'SumFlockManagm_Farms') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumFlockManagm_Farms
-- Create a new one.
select IDFarm, IDPersFarmer into SumFlockManagm_Farms 
	from Farms	
where IDFarm = @IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumPerform_Farms    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelectInto_SumPerform_Farms (@IDFarm char(2))
AS
-- Drop the previous table.
if exists (select * from sysobjects where id = object_id(N'SumPerform_Farms') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumPerform_Farms
-- Create a new one.
select IDFarm, IDPersFarmer into SumPerform_Farms 
	from Farms	
where IDFarm = @IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_Cert_SheepGoat    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelectInto_Cert_SheepGoat (@IDSheepGoat char(6))
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'Cert_SheepGoat') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE Cert_SheepGoat
-- Create a new one.
SELECT IDFarm, IDSheepGoat, BreedCross, DateBirth, IDFarmBirth, TypeBirth, IDSire, IDDam 
	INTO Cert_SheepGoat 
FROM SheepGoat	
WHERE IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_Cert_SheepGoatDam    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelectInto_Cert_SheepGoatDam
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'Cert_SheepGoatDam') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE Cert_SheepGoatDam
-- Create a new one.
SELECT IDSheepGoat AS IDDam, BreedCross, IDSire AS IDDamsSire, IDDam AS IDDamsDam 
	INTO Cert_SheepGoatDam 
FROM SheepGoat	
WHERE IDSheepGoat = (SELECT IDDam FROM Cert_SheepGoat WHERE IDDam <> "-")

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_Cert_SheepGoatSire    Script Date: 14.08.02 4:51:25 ******/


CREATE PROCEDURE spSelectInto_Cert_SheepGoatSire
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'Cert_SheepGoatSire') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE Cert_SheepGoatSire
-- Create a new one.
SELECT IDSheepGoat AS IDSire, BreedCross, IDSire AS IDSiresSire, IDDam AS IDSiresDam 
	INTO Cert_SheepGoatSire 
FROM SheepGoat	
WHERE IDSheepGoat = (SELECT IDSire FROM Cert_SheepGoat WHERE IDSire <> "-")

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_Cert_SheepGoatSireSire    Script Date: 14.08.02 4:51:25 ******/


CREATE PROCEDURE spSelectInto_Cert_SheepGoatSireSire
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'Cert_SheepGoatSire') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE Cert_SheepGoatSire
-- Create a new one.
SELECT IDSheepGoat AS IDSire, BreedCross, IDSire AS IDSiresSire, IDDam AS IDSiresDam 
	INTO Cert_SheepGoatSire 
FROM SheepGoat	
WHERE IDSheepGoat = (SELECT IDSheepGoat FROM Cert_SheepGoat)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_SheepGoat    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_SheepGoat (@IDFarm char(2), @DateEnd varchar(8))
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'SumFlockManagm_SheepGoat') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE SumFlockManagm_SheepGoat
-- Create a new one.
SELECT IDFarm, IDSheepGoat, IDSex, DateBirth INTO SumFlockManagm_SheepGoat 
FROM SheepGoat	
WHERE (IDFarm = @IDFarm) and
	(DateBirth <= CAST(@DateEnd AS smalldatetime))

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_SheepGoatDisp    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_SheepGoatDisp (@IDFarm char(2), 
	@DateBegin varchar(8), @DateEnd varchar(8))
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'SumFlockManagm_SheepGoatDisp') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE SumFlockManagm_SheepGoatDisp
-- Create a new one.
SELECT IDFarm, IDSheepGoat, IDSex, DateBirth, DateDisp, IDDispReas 
	INTO SumFlockManagm_SheepGoatDisp 
FROM SheepGoat	
WHERE (IDFarm = @IDFarm) AND
	(IDDispReas <> "-") AND
	(DateDisp >= CAST(@DateBegin AS smalldatetime)) AND 
	(DateDisp <= CAST(@DateEnd AS smalldatetime))

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumPerform_SheepGoat    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelectInto_SumPerform_SheepGoat (@IDFarm char(2))
AS
-- Drop the previous table.
if exists (select * from sysobjects where id = object_id(N'SumPerform_SheepGoat') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumPerform_SheepGoat
-- Create a new one.
select IDFarm, IDSheepGoat, IDSex, BreedCross, DateBirth, TypeBirth 
	into SumPerform_SheepGoat from SheepGoat	
where IDFarm = @IDFarm and IDDispReas = "- "

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spCount_BreedCross_IDShG    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spCount_BreedCross_IDShG (@IDSheepGoat char(6))
AS
select count(IDSheepGoat) from BreedCross
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_BreedCross_IDShGIDBreed    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spDelete_BreedCross_IDShGIDBreed (@IDSheepGoat char(6), @IDBreed char(2))
AS
delete BreedCross
where (IDSheepGoat = @IDSheepGoat) and (IDBreed = @IDBreed)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_SelIndxCompClass_IDSheepGoat    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spDelete_SelIndxCompClass_IDSheepGoat (@IDSheepGoat char(6))
AS
delete SelIndxCompClass
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_TransFarm_IDShGDateTrans    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spDelete_TransFarm_IDShGDateTrans (@IDSheepGoat char(6), 
	@DateTrans varchar(8))
AS
SET DATEFORMAT dmy
delete TransFarm
where IDSheepGoat = @IDSheepGoat and DateTrans = CAST(@DateTrans AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_Weight7Mon_IDLambKid    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spDelete_Weight7Mon_IDLambKid (@IDLambKid char(6))
AS
delete Weight7Mon
where IDLambKid = @IDLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_Appraisal    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spInsert_Appraisal (@IDSheepGoat char(6), @DateAppr varchar(8), 
	@BodySize char(2), @BodyType char(2), @Constitutn char(2), @FatTail char(1), 
	@Mass char(2), @Density smallint, @Strength char(1), @Crimpins char(2), @Evens char(2), 
	@Quality char(2), @IDColour char(1), @Fluff tinyint, @FibtreYield tinyint)
AS
SET DATEFORMAT dmy
INSERT INTO Appraisal (IDSheepGoat, DateAppr, BodySize, BodyType, Constitutn, FatTail, Mass, 
	Density, Strength, Crimpins, Evens, Quality, IDColour, Fluff, FibtreYield)
VALUES (@IDSheepGoat, CAST(@DateAppr AS smalldatetime), @BodySize, @BodyType, @Constitutn, 
	@FatTail, @Mass, @Density, @Strength, @Crimpins, @Evens, @Quality, @IDColour, @Fluff, 
	@FibtreYield)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_BreedCross    Script Date: 14.08.02 4:51:25 ******/
CREATE PROCEDURE spInsert_BreedCross (@IDSheepGoat char(6), @IDBreed char(2), @BreedNum tinyint,
	@BreedDen tinyint)
AS
INSERT INTO BreedCross (IDSheepGoat, IDBreed, BreedNum, BreedDen)
VALUES (@IDSheepGoat, @IDBreed, @BreedNum, @BreedDen)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_Mate    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spInsert_Mate (@IDDam char(6), @Cycle tinyint, @CycleLambKid tinyint, 
	@DateMatFrom varchar(8), @DateMatTo varchar(8), @IDSire char(6))
AS
SET DATEFORMAT dmy
INSERT INTO Mate(IDDam, Cycle, CycleLambKid, DateMatFrom, DateMatTo, IDSire)
VALUES (@IDDam, @Cycle, @CycleLambKid, CAST(@DateMatFrom AS smalldatetime), 
	CAST(@DateMatTo AS smalldatetime), @IDSire)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_SelIndxCompClass    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spInsert_SelIndxCompClass (@IDSheepGoat char(6), @SelIndx real, 
	@IDCompClass char(1))
AS
SET DATEFORMAT dmy
INSERT INTO SelIndxCompClass (IDSheepGoat, SelIndx, IDCompClass)
VALUES (@IDSheepGoat, @SelIndx / 10, @IDCompClass)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_TransFarm    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spInsert_TransFarm (@IDSheepGoat char(6), 
	@DateTrans varchar(8), @IDFarm char(2))
AS
SET DATEFORMAT dmy
INSERT INTO TransFarm(IDSheepGoat, DateTrans, IDFarm)
VALUES (@IDSheepGoat, CAST(@DateTrans AS smalldatetime), @IDFarm)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_Weight7Mon    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spInsert_Weight7Mon (@IDLambKid char(6), @Date7Mon varchar(8), @Wt7Mon real)
AS
SET DATEFORMAT dmy
INSERT INTO Weight7Mon (IDLambKid, Date7Mon, Wt7Mon)
VALUES (@IDLambKid, CAST(@Date7Mon AS smalldatetime), @Wt7Mon/10)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_WeightWean    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spInsert_WeightWean (@IDLambKid char(6), @DateWean varchar(8), @WtWean real)
AS
SET DATEFORMAT dmy
INSERT INTO WeightWean (IDLambKid, DateWean, WtWean)
VALUES (@IDLambKid, CAST(@DateWean AS smalldatetime), @WtWean/10)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_BreedCross_IDShG    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_BreedCross_IDShG (@IDSheepGoat char(6))
AS
select * from BreedCross
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_BreedCross_IDShGIDBreed    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_BreedCross_IDShGIDBreed (@IDSheepGoat char(6), @IDBreed char(2))
AS
select * from BreedCross
where IDSheepGoat = @IDSheepGoat and IDBreed = @IDBreed

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_SelIndxCompClass_IDSheepGoat    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_SelIndxCompClass_IDSheepGoat (@IDSheepGoat char(6))
AS
select * from SelIndxCompClass
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_TransFarm_IDShG    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_TransFarm_IDShG (@IDSheepGoat char(6))
AS
select * from TransFarm
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_TransFarm_IDShGDateTrans    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_TransFarm_IDShGDateTrans (@IDSheepGoat char(6), 
	@DateTrans varchar(8))
AS
SET DATEFORMAT dmy
select * from TransFarm
where IDSheepGoat = @IDSheepGoat and DateTrans = CAST(@DateTrans AS smalldatetime)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_Weight7Mon_IDLambKid    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_Weight7Mon_IDLambKid (@IDLambKid char(6))
AS
SET DATEFORMAT dmy
select * from Weight7Mon
where IDLambKid = @IDLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_WeightWean_IDLambKid    Script Date: 14.08.02 4:51:25 ******/

CREATE PROCEDURE spSelect_WeightWean_IDLambKid (@IDLambKid char(6))
AS
select * from WeightWean
where IDLambKid = @IDLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_Cert_WeightWoolAnnl    Script Date: 14.08.02 4:51:25 ******/

--CREATE PROCEDURE spSelectInto_Cert_WeightWoolAnnl (@IDSheepGoat char(6))
CREATE PROCEDURE spSelectInto_Cert_WeightWoolAnnl
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'Cert_WeightWoolAnnl') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE Cert_WeightWoolAnnl
-- Create a new one.
SELECT IDSheepGoat, Age, WtAnnl, GreaseAnnl, Leng, Diam 
	INTO Cert_WeightWoolAnnl
FROM WeightWoolAnnl	
--WHERE (IDSheepGoat = @IDSheepGoat)
WHERE IDSheepGoat = (SELECT IDSheepGoat FROM Cert_SheepGoat)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_CertEweShegoat_WeightWoolAnnlOffspring    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_CertEweShegoat_WeightWoolAnnlOffspring
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects 
	WHERE id = object_id(N'CertEweShegoat_WeightWoolAnnlOffspring') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE CertEweShegoat_WeightWoolAnnlOffspring
-- Create a new one.
SELECT IDSheepGoat, Age, WtAnnl, GreaseAnnl
	INTO CertEweShegoat_WeightWoolAnnlOffspring
FROM WeightWoolAnnl	
WHERE IDSheepGoat = (SELECT IDLambKid FROM CertEweShegoat_Offspring)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_Mate    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_Mate (@IDFarm char(2), @DateBegin varchar(8),
	@DateEnd varchar(8))
AS
DECLARE @PregnLengNorm smallint, @DateBeginShift smalldatetime, @DateEndShift smalldatetime 
SET DATEFORMAT dmy
SET @PregnLengNorm = (SELECT PregnLengNorm FROM ContrlParam) 
SET @DateBeginShift = CAST(@DateBegin AS smalldatetime) - @PregnLengNorm
SET @DateEndShift = CAST(@DateEnd AS smalldatetime) - @PregnLengNorm
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'SumFlockManagm_Mate') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE SumFlockManagm_Mate
-- Create a new one.
SELECT SheepGoat.IDFarm, Mate.IDDam, Mate.Cycle, Mate.CycleLambKid, Mate.DateMatFrom, 
	SheepGoat.IDDispReas
	INTO SumFlockManagm_Mate 
FROM SheepGoat INNER JOIN Mate ON SheepGoat.IDSheepGoat = Mate.IDDam
WHERE (SheepGoat.IDFarm = @IDFarm) AND 
--	(SheepGoat.IDDispReas = "-") AND 
	(Mate.DateMatFrom >= @DateBeginShift) AND 
	(Mate.DateMatFrom <= @DateEndShift)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_Weight7Mon    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_Weight7Mon (@IDFarm char(2), @DateBegin varchar(8), 
	@DateEnd varchar(8))
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'SumFlockManagm_Weight7Mon') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE SumFlockManagm_Weight7Mon
-- Create a new one.
SELECT SheepGoat.IDFarm, Weight7Mon.IDLambKid, Weight7Mon.Wt7Mon INTO SumFlockManagm_Weight7Mon 
FROM SheepGoat INNER JOIN Weight7Mon ON SheepGoat.IDSheepGoat = Weight7Mon.IDLambKid
WHERE (SheepGoat.IDFarm = @IDFarm) AND 
	(Weight7Mon.Date7Mon >= CAST(@DateBegin AS smalldatetime)) AND 
	(Weight7Mon.Date7Mon <= CAST(@DateEnd AS smalldatetime))

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_WeightAnnl    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_WeightAnnl (@IDFarm char(2), @DateBegin varchar(8), 
	@DateEnd varchar(8))
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'SumFlockManagm_WeightAnnl') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE SumFlockManagm_WeightAnnl
-- Create a new one.
SELECT SheepGoat.IDFarm, WeightWoolAnnl.IDSheepGoat, WeightWoolAnnl.Age, WeightWoolAnnl.DateAnnl,
	WeightWoolAnnl.WtAnnl, SheepGoat.DateBirth 
	INTO SumFlockManagm_WeightAnnl
FROM SheepGoat INNER JOIN WeightWoolAnnl ON SheepGoat.IDSheepGoat = WeightWoolAnnl.IDSheepGoat
WHERE (SheepGoat.IDFarm = @IDFarm) AND 
	(WeightWoolAnnl.DateAnnl >= CAST(@DateBegin AS smalldatetime)) AND 
	(WeightWoolAnnl.DateAnnl <= CAST(@DateEnd AS smalldatetime)) --AND
--	(WeightWoolAnnl.Age = 1)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_WeightWean    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_WeightWean (@IDFarm char(2), @DateBegin varchar(8), 
	@DateEnd varchar(8))
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'SumFlockManagm_WeightWean') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE SumFlockManagm_WeightWean
-- Create a new one.
SELECT SheepGoat.IDFarm, WeightWean.IDLambKid, WeightWean.WtWean INTO SumFlockManagm_WeightWean 
FROM SheepGoat INNER JOIN WeightWean ON SheepGoat.IDSheepGoat = WeightWean.IDLambKid
WHERE (SheepGoat.IDFarm = @IDFarm) AND 
	(WeightWean.DateWean >= CAST(@DateBegin AS smalldatetime)) AND 
	(WeightWean.DateWean <= CAST(@DateEnd AS smalldatetime))

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_WeightWoolAnnl    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_WeightWoolAnnl (@IDFarm char(2), 
	@DateBegin varchar(8), @DateEnd varchar(8))
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'SumFlockManagm_WeightWoolAnnl') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE SumFlockManagm_WeightWoolAnnl
-- Create a new one.
SELECT SheepGoat.IDFarm, WeightWoolAnnl.GreaseAnnl, WeightWoolAnnl.Leng, WeightWoolAnnl.Diam
	INTO SumFlockManagm_WeightWoolAnnl 
FROM SheepGoat INNER JOIN WeightWoolAnnl ON SheepGoat.IDSheepGoat = WeightWoolAnnl.IDSheepGoat
WHERE (SheepGoat.IDFarm = @IDFarm) AND 
	(WeightWoolAnnl.DateShearAnnl >= CAST(@DateBegin AS smalldatetime)) AND 
	(WeightWoolAnnl.DateShearAnnl <= CAST(@DateEnd AS smalldatetime))

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_WoolAnnl    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_WoolAnnl (@IDFarm char(2), @DateBegin varchar(8), 
	@DateEnd varchar(8))
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'SumFlockManagm_WoolAnnl') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE SumFlockManagm_WoolAnnl
-- Create a new one.
SELECT SheepGoat.IDFarm, WeightWoolAnnl.IDSheepGoat, WeightWoolAnnl.Age, 
	WeightWoolAnnl.DateShearAnnl, WeightWoolAnnl.GreaseAnnl, WeightWoolAnnl.Leng, 
	WeightWoolAnnl.Diam, SheepGoat.IDSex, SheepGoat.DateBirth INTO SumFlockManagm_WoolAnnl
FROM SheepGoat INNER JOIN WeightWoolAnnl ON SheepGoat.IDSheepGoat = WeightWoolAnnl.IDSheepGoat
WHERE (SheepGoat.IDFarm = @IDFarm) AND 
	(WeightWoolAnnl.DateShearAnnl >= CAST(@DateBegin AS smalldatetime)) AND 
	(WeightWoolAnnl.DateShearAnnl <= CAST(@DateEnd AS smalldatetime))

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_Appraisal_IDSheepGoat    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spUpdate_Appraisal_IDSheepGoat (@IDSheepGoat char(6), @DateAppr varchar(8), 
	@BodySize char(2), @BodyType char(2), @Constitutn char(2), @FatTail char(1), 
	@Mass char(2), @Density smallint, @Strength char(1), @Crimpins char(2), @Evens char(2), 
	@Quality char(2), @IDColour char(1), @Fluff tinyint, @FibtreYield tinyint)
AS
SET DATEFORMAT dmy
update Appraisal
set DateAppr = CAST(@DateAppr AS smalldatetime), BodySize = @BodySize, BodyType = @BodyType, 
	Constitutn = @Constitutn, FatTail = @FatTail, Mass = @Mass, Density = @Density, 
	Strength = @Strength, Crimpins = @Crimpins, Evens = @Evens, Quality = @Quality, 
	IDColour = @IDColour, Fluff = @Fluff, FibtreYield = @FibtreYield
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_BreedCross_IDShGIDBreed    Script Date: 14.08.02 4:51:26 ******/
CREATE PROCEDURE spUpdate_BreedCross_IDShGIDBreed (@IDSheepGoat char(6), @IDBreedOrigin char(2), 
	@IDBreed char(2), @BreedNum tinyint, @BreedDen tinyint)
AS
update BreedCross
set   	IDBreed = @IDBreed, BreedNum = @BreedNum, BreedDen = @BreedDen
where (IDSheepGoat = @IDSheepGoat) and (IDBreed = @IDBreedOrigin)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_Mate_IDDamCycle    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spUpdate_Mate_IDDamCycle (@IDDam char(6), @Cycle tinyint, @CycleLambKid tinyint,
	@DateMatFrom varchar(8), @DateMatTo varchar(8), @IDSire char(6))
AS
SET DATEFORMAT dmy
update Mate
set IDDam = @IDDam, Cycle = @Cycle, CycleLambKid = @CycleLambKid, DateMatFrom = 
	CAST(@DateMatFrom AS smalldatetime), DateMatTo = CAST(@DateMatTo AS smalldatetime), 
	IDSire = @IDSire
where IDDam = @IDDam and Cycle = @Cycle

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_SelIndxCompClass_IDSheepGoat    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spUpdate_SelIndxCompClass_IDSheepGoat (@IDSheepGoat char(6), @SelIndx real, 
	@IDCompClass char(1))
AS
SET DATEFORMAT dmy
update SelIndxCompClass
set SelIndx = @SelIndx / 10, IDCompClass = @IDCompClass
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_Weight7Mon_IDLambKid    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spUpdate_Weight7Mon_IDLambKid (@IDLambKid char(6), @Date7Mon varchar(8), 
	@Wt7Mon real)
AS
SET DATEFORMAT dmy
update Weight7Mon
set Date7Mon = CAST(@Date7Mon AS smalldatetime), Wt7Mon = @Wt7Mon/10
where IDLambKid = @IDLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_WeightWean_IDLambKid    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spUpdate_WeightWean_IDLambKid (@IDLambKid char(6), @DateWean varchar(8), 
	@WtWean real)
AS
SET DATEFORMAT dmy
update WeightWean
set DateWean = CAST(@DateWean AS smalldatetime), WtWean = @WtWean/10
where IDLambKid = @IDLambKid

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spDelete_InhertDefect_IDShGIDDefect    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spDelete_InhertDefect_IDShGIDDefect (@IDSheepGoat char(6), @IDDefect char(2))
AS
delete InhertDefect
where IDSheepGoat = @IDSheepGoat and IDDefect = @IDDefect

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_LambKid    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spInsert_LambKid (@IDDam char(6), @Cycle tinyint, @CycleLambKid tinyint, 
	@DateLambKid varchar(8), @TypeBirth char(1))
AS
SET DATEFORMAT dmy
INSERT INTO LambKid(IDDam, Cycle, CycleLambKid, DateLambKid, TypeBirth)
VALUES (@IDDam, @Cycle, @CycleLambKid, CAST(@DateLambKid AS smalldatetime), @TypeBirth)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_InhertDefect_IDShG    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelect_InhertDefect_IDShG (@IDSheepGoat char(6))
AS
select * from InhertDefect
where IDSheepGoat = @IDSheepGoat

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_CertEweShegoat_LambKid    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_CertEweShegoat_LambKid
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'CertEweShegoat_LambKid') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE CertEweShegoat_LambKid
-- Create a new one.
SELECT IDDam, Cycle, CycleLambKid, DateLambKid	INTO CertEweShegoat_LambKid 
FROM LambKid
WHERE IDDam = (SELECT IDSheepGoat FROM Cert_SheepGoat)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_LambKid    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_LambKid (@IDFarm char(2), @DateBegin varchar(8),
	@DateEnd varchar(8))
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'SumFlockManagm_LambKid') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE SumFlockManagm_LambKid
-- Create a new one.
SELECT SheepGoat.IDFarm, LambKid.IDDam, LambKid.Cycle, LambKid.CycleLambKid, LambKid.DateLambKid,
	LambKid.TypeBirth, SheepGoat.DateBirth, SheepGoat.IDDispReas
	INTO SumFlockManagm_LambKid 
FROM SheepGoat INNER JOIN LambKid ON SheepGoat.IDSheepGoat = LambKid.IDDam
WHERE (SheepGoat.IDFarm = @IDFarm) AND 
--	(SheepGoat.IDDispReas = "-") AND 
	(LambKid.DateLambKid >= CAST(@DateBegin AS smalldatetime)) AND 
	(LambKid.DateLambKid <= CAST(@DateEnd AS smalldatetime))

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumFlockManagm_LambKidWeaned    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_SumFlockManagm_LambKidWeaned (@IDFarm char(2), 
	@DateBegin varchar(8), @DateEnd varchar(8))
AS
DECLARE @AgeWeanMax smallint, @DateBeginShift smalldatetime, @DateEndShift smalldatetime 
SET DATEFORMAT dmy
SET @AgeWeanMax = (SELECT AgeWeanMax FROM ContrlParam)
SET @DateBeginShift = CAST(@DateBegin AS smalldatetime) - @AgeWeanMax
SET @DateEndShift = CAST(@DateEnd AS smalldatetime) - @AgeWeanMax

-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'SumFlockManagm_LambKidWeaned') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE SumFlockManagm_LambKidWeaned
-- Create a new one.
SELECT SheepGoat.IDFarm, LambKid.IDDam, LambKid.Cycle, LambKid.CycleLambKid
	INTO SumFlockManagm_LambKidWeaned 
FROM SheepGoat INNER JOIN LambKid ON SheepGoat.IDSheepGoat = LambKid.IDDam
WHERE (SheepGoat.IDFarm = @IDFarm) AND 
	(LambKid.DateLambKid >= @DateBeginShift) AND 
	(LambKid.DateLambKid <= @DateEndShift)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_InhertDefect_IDShGIDDefect    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spUpdate_InhertDefect_IDShGIDDefect (@IDSheepGoat char(6), @IDDefectOrigin char(2), 
	@IDDefect char(2))
AS
update InhertDefect
set IDDefect = @IDDefect
where IDSheepGoat = @IDSheepGoat and IDDefect = @IDDefectOrigin

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_LambKid_IDDamCycle    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spUpdate_LambKid_IDDamCycle (@IDDam char(6), @Cycle tinyint, 
	@CycleLambKid tinyint, @DateLambKid varchar(8), @TypeBirth char(1))
AS
SET DATEFORMAT dmy
update LambKid
set IDDam = @IDDam, Cycle = @Cycle, CycleLambKid = @CycleLambKid, DateLambKid = 
	CAST(@DateLambKid AS smalldatetime), TypeBirth = @TypeBirth
where IDDam = @IDDam and Cycle = @Cycle

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spInsert_Offspring    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spInsert_Offspring (@IDDam char(6), @Cycle tinyint, @NoLambKid tinyint, 
	@IDLambKid char(6), @IDSex char(1), @WtBirth real, @IDLiv char(1))
AS
INSERT INTO Offspring(IDDam, Cycle, NoLambKid, IDLambKid, IDSex, WtBirth, IDLiv)
VALUES (@IDDam, @Cycle, @NoLambKid, @IDLambKid, @IDSex, @WtBirth/10, @IDLiv)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_CertEweShegoat_Offspring    Script Date: 14.08.02 4:51:26 ******/

--CREATE PROCEDURE spSelectInto_CertEweShegoat_Offspring (@IDDam char(6))
CREATE PROCEDURE spSelectInto_CertEweShegoat_Offspring
AS
SET DATEFORMAT dmy
-- Drop the previous table.
IF exists (SELECT * FROM sysobjects WHERE id = object_id(N'CertEweShegoat_Offspring') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE CertEweShegoat_Offspring
-- Create a new one.
SELECT * INTO CertEweShegoat_Offspring 
FROM Offspring
--WHERE IDDam = @IDDam
WHERE IDDam = (SELECT IDSheepGoat FROM Cert_SheepGoat)

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelectInto_SumGenEval_FarmSireOffspring_Temp    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelectInto_SumGenEval_FarmSireOffspring (@IDFarm char(2))
AS
-- Drop the previous table.
if exists (select * from sysobjects where id = object_id(N'SumGenEval_FarmSireOffspring') 
	and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table SumGenEval_FarmSireOffspring
-- Create a new one.
SELECT SheepGoat.IDFarm, Mate.IDSire, LambKid.DateLambKid, Offspring.IDLambKid, Offspring.WtBirth
INTO SumGenEval_FarmSireOffspring 
FROM Mate INNER JOIN LambKid ON Mate.IDDam = LambKid.IDDam AND Mate.Cycle = LambKid.Cycle 
	INNER JOIN Offspring ON LambKid.IDDam = Offspring.IDDam AND LambKid.Cycle = 
	Offspring.Cycle INNER JOIN SheepGoat ON Mate.IDSire = SheepGoat.IDSheepGoat
WHERE (SheepGoat.IDFarm = 'АА') AND (Offspring.IDLambKid <> '-') AND (SheepGoat.IDDispReas = '-')

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spUpdate_Offspring_IDDamCycleNoLK    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spUpdate_Offspring_IDDamCycleNoLK (@IDDam char(6), @Cycle tinyint, 
	@NoLambKidOrigin tinyint, @NoLambKid tinyint, @IDLambKid char(6), @IDSex char(1), 
	@WtBirth real, @IDLiv char(1))
AS
update Offspring
set IDDam = @IDDam, Cycle = @Cycle, NoLambKid = @NoLambKid, IDLambKid = @IDLambKid, 
	IDSex = @IDSex, WtBirth = @WtBirth/10, IDLiv = @IDLiv
where IDDam = @IDDam and Cycle = @Cycle and NoLambKid = @NoLambKidOrigin

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Stored Procedure dbo.spSelect_SumGenEvalV_IDFarm    Script Date: 14.08.02 4:51:26 ******/

CREATE PROCEDURE spSelect_SumGenEvalV_IDFarm (@IDFarm char(2))
AS
SELECT * FROM SumGenEvalV
WHERE IDFarm = @IDFarm

GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Trigger dbo.UpdateCountry    Script Date: 14.08.02 4:51:26 ******/

/****** Object:  Trigger dbo.UpdateCountry    Script Date: 06.05.02 22:31:31 ******/
CREATE TRIGGER UpdateCountry ON Countries
FOR UPDATE
AS
declare @OrigValue char(2), @NewValue char(2)
select @OrigValue = IDCountry from deleted
select @NewValue = IDCountry from inserted
update Oblasts set IDCountry = @NewValue
where Oblasts.IDCountry = @OrigValue


GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

/****** Object:  Trigger dbo.DeleteCountry    Script Date: 14.08.02 4:51:26 ******/

/****** Object:  Trigger dbo.DeleteCountry    Script Date: 06.05.02 22:31:31 ******/
CREATE TRIGGER DeleteCountry ON Countries
FOR DELETE 
AS
delete Oblasts from  Oblasts, deleted
where Oblasts.IDCountry=deleted.IDCountry




GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

