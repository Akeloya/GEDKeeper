unit GKLangs;

interface

uses
  Windows, SysUtils;

type
  TLangID = Windows.LANGID;

  ILocalization = interface
    ['{F7295BF7-EE01-4DD7-8C44-3BDFEAA9E318}']
    procedure SetLang();
  end;

  LSID = Cardinal;

const
  // Language String IDs
  LSID_None                     =   0;

  LSID_First                    =   1;

  LSID_MIFile                   =   1;
  LSID_MIEdit                   =   2;
  LSID_MIPedigree               =   3;
  LSID_MIService                =   4;
  LSID_MIWindow                 =   5;
  LSID_MIHelp                   =   6;

  LSID_MIFileNew                =   7;
  LSID_MIFileLoad               =   8;
  LSID_MIMRUFiles               =   9;
  LSID_MIFileSave               =  10;
  LSID_MIFileClose              =  11;
  LSID_MIFileProperties         =  12;
  LSID_MIExport                 =  13;
  LSID_MIExportToWeb            =  14;
  LSID_MIExportToExcelApp       =  15;
  LSID_MIExportToExcelFile      =  16;
  LSID_MIExit                   =  17;

  LSID_MIUndo                   =  18;
  LSID_MIRedo                   =  19;
  LSID_MIRecordAdd              =  20;
  LSID_MIRecordEdit             =  21;
  LSID_MIRecordDelete           =  22;
  LSID_MIStreamInput            =  23;

  LSID_MITreeAncestors          =  24;
  LSID_MITreeDescendants        =  25;
  LSID_MITreeBoth               =  26;
  LSID_MIPedigree_dAboville     =  27;
  LSID_MIPedigree_Konovalov     =  28;
  LSID_MIMap                    =  29;
  LSID_MIStats                  =  30;

  LSID_MICalc                   =  31;
  LSID_MINamesBook              =  32;
  LSID_MICalendar               =  33;
  LSID_MITimeLine               =  34;
  LSID_MIOrganizer              =  35;
  LSID_MIScripts                =  36;
  LSID_MIDBImport               =  37;
  LSID_MITreeTools              =  38;
  LSID_MIFilter                 =  39;
  LSID_MIOptions                =  40;

  LSID_MIWinCascade             =  41;
  LSID_MIWinHTile               =  42;
  LSID_MIWinVTile               =  43;
  LSID_MIWinMinimize            =  44;
  LSID_MIWinArrange             =  45;

  LSID_MIGenResources           =  46;
  LSID_MIKinshipTerms           =  47;
  LSID_MIFAQ                    =  48;
  LSID_MIContext                =  49;
  LSID_MIAbout                  =  50;

  LSID_SBRecords                =  51;
  LSID_SBFiltered               =  52;

  LSID_RPIndividuals            =  53;
  LSID_RPFamilies               =  54;
  LSID_RPNotes                  =  55;
  LSID_RPMultimedia             =  56;
  LSID_RPSources                =  57;
  LSID_RPRepositories           =  58;
  LSID_RPGroups                 =  59;
  LSID_RPResearches             =  60;
  LSID_RPTasks                  =  61;
  LSID_RPCommunications         =  62;
  LSID_RPLocations              =  63;

  LSID_UnkFemale                =  64;
  LSID_UnkMale                  =  65;

  LSID_SexN                     =  66;
  LSID_SexM                     =  67;
  LSID_SexF                     =  68;
  LSID_SexU                     =  69;

  LSID_FileSaveQuery            =  70;
  LSID_ParentsQuery             =  71;

  LSID_PersonDeleteQuery        =  72;
  LSID_FamilyDeleteQuery        =  73;
  LSID_NoteDeleteQuery          =  74;
  LSID_SourceDeleteQuery        =  75;
  LSID_MediaDeleteQuery         =  76;
  LSID_RepositoryDeleteQuery    =  77;
  LSID_GroupDeleteQuery         =  78;
  LSID_ResearchDeleteQuery      =  79;
  LSID_TaskDeleteQuery          =  80;
  LSID_CommunicationDeleteQuery =  81;
  LSID_LocationDeleteQuery      =  82;

  LSID_Address                  =  83;
  LSID_Events                   =  84;
  LSID_Surname                  =  85;
  LSID_Name                     =  86;
  LSID_Patronymic               =  87;
  LSID_Sex                      =  88;
  LSID_Nickname                 =  89;
  LSID_SurnamePrefix            =  90;
  LSID_NamePrefix               =  91;
  LSID_NameSuffix               =  92;
  LSID_Patriarch                =  93;
  LSID_Bookmark                 =  94;

  LSID_Association              =  95;
  LSID_Relation                 =  96;
  LSID_Person                   =  97;

  LSID_DlgAccept                =  98;
  LSID_DlgCancel                =  99;
  LSID_DlgClose                 = 100;
  LSID_DlgSelect                = 101;
  LSID_DlgAppend                = 102;

  LSID_WinPersonNew             = 103;
  LSID_WinPersonEdit            = 104;
  LSID_WinCheckSex              = 105;
  LSID_WinRecordSelect          = 106;
  LSID_WinSourceCitEdit         = 107;
  LSID_WinUserRefEdit           = 108;

  LSID_Note                     = 109;
  LSID_Source                   = 110;
  LSID_Page                     = 111;
  LSID_Certainty                = 112;
  LSID_Reference                = 113;
  LSID_Type                     = 114;

  LSID_Family                   = 115;
  LSID_Husband                  = 116;
  LSID_Wife                     = 117;
  LSID_Status                   = 118;
  LSID_Childs                   = 119;

  LSID_DetachHusbandQuery       = 120;
  LSID_DetachWifeQuery          = 121;
  LSID_DetachChildQuery         = 122;

  LSID_BirthDate                = 123;
  LSID_DeathDate                = 124;
  LSID_Restriction              = 125;

  LSID_Title                    = 126;
  LSID_Members                  = 127;

  LSID_WinGroupEdit             = 128;
  LSID_DetachMemberQuery        = 129;

  LSID_TimeScale                = 130;
  LSID_CurrentYear              = 131;

  LSID_Telephone                = 132;
  LSID_Mail                     = 133;
  LSID_WebSite                  = 134;

  LSID_Repository               = 135;
  LSID_Progress                 = 136;

  LSID_TimePassed               = 137;
  LSID_TimeRemain               = 138;
  LSID_TimeTotal                = 139;

  LSID_Date                     = 140;
  LSID_Text                     = 141;
  LSID_ShortTitle               = 142;
  LSID_Author                   = 143;
  LSID_Publication              = 144;
  LSID_Common                   = 145;

  LSID_DetachRepositoryQuery    = 146;

  LSID_StoreType                = 147;
  LSID_File                     = 148;
  LSID_View                     = 149;

  LSID_AdvancedWarning          = 150;

  LSID_Father                   = 151;
  LSID_Mother                   = 152;
  LSID_Parents                  = 153;
  LSID_Spouses                  = 154;
  LSID_Associations             = 155;
  LSID_UserRefs                 = 156;

  LSID_Cal_Gregorian            = 157;
  LSID_Cal_Julian               = 158;
  LSID_Cal_Hebrew               = 159;
  LSID_Cal_Islamic              = 160;
  LSID_Cal_Persian              = 161;
  LSID_Cal_Indian               = 162;
  LSID_Cal_Bahai                = 163;
  LSID_Cal_French               = 164;
  LSID_Cal_Roman                = 165;

  LSID_Unknown                  = 166;

  LSID_CopyResultToClipboard    = 167;

  LSID_Advanced                 = 168;
  LSID_AdvancedSupport          = 169;
  LSID_ExtName                  = 170;

  LSID_Location                 = 171;
  LSID_Latitude                 = 172;
  LSID_Longitude                = 173;

  LSID_Show                     = 174;
  LSID_SearchCoords             = 175;
  LSID_Search                   = 176;
  LSID_SelectCoords             = 177;
  LSID_SelectName               = 178;

  LSID_Priority                 = 179;
  LSID_Percent                  = 180;
  LSID_StartDate                = 181;
  LSID_StopDate                 = 182;

  LSID_Goal                     = 183;
  LSID_Theme                    = 184;
  LSID_Corresponder             = 185;
  LSID_Group                    = 186;

  LSID_DetachTaskQuery          = 187;
  LSID_DetachCommunicationQuery = 188;
  LSID_DetachGroupQuery         = 189;

  LSID_WinResearchEdit          = 190;
  LSID_WinTaskEdit              = 191;
  LSID_WinCommunicationEdit     = 192;

  LSID_Error                    = 193;
  LSID_LuaStartFailed           = 194;
  LSID_DateFormatInvalid        = 195;

  LSID_AdCountry                = 196;
  LSID_AdState                  = 197;
  LSID_AdCity                   = 198;
  LSID_AdPostalCode             = 199;

  LSID_Telephones               = 200;
  LSID_EMails                   = 201;
  LSID_WebSites                 = 202;

  LSID_Value                    = 203;
  LSID_Event                    = 204;
  LSID_Place                    = 205;
  LSID_Cause                    = 206;
  LSID_Agency                   = 207;

  LSID_PatFemale                = 208;
  LSID_PatMale                  = 209;

  LSID_NotSelectedPerson        = 210;
  LSID_IsNotDefinedSex          = 211;
  LSID_IsNotFamilies            = 212;

  LSID_AncestorsNumberIsInvalid = 213;
  LSID_DescendantsNumberIsInvalid = 214;

  LSID_GenerationsVisible       = 215;
  LSID_Unlimited                = 216;
  LSID_Spouse                   = 217;
  LSID_MarriageDate             = 218;

  LSID_DetachFatherQuery        = 219;
  LSID_DetachMotherQuery        = 220;
  LSID_DetachSpouseQuery        = 221;
  LSID_DetachParentsQuery       = 222;

  LSID_TM_Both                  = 223;
  LSID_TM_Ancestors             = 224;
  LSID_TM_Descendants           = 225;
  LSID_TM_TraceRoot             = 226;

  LSID_DoEdit                   = 227;
  LSID_FamilyAdd                = 228;
  LSID_SpouseAdd                = 229;
  LSID_SonAdd                   = 230;
  LSID_DaughterAdd              = 231;
  LSID_DoDelete                 = 232;
  LSID_RebuildTree              = 233;
  LSID_RebuildKinships          = 234;

  LSID_Links                    = 235;
  LSID_PlaceAndAttribute        = 236;
  LSID_LMarriage                = 237;
  LSID_LFamily                  = 238;
  LSID_Namesakes                = 239;

  LSID_RemoveEventQuery         = 240;
  LSID_DetachNoteQuery          = 241;
  LSID_DetachMultimediaQuery    = 242;
  LSID_DetachSourceQuery        = 243;
  LSID_RemoveAssociationQuery   = 244;
  LSID_RemoveUserRefQuery       = 245;

  LSID_LoadGedComFailed         = 246;
  LSID_CheckGedComFailed        = 247;

  LSID_BirthDays                = 248;
  LSID_DaysRemained             = 249;

  LSID_Interface                = 250;
  LSID_Trees                    = 251;
  LSID_Pedigrees                = 252;

  LSID_SaveCoding               = 253;
  LSID_WorkMode                 = 254;
  LSID_Simple                   = 255;
  LSID_Expert                   = 256;
  LSID_Internet                 = 257;
  LSID_ProxyUse                 = 258;
  LSID_ProxyServer              = 259;
  LSID_ProxyPort                = 260;
  LSID_ProxyLogin               = 261;
  LSID_ProxyPassword            = 262;
  LSID_Tips                     = 263;
  LSID_StartupTips              = 264;
  LSID_Language                 = 265;

  LSID_ListsAll                 = 266;
  LSID_ListPersons              = 267;
  LSID_NamesFormat              = 268;
  LSID_NF1                      = 269;
  LSID_NF2                      = 270;
  LSID_NF3                      = 271;
  LSID_DateFormat               = 272;
  LSID_PlacesWithAddress        = 273;
  LSID_HighlightUnparented      = 274;
  LSID_HighlightUnmarried       = 275;
  LSID_DefList                  = 276;

  LSID_ViewTree                 = 277;

  LSID_DiffLines                = 278;
  LSID_OnlyYears                = 279;
  LSID_Kinship                  = 280;
  LSID_SignsVisible             = 281;
  LSID_TreeDecorative           = 282;
  LSID_PortraitsVisible         = 283;
  LSID_ChildlessExclude         = 284;

  LSID_Decor                    = 285;
  LSID_Man                      = 286;
  LSID_Woman                    = 287;
  LSID_UnkSex                   = 288;
  LSID_UnHusband                = 289;
  LSID_UnWife                   = 290;
  LSID_Font                     = 291;

  LSID_PedigreeGen              = 292;
  LSID_IncludeAttributes        = 293;
  LSID_IncludeNotes             = 294;
  LSID_IncludeSources           = 295;
  LSID_PedigreeFormat           = 296;
  LSID_PF1                      = 297;
  LSID_PF2                      = 298;

  LSID_RecordGoto               = 299;
  LSID_RecordMoveUp             = 300;
  LSID_RecordMoveDown           = 301;

  LSID_FullName                 = 302;

  LSID_BirthPlace               = 303;
  LSID_DeathPlace               = 304;
  LSID_Residence                = 305;
  LSID_Age                      = 306;
  LSID_LifeExpectancy           = 307;
  LSID_DaysForBirth             = 308;
  LSID_Religion                 = 309;
  LSID_Nationality              = 310;
  LSID_Education                = 311;
  LSID_Occupation               = 312;
  LSID_Caste                    = 313;
  LSID_Mili                     = 314;
  LSID_MiliInd                  = 315;
  LSID_MiliDis                  = 316;
  LSID_MiliRank                 = 317;
  LSID_Changed                  = 318;

  LSID_MarrRegistered           = 319;
  LSID_MarrNotRegistered        = 320;
  LSID_MarrDivorced             = 321;

  LSID_Birth                    = 322;
  LSID_Adoption                 = 323;
  LSID_Christening              = 324;
  LSID_Graduation               = 325;
  LSID_Retirement               = 326;
  LSID_Naturalization           = 327;
  LSID_Emigration               = 328;
  LSID_Immigration              = 329;
  LSID_Census                   = 330;
  LSID_LastWill                 = 331;
  LSID_ProbateOfWill            = 332;
  LSID_Death                    = 333;
  LSID_Burial                   = 334;
  LSID_Cremation                = 335;

  LSID_Fact                     = 336;
  LSID_PhysicalDesc             = 337;
  LSID_NationalIDNumber         = 338;
  LSID_SocialSecurityNumber     = 339;
  LSID_ChildsCount              = 340;
  LSID_MarriagesCount           = 341;
  LSID_Property                 = 342;
  LSID_NobilityTitle            = 343;
  LSID_Travel                   = 344;
  LSID_Hobby                    = 345;
  LSID_Award                    = 346;

  LSID_RK_Unk                   = 347;
  LSID_RK_Father                = 348;
  LSID_RK_Mother                = 349;
  LSID_RK_Husband               = 350;
  LSID_RK_Wife                  = 351;
  LSID_RK_Son                   = 352;
  LSID_RK_Daughter              = 353;
  LSID_RK_Grandfather           = 354;
  LSID_RK_Grandmother           = 355;
  LSID_RK_Grandson              = 356;
  LSID_RK_Granddaughter         = 357;
  LSID_RK_Brother               = 358;
  LSID_RK_Sister                = 359;
  LSID_RK_SonInLaw              = 360;
  LSID_RK_DaughterInLaw         = 361;
  LSID_RK_HusbandFather         = 362;
  LSID_RK_HusbandMother         = 363;
  LSID_RK_WifeFather            = 364;
  LSID_RK_WifeMother            = 365;
  LSID_RK_Uncle                 = 366;
  LSID_RK_Aunt                  = 367;
  LSID_RK_Nephew                = 368;
  LSID_RK_Niece                 = 369;
  LSID_RK_CousinM               = 370;
  LSID_RK_CousinF               = 371;
  LSID_RK_01                    = 372;
  LSID_RK_02                    = 373;
  LSID_RK_03                    = 374;
  LSID_RK_04                    = 375;
  LSID_RK_05                    = 376;
  LSID_RK_06                    = 377;
  LSID_RK_07                    = 378;
  LSID_RK_08                    = 379;
  LSID_RK_09                    = 380;

  LSID_TooMuchWidth             = 381;
  LSID_Backward                 = 382;
  LSID_Forward                  = 383;
  LSID_Prev                     = 384;
  LSID_Next                     = 385;
  LSID_YouKnowWhat              = 386;

  LSID_LoadingLocations         = 387;
  LSID_NotSelected              = 388;

  LSID_MapSelection             = 389;
  LSID_MapSelOnAll              = 390;
  LSID_MSBirthPlaces            = 391;
  LSID_MSDeathPlaces            = 392;
  LSID_MSResiPlace              = 393;
  LSID_MapSelOnSelected         = 394;
  LSID_SaveImage                = 395;

  LSID_FormatUnsupported        = 396;
  LSID_DataLoadError            = 397;
  LSID_ParseError_LineSeq       = 398;
  LSID_PersonParsed             = 399;
  LSID_Generation               = 400;
  LSID_ParseError_AncNotFound   = 401;
  LSID_ParseError_DateInvalid   = 402;

  LSID_DK_0                     = 403;
  LSID_DK_1                     = 404;
  LSID_DK_2                     = 405;
  LSID_DK_3                     = 406;
  LSID_DK_4                     = 407;
  LSID_DK_5                     = 408;
  LSID_DK_6                     = 409;
  LSID_DK_7                     = 410;
  LSID_DK_8                     = 411;
  LSID_DK_9                     = 412;

  LSID_FEvt_1                   = 413;
  LSID_FEvt_2                   = 414;
  LSID_FEvt_3                   = 415;
  LSID_FEvt_4                   = 416;
  LSID_FEvt_5                   = 417;
  LSID_FEvt_6                   = 418;
  LSID_FEvt_7                   = 419;
  LSID_FEvt_8                   = 420;
  LSID_FEvt_9                   = 421;

  LSID_STRef                    = 422;
  LSID_STArc                    = 423;
  LSID_STStg                    = 424;

  LSID_MT_01                    = 425;
  LSID_MT_02                    = 426;
  LSID_MT_03                    = 427;
  LSID_MT_04                    = 428;
  LSID_MT_05                    = 429;
  LSID_MT_06                    = 430;
  LSID_MT_07                    = 431;
  LSID_MT_08                    = 432;
  LSID_MT_09                    = 433;
  LSID_MT_10                    = 434;
  LSID_MT_11                    = 435;
  LSID_MT_12                    = 436;
  LSID_MT_13                    = 437;
  LSID_MT_14                    = 438;
  LSID_MT_15                    = 439;

  LSID_Prt_1                    = 440;
  LSID_Prt_2                    = 441;
  LSID_Prt_3                    = 442;
  LSID_Prt_4                    = 443;
  LSID_Prt_5                    = 444;

  LSID_RStat_1                  = 445;
  LSID_RStat_2                  = 446;
  LSID_RStat_3                  = 447;
  LSID_RStat_4                  = 448;
  LSID_RStat_5                  = 449;
  LSID_RStat_6                  = 450;

  LSID_Com_1                    = 451;
  LSID_Com_2                    = 452;
  LSID_Com_3                    = 453;
  LSID_Com_4                    = 454;
  LSID_Com_5                    = 455;
  LSID_Com_6                    = 456;

  LSID_CD_1                     = 457;
  LSID_CD_2                     = 458;

  LSID_G_1                      = 459;
  LSID_G_2                      = 460;
  LSID_G_3                      = 461;
  LSID_G_4                      = 462;

  LSID_Cert_1                   = 463;
  LSID_Cert_2                   = 464;
  LSID_Cert_3                   = 465;
  LSID_Cert_4                   = 466;

  LSID_Research                 = 467;
  LSID_Task                     = 468;
  LSID_Communication            = 469;

  LSID_IDsCorrect               = 470;
  LSID_FormatCheck              = 471;
  LSID_IDsCorrectNeed           = 472;
  LSID_MainBaseSize             = 473;
  LSID_SyncFin                  = 474;
  LSID_PatSearch                = 475;
  LSID_LinksSearch              = 476;
  LSID_ArcNotFound              = 477;

  LSID_GenDB                    = 478;
  LSID_GenIndex                 = 479;

  LSID_SurnamesIndex            = 480;
  LSID_NamesIndex               = 481;
  LSID_BirthIndex               = 482;
  LSID_DeathIndex               = 483;
  LSID_CommonStats              = 484;
  LSID_ExpPedigree              = 485;

  LSID_InputSimple              = 486;
  LSID_InputSource              = 487;
  LSID_SourceKind               = 488;
  LSID_SK_Rev                   = 489;
  LSID_SK_Met                   = 490;
  LSID_Year                     = 491;
  LSID_Settlement               = 492;
  LSID_EventDate                = 493;
  LSID_EventType                = 494;
  LSID_Join                     = 495;
  LSID_Comment                  = 496;

  LSID_BranchCut                = 497;
  LSID_Not                      = 498;
  LSID_BCut_Years               = 499;
  LSID_BCut_Persons             = 500;

  LSID_SrcAll                   = 501;
  LSID_SrcNot                   = 502;
  LSID_SrcAny                   = 503;

  LSID_PLPerson                 = 504;
  LSID_PLGodparent              = 505;
  LSID_Child                    = 506;

  LSID_NameInvalid              = 507;
  LSID_BasePersonInvalid        = 508;
  LSID_SourceYearInvalid        = 509;
  LSID_ValueInvalid             = 510;

  LSID_Operation                = 511;
  LSID_ToolOp_1                 = 512;
  LSID_ToolOp_2                 = 513;
  LSID_ToolOp_3                 = 514;
  LSID_ToolOp_4                 = 515;
  LSID_ToolOp_5                 = 516;
  LSID_ToolOp_6                 = 517;
  LSID_ToolOp_7                 = 518;
  LSID_ToolOp_8                 = 519;
  LSID_ToolOp_9                 = 520;

  LSID_SearchMatches            = 521;
  LSID_CheckFamiliesConnection  = 522;

  LSID_All                      = 523;
  LSID_OnlyAlive                = 524;
  LSID_OnlyDied                 = 525;
  LSID_AliveBefore              = 526;
  LSID_OnlyMans                 = 527;
  LSID_OnlyWomans               = 528;

  LSID_NameMask                 = 529;
  LSID_PlaceMask                = 530;
  LSID_EventMask                = 531;
  LSID_OnlyPatriarchs           = 532;

  LSID_DateInvalid              = 533;

  LSID_People                   = 534;
  LSID_Years                    = 535;
  LSID_Decennial                = 536;
  LSID_HowBirthes               = 537;
  LSID_HowDeads                 = 538;

  LSID_Living                   = 539;
  LSID_Deads                    = 540;
  LSID_AvgAge                   = 541;
  LSID_AvgLife                  = 542;
  LSID_AvgChilds                = 543;
  LSID_AvgBorn                  = 544;
  LSID_AvgMarriagesCount        = 545;
  LSID_AvgMarriagesAge          = 546;

  LSID_AncestorsCount           = 547;
  LSID_DescendantsCount         = 548;
  LSID_GenerationsCount         = 549;
  LSID_BirthYears               = 550;
  LSID_BirthYearsDec            = 551;
  LSID_DeathYears               = 552;
  LSID_DeathYearsDec            = 553;
  LSID_DistrChilds              = 554;
  LSID_AgeFirstborn             = 555;
  LSID_MarriagesAge             = 556;
  LSID_DiffSpouses              = 557;

  LSID_SelAll                   = 558;
  LSID_SelFamily                = 559;
  LSID_SelAncestors             = 560;
  LSID_SelDescendants           = 561;

  LSID_RecMerge                 = 562;
  LSID_RM_Search                = 563;
  LSID_RM_Skip                  = 564;
  LSID_RM_Records               = 565;
  LSID_RM_SearchPersons         = 566;
  LSID_RM_DirectMatching        = 567;
  LSID_RM_IndistinctMatching    = 568;
  LSID_RM_OnlyNP                = 569;
  LSID_RM_BirthYear             = 570;
  LSID_RM_NameAccuracy          = 571;
  LSID_RM_YearInaccuracy        = 572;

  LSID_Repair                   = 573;
  LSID_MinGenerations           = 574;
  LSID_SetPatFlag               = 575;
  LSID_InsertIntoBook           = 576;

  LSID_SimilarSurnames          = 577;
  LSID_SimilarNames             = 578;

  LSID_RecsDeleted              = 579;
  LSID_Record                   = 580;
  LSID_Problem                  = 581;
  LSID_Solve                    = 582;
  LSID_PersonLonglived          = 583;
  LSID_PersonSexless            = 584;
  LSID_LiveYearsInvalid         = 585;
  LSID_StrangeSpouse            = 586;
  LSID_StrangeParent            = 587;
  LSID_Descendants              = 588;
  LSID_Generations              = 589;
  LSID_LinksCount               = 590;
  LSID_PlacesPrepare            = 591;
  LSID_PlaceAlreadyInBook       = 592;

  LSID_Last                     = 592;

const
  LSDefName = '�������';
  LSDefCode = 1049;
  LSDefList: array [LSID_First..LSID_Last] of string = (
    {   1 } '����',
    {   2 } '������',
    {   3 } '�����������',
    {   4 } '������',
    {   5 } '&����',
    {   6 } '�������',

    {   7 } '�����',
    {   8 } '�������...',
    {   9 } '������� ���������',
    {  10 } '���������...',
    {  11 } '�������',
    {  12 } '�������� �����...',
    {  13 } '�������',
    {  14 } '������� � Web...',
    {  15 } '������� � Excel...',
    {  16 } '������� � Excel-����...',
    {  17 } '�����',

    {  18 } '��������',
    {  19 } '�������',
    {  20 } '�������� ������',
    {  21 } '�������� ������',
    {  22 } '������� ������',
    {  23 } '�������� ����',

    {  24 } '����� �������',
    {  25 } '����� ��������',
    {  26 } '����� ������',
    {  27 } '������� �� ���������',
    {  28 } '������� �� ����������',
    {  29 } '�����',
    {  30 } '����������',

    {  31 } '�����������',
    {  32 } '���������� ����',
    {  33 } '���������',
    {  34 } '����� �������',
    {  35 } '����������',
    {  36 } '�������...',
    {  37 } '������ ��� ������...',
    {  38 } '�����������...',
    {  39 } '������',
    {  40 } '���������',

    {  41 } '&������',
    {  42 } '&�������������� �������',
    {  43 } '&������������ �������',
    {  44 } '&�������� ���',
    {  45 } '&���������� ���',

    {  46 } '������� � ���������...',
    {  47 } '������������ �������...',
    {  48 } '����� ���������� �������...',
    {  49 } '����������',
    {  50 } '� ���������',

    {  51 } '�������',
    {  52 } '�������������',

    {  53 } '�������',
    {  54 } '�����',
    {  55 } '�������',
    {  56 } '�����������',
    {  57 } '���������',
    {  58 } '������',
    {  59 } '������',
    {  60 } '������������',
    {  61 } '������',
    {  62 } '������������',
    {  63 } '�����',

    {  64 } '�����������',
    {  65 } '�����������',

    {  66 } '?',
    {  67 } '�������',
    {  68 } '�������',
    {  69 } '��������������',

    {  70 } '���� �������. ���������?',
    {  71 } '� ��������� �������� ������� ����� "%s". \n�������� � �� �������?',

    {  72 } '������� ������������ ������ "%s"?',
    {  73 } '������� ����� "%s"?',
    {  74 } '������� �������?',
    {  75 } '������� �������� "%s"?',
    {  76 } '������� ����������� "%s"?',
    {  77 } '������� ����� "%s"?',
    {  78 } '������� ������ "%s"?',
    {  79 } '������� ������������ "%s"?',
    {  80 } '������� ������ "%s"?',
    {  81 } '������� ������������ "%s"?',
    {  82 } '������� ����� "%s"?',

    {  83 } '�����',
    {  84 } '�����',
    {  85 } '�������',
    {  86 } '���',
    {  87 } '��������',
    {  88 } '���',
    {  89 } '��������',
    {  90 } '������� �������',
    {  91 } '������� �����',
    {  92 } '������� �����',
    {  93 } '��������',
    {  94 } '��������',
    {  95 } '����������',
    {  96 } '���������',
    {  97 } '�������',

    {  98 } '�������',
    {  99 } '��������',
    { 100 } '�������',
    { 101 } '�������',
    { 102 } '��������',

    { 103 } '����� ������������ ������',
    { 104 } '�������������� ������������ ������',
    { 105 } '�������� ����',
    { 106 } '����� ������',
    { 107 } '������ ���������',
    { 108 } '���������������� ������',

    { 109 } '�������',
    { 110 } '��������',
    { 111 } '����/��������',
    { 112 } '�������������',
    { 113 } '������/������',
    { 114 } '���',
    { 115 } '�����',
    { 116 } '���',
    { 117 } '����',
    { 118 } '������',
    { 119 } '����',

    { 120 } '������� ������ �� ����?',
    { 121 } '������� ������ �� ����?',
    { 122 } '������� ������ �� �������?',

    { 123 } '���� ��������',
    { 124 } '���� ������',
    { 125 } '����������� ������������',

    { 126 } '��������',
    { 127 } '���������',

    { 128 } '�������������� ������',
    { 129 } '������� ������ �� ��������� ������?',

    { 130 } '����� �������',
    { 131 } '������� ���',

    { 132 } '�������',
    { 133 } '��. �����',
    { 134 } '����',

    { 135 } '�����',
    { 136 } '��������',
    { 137 } '������� ������',
    { 138 } '������� ��������',
    { 139 } '������� �����',

    { 140 } '����',
    { 141 } '�����',
    { 142 } '������� ��������',
    { 143 } '�����',
    { 144 } '������������',
    { 145 } '�����',

    { 146 } '������� ������ �� �����?',

    { 147 } '������ ��������',
    { 148 } '����', {need delete}
    { 149 } '��������',

    { 150 } '��� ���������� ���� �������� �� ������� ����� ����������',

    { 151 } '����',
    { 152 } '����',
    { 153 } '��������',
    { 154 } '�������',
    { 155 } '����������',
    { 156 } '������/�������',

    { 157 } '�������������',
    { 158 } '���������',
    { 159 } '���������',
    { 160 } '��������� (������)',
    { 161 } '��������',
    { 162 } '���������',
    { 163 } '�����',
    { 164 } '�����������',
    { 165 } '�������',

    { 166 } '����������',

    { 167 } '��������� ��������� � ����� ������',

    { 168 } '���������� �������',
    { 169 } '��������� ���������� (�����, ��������� ������)',
    { 170 } '�������� ������ � ����� ���������',

    { 171 } '��������������',
    { 172 } '������',
    { 173 } '�������',

    { 174 } '��������',
    { 175 } '����� ���������',
    { 176 } '�����',
    { 177 } '������� �����.',
    { 178 } '������� ��������',

    { 179 } '���������',
    { 180 } '�������',
    { 181 } '��������',
    { 182 } '���������',

    { 183 } '����',
    { 184 } '����',
    { 185 } '�������������',
    { 186 } '������',

    { 187 } '������� ������ �� ������?',
    { 188 } '������� ������ �� ���������������?',
    { 189 } '������� ������ �� ������?',

    { 190 } '�������������� ������������',
    { 191 } '�������������� ������',
    { 192 } '�������������� ������������',

    { 193 } '������',
    { 194 } '������ ������� Lua!',
    { 195 } '������������ ������ ����',

    { 196 } '������',
    { 197 } '����/�������',
    { 198 } '�����',
    { 199 } '�������� ���',

    { 200 } '��������',
    { 201 } '��. �����',
    { 202 } '���-��������',

    { 203 } '��������',
    { 204 } '�������',
    { 205 } '�����',
    { 206 } '�������',
    { 207 } '��������������������� �����',

    { 208 } '�������',
    { 209 } '�������',

    { 210 } '�� ������� ������������ ������',
    { 211 } '� ������ ������� �� ����� ���.',
    { 212 } '� ������ ������� ��� �����.',

    { 213 } '��������� ���������� ������� %s ������ ���������� ��������.',
    { 214 } '��������� ���������� �������� %s ������ ���������� ��������.',

    { 215 } '���������� ���������:',
    { 216 } '�������������',
    { 217 } 'C�����(�)',
    { 218 } '���� �����',

    { 219 } '������� ������ �� ����?',
    { 220 } '������� ������ �� ����?',
    { 221 } '������� ������ �� �������?',
    { 222 } '������� ������� �� ����� ���������?',

    { 223 } '��',
    { 224 } '������ ������',
    { 225 } '������ �������',
    { 226 } '��������� ������',

    { 227 } '�������������',
    { 228 } '�������� �����',
    { 229 } '�������� �������(�)',
    { 230 } '�������� ����',
    { 231 } '�������� ����',
    { 232 } '�������',
    { 233 } '����������� �����',
    { 234 } '����������� ���������',

    { 235 } '������',
    { 236 } '�����/�������',
    { 237 } '����',
    { 238 } '�����',
    { 239 } 'Ҹ���',

    { 240 } '������� ����?',
    { 241 } '������� ������ �� �������?',
    { 242 } '������� ������ �� �����������?',
    { 243 } '������� ������ �� ��������?',
    { 244 } '������� ����������?',
    { 245 } '������� ���������������� ������?',

    { 246 } '������ �������� �����',
    { 247 } '������ �������� �������',

    { 248 } '��� ��������',
    { 249 } '�� ��� �������� "%s" �������� %s ���(-��)',

    { 250 } '���������',
    { 251 } '����������� �����',
    { 252 } '�������',

    { 253 } '��������� ���������� ������',
    { 254 } '����� ������',
    { 255 } '�������',
    { 256 } '�����������',
    { 257 } '�������� �� ���������',
    { 258 } '������������ ������-������',
    { 259 } '������',
    { 260 } '����',
    { 261 } '�����',
    { 262 } '������',
    { 263 } '���������',
    { 264 } '���������� ��� ������',
    { 265 } '����',

    { 266 } '��� ������',
    { 267 } '������ ������',
    { 268 } '������ ���� � �������',
    { 269 } '�������_���_��������',
    { 270 } '�������; ���_��������',
    { 271 } '�������; ���; ��������',
    { 272 } '������ ���� � �������',
    { 273 } '�������� ����� � ������ ����',
    { 274 } '������������ ������� ��� ���������',
    { 275 } '������������ ������� ��� �����',
    { 276 } '�������� �� ���������',

    { 277 } '����������� ������ � �����',
    { 278 } '������ ������ (��� � ��������)',
    { 279 } '������ ����',
    { 280 } '������� �������',
    { 281 } '�������������� �������',
    { 282 } '������������ ����������',
    { 283 } '���������� ��������',
    { 284 } '��������� ������� � �������',

    { 285 } '����������',
    { 286 } '�������',
    { 287 } '�������',
    { 288 } '����������� ���',
    { 289 } '����������� ������',
    { 290 } '����������� �������',
    { 291 } '�����',

    { 292 } '��������� ��������',
    { 293 } '������� �������� ������',
    { 294 } '������� �������',
    { 295 } '������� ���������',
    { 296 } '������',
    { 297 } '����������',
    { 298 } '������������',

    { 299 } '������� �� ������',
    { 300 } '��������� ����',
    { 301 } '��������� ����',

    { 302 } '������ ���',
    { 303 } '����� ��������',
    { 304 } '����� ������',
    { 305 } '���������������',
    { 306 } '�������',
    { 307 } '����������������� �����',
    { 308 } '���� �� ��',
    { 309 } '���������������',
    { 310 } '��������������',
    { 311 } '�����������',
    { 312 } '���������',
    { 313 } '���������� ���������',
    { 314 } '������� ������',
    { 315 } '������� � ��',
    { 316 } '������ �� ��',
    { 317 } '������ � ��',
    { 318 } '��������',

    { 319 } '���� ���������������',
    { 320 } '���� �� ���������������',
    { 321 } '���������',

    { 322 } '��������',
    { 323 } '�����������',
    { 324 } '��������',
    { 325 } '��������� ������ �������',
    { 326 } '���� �� ������',
    { 327 } '�������������',
    { 328 } '���������',
    { 329 } '����������',
    { 330 } '��������',
    { 331 } '���������',
    { 332 } '����������� ���������',
    { 333 } '������',
    { 334 } '��������',
    { 335 } '��������',

    { 336 } '����',
    { 337 } '���������� ��������',
    { 338 } '����������������� �����',
    { 339 } '��� ����������� �����������',
    { 340 } '���������� �����',
    { 341 } '���������� ������',
    { 342 } '�������������',
    { 343 } '�����',
    { 344 } '�����������',
    { 345 } '�����',
    { 346 } '�������',

    { 347 } '?',
    { 348 } '����',
    { 349 } '����',
    { 350 } '���',
    { 351 } '����',
    { 352 } '���',
    { 353 } '����',
    { 354 } '���',
    { 355 } '�������',
    { 356 } '����',
    { 357 } '������',
    { 358 } '����',
    { 359 } '������',
    { 360 } '����',
    { 361 } '��������',
    { 362 } '������',
    { 363 } '��������',
    { 364 } '�����',
    { 365 } '����',
    { 366 } '����',
    { 367 } '����',
    { 368 } '���������',
    { 369 } '����������',
    { 370 } '�����',
    { 371 } '������',

    { 372 } '<reserved>',
    { 373 } '<reserved>',
    { 374 } '<reserved>',
    { 375 } '<reserved>',
    { 376 } '<reserved>',
    { 377 } '<reserved>',
    { 378 } '<reserved>',
    { 379 } '<reserved>',
    { 380 } '<reserved>',

    { 381 } '������ ����������� ����� 65 ���. �����. ��������� ����������',
    { 382 } '�����',
    { 383 } '������',
    { 384 } '<reserved>',
    { 385 } '�����',
    { 386 } '�� ������ ���...',

    { 387 } '�������� � ����� ����',
    { 388 } '( �� ������ )',

    { 389 } '�������',
    { 390 } '�� ���� �����',
    { 391 } '����� ��������',
    { 392 } '����� ������',
    { 393 } '����� ����������',
    { 394 } '������ �� ����������',
    { 395 } '��������� ������...',

    { 396 } '������ �� ��������������',
    { 397 } '������ �������� ������.',
    { 398 } '������ �������: ������ ������� �������� �������.',
    { 399 } '���������� ������������ ������',
    { 400 } '���������',
    { 401 } '������ �������: � ������ �� ��������� ������ � �������',
    { 402 } '������ �������: ����',

    { 403 } '�����',
    { 404 } '�����',
    { 405 } '�������',
    { 406 } '�����',
    { 407 } '������ ��',
    { 408 } '������ �����',
    { 409 } '������ �����',
    { 410 } '�����',
    { 411 } '�� �������',
    { 412 } '�� ������',

    { 413 } '��������',
    { 414 } '��������������',
    { 415 } '��������� ���������� � ��������������',
    { 416 } '���������� �������� ���������',
    { 417 } '��������� ���������� �� ����',
    { 418 } '���������� �������� ����������',
    { 419 } '������������� �����',
    { 420 } '������ ��������� � �������',
    { 421 } '������',

    { 422 } '������ �� ����',
    { 423 } '���������� � ������',
    { 424 } '���������� � ���������',

    { 425 } '-',
    { 426 } '�����������',
    { 427 } '�����',
    { 428 } '��������',
    { 429 } '�����������',
    { 430 } '���������',
    { 431 } '�����',
    { 432 } '������',
    { 433 } '��������',
    { 434 } '�����',
    { 435 } '������',
    { 436 } '����������',
    { 437 } '���������',
    { 438 } '�����',
    { 439 } '- ������ -',

    { 440 } '�� �����',
    { 441 } '������',
    { 442 } '����������',
    { 443 } '�������',
    { 444 } '�������',

    { 445 } '����������',
    { 446 } '�����������',
    { 447 } '���������',
    { 448 } '����������',
    { 449 } '���������',
    { 450 } '��������',

    { 451 } '������',
    { 452 } '��.������',
    { 453 } '����',
    { 454 } '������',
    { 455 } '�������',
    { 456 } '�����',

    { 457 } '��',
    { 458 } '�',

    { 459 } '�������',
    { 460 } '�����',
    { 461 } '��������',
    { 462 } '����',

    { 463 } '���������� ������������� ��� �������������� ������',
    { 464 } '������������ ���������� �������������',
    { 465 } '��������� ��������������',
    { 466 } '������ � ��������� ��������������',

    { 467 } '������������',
    { 468 } '������',
    { 469 } '���������������',

    { 470 } '��������� ���������������',
    { 471 } '�������� �������',
    { 472 } '��������� ��������� ��������������� �������, ����������?',
    { 473 } '���������� �������� � �������� ����: %s',
    { 474 } '������������� ���������.',
    { 475 } '����� ����������',
    { 476 } '����� ������������',
    { 477 } '����� �� ������, ������ �� ���������',

    { 478 } '��������������� ���� ������',
    { 479 } '������',
    { 480 } '������ �������',
    { 481 } '������ ����',
    { 482 } '������ ����� ��������',
    { 483 } '������ ����� ������',
    { 484 } '����� ����������',
    { 485 } '����������� �������',

    { 486 } '������� ����',
    { 487 } '�������� (�������/�������)',
    { 488 } '��� ���������',
    { 489 } '��������� ������',
    { 490 } '����������� �����',
    { 491 } '���',
    { 492 } '���������� �����',
    { 493 } '���� �������',
    { 494 } '��� �������',
    { 495 } '�����',
    { 496 } '����������',

    { 497 } '��������� ������',
    { 498 } '���',
    { 499 } '�� ������� ���',
    { 500 } '�� �������� �����',

    { 501 } '- �� -',
    { 502 } '- ��� -',
    { 503 } '- ����� -',

    { 504 } '����',
    { 505 } '��������',
    { 506 } '�������',

    { 507 } '���������� ����������� ����� ������ ����.',
    { 508 } '������� ������� ("����") �� ���������� ������',
    { 509 } '��� ��������� ����� �������',
    { 510 } '�������� �������',

    { 511 } '��������',
    { 512 } '�������� ���� ������',
    { 513 } '���������� ���� ������',
    { 514 } '��������� ���� ������',
    { 515 } '���������� ��������� �������',
    { 516 } '������ �������� �� ������� ��������',
    { 517 } '�������� ��������� �����',
    { 518 } '�������� ���� ������',
    { 519 } '����� ����������',
    { 520 } '���������� �������',

    { 521 } '����� ����������...',
    { 522 } '�������� ��������� �����',

    { 523 } '���',
    { 524 } '������ �����',
    { 525 } '������ �������',
    { 526 } '� ����� ��',

    { 527 } '������ �������',
    { 528 } '������ �������',

    { 529 } '����� �����',
    { 530 } '����� ���������������',
    { 531 } '����� ������',
    { 532 } '������ ����� �����',

    { 533 } '���� �������',

    { 534 } '����',
    { 535 } '����',
    { 536 } '�����������',
    { 537 } '��������',
    { 538 } '������',

    { 539 } '�������',
    { 540 } '�������',
    { 541 } '������� �������',
    { 542 } '������� ����������������� �����',
    { 543 } '������� ����� �����',
    { 544 } '������� ������� �������� ��������',
    { 545 } '������� ���������� ������',
    { 546 } '������� ������� ���������� �����',

    { 547 } '���������� �������',
    { 548 } '���������� ��������',
    { 549 } '���������� ��������� ��������',
    { 550 } '���� ��������',
    { 551 } '���� �������� (�������������)',
    { 552 } '���� ������',
    { 553 } '���� ������ (�������������)',
    { 554 } '������������� ���������� �����',
    { 555 } '������� �������� ��������',
    { 556 } '������� ���������� � ����',
    { 557 } '������� ��������� ��������',

    { 558 } '������� ��� �����',
    { 559 } '������� �����',
    { 560 } '������� �������',
    { 561 } '������� ��������',

    { 562 } '�����������',
    { 563 } '���������',
    { 564 } '����������',
    { 565 } '������',
    { 566 } '����� ������',
    { 567 } '������ ���������',
    { 568 } '�������� ���������',
    { 569 } '������ �� �����/�������� (������ �������)',
    { 570 } '��������� ��� ��������',
    { 571 } '�������� �����, %',
    { 572 } '����������� ���',

    { 573 } '���������',
    { 574 } '��������� �������� �� �����',
    { 575 } '���������� �������',
    { 576 } '������ � ����������',

    { 577 } '������ �������:',
    { 578 } '������ �����:',

    { 579 } '��������� ������������ ������ �������',
    { 580 } '������',
    { 581 } '��������',
    { 582 } '�������',
    { 583 } '�������� ������� (������� %s)',
    { 584 } '�� ����� ���',
    { 585 } '��� �������� ������ ���� ������',
    { 586 } '������ ���� � �������� %s ���?',
    { 587 } '������ ������� ������� � �������� %s ���?',
    { 588 } '��������',
    { 589 } '���������',
    { 590 } '���������� ������',
    { 591 } '��������� ����',
    { 592 } '����� ��� ���� � �����������'
  );

var
  LSList: array [LSID_First..LSID_Last] of string;

implementation

uses
  GKUtils;

procedure SaveSample();
var
  lf: TextFile;
  i: Integer;
begin
  AssignFile(lf, GetAppPath() + 'langs\russian.sample'); Rewrite(lf);
  Writeln(lf, ';'+IntToStr(LSDefCode)+','+AnsiToUTF8(LSDefName));
  for i := LSID_First to LSID_Last do Writeln(lf, AnsiToUTF8(LSDefList[i]));
  CloseFile(lf);
end;

initialization
  //SaveSample();

end.
