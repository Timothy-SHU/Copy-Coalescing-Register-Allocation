; ModuleID = 'simulator/msg2.tab.cc'
source_filename = "simulator/msg2.tab.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MSG2ParserState = type { i8, i8, %"class.std::vector", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl" }
%"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl" = type { %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.my_yyltype = type { i32, i32, i32, i32, i32, ptr }
%struct.LineColumn = type { i32, i32 }
%class.NEDParser = type { i8, i8, ptr, ptr, ptr }
%class.EnumElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.MessageElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PacketElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ClassElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.StructElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NamespaceElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.CplusplusElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.StructDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ClassDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string" }
%class.MessageDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.PacketDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.EnumDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.EnumFieldElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.FieldElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, i8, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PropertyElement = type { %class.NEDElement, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PropertyKeyElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.MsgFileElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.std::allocator.0" = type { i8 }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.8 }
%union.anon.8 = type { ptr }
%"class.__gnu_cxx::__normal_iterator.9" = type { ptr }
%struct._Guard = type { ptr }

$_ZN15MSG2ParserStateC2Ev = comdat any

$_ZN15MSG2ParserStateD2Ev = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP10NEDElementSaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaIP10NEDElementEC2Ev = comdat any

$_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIP10NEDElementEC2Ev = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPP10NEDElementS1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIP10NEDElementSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPP10NEDElementEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPP10NEDElementEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt15__new_allocatorIP10NEDElementED2Ev = comdat any

$_ZNSt16allocator_traitsISaIP10NEDElementEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIP10NEDElementE10deallocateEPS1_m = comdat any

$_ZN9NEDParser18getStoreSourceFlagEv = comdat any

$_ZN11EnumElement13setSourceCodeEPKc = comdat any

$_ZN14MessageElement13setSourceCodeEPKc = comdat any

$_ZN13PacketElement13setSourceCodeEPKc = comdat any

$_ZN12ClassElement13setSourceCodeEPKc = comdat any

$_ZN13StructElement13setSourceCodeEPKc = comdat any

$_ZN16NamespaceElement7setNameEPKc = comdat any

$_ZN16CplusplusElement7setBodyEPKc = comdat any

$_ZN17StructDeclElement7setNameEPKc = comdat any

$_ZN16ClassDeclElement7setNameEPKc = comdat any

$_ZN16ClassDeclElement12setIsCobjectEb = comdat any

$_ZN16ClassDeclElement14setExtendsNameEPKc = comdat any

$_ZN18MessageDeclElement7setNameEPKc = comdat any

$_ZN17PacketDeclElement7setNameEPKc = comdat any

$_ZN15EnumDeclElement7setNameEPKc = comdat any

$_ZN11EnumElement7setNameEPKc = comdat any

$_ZN11EnumElement14setExtendsNameEPKc = comdat any

$_ZN16EnumFieldElement7setNameEPKc = comdat any

$_ZN16EnumFieldElement8setValueEPKc = comdat any

$_ZN14MessageElement7setNameEPKc = comdat any

$_ZN14MessageElement14setExtendsNameEPKc = comdat any

$_ZN13PacketElement7setNameEPKc = comdat any

$_ZN13PacketElement14setExtendsNameEPKc = comdat any

$_ZN12ClassElement7setNameEPKc = comdat any

$_ZN12ClassElement14setExtendsNameEPKc = comdat any

$_ZN13StructElement7setNameEPKc = comdat any

$_ZN13StructElement14setExtendsNameEPKc = comdat any

$_ZN12FieldElement7setNameEPKc = comdat any

$_ZN12FieldElement11setDataTypeEPKc = comdat any

$_ZN12FieldElement13setIsAbstractEb = comdat any

$_ZN12FieldElement13setIsReadonlyEb = comdat any

$_ZN12FieldElement11setIsVectorEb = comdat any

$_ZN12FieldElement13setVectorSizeEPKc = comdat any

$_ZN12FieldElement11setEnumNameEPKc = comdat any

$_ZN12FieldElement15setDefaultValueEPKc = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EE5clearEv = comdat any

$_ZN15PropertyElement8setIndexEPKc = comdat any

$_ZN18PropertyKeyElement7setNameEPKc = comdat any

$_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EEixEm = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EE9push_backERKS1_ = comdat any

$_ZN14MsgFileElement10setVersionEPKc = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZNSt16allocator_traitsISaIP10NEDElementEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EE3endEv = comdat any

$_ZNSt15__new_allocatorIP10NEDElementE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIP10NEDElementSaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPP10NEDElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNKSt6vectorIP10NEDElementSaIS1_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIP10NEDElementEE8max_sizeERKS2_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIP10NEDElementE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIP10NEDElementE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIP10NEDElementEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIP10NEDElementE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPP10NEDElementS2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IP10NEDElementS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPP10NEDElementET_S3_ = comdat any

$_ZN9NEDParser9getErrorsEv = comdat any

$_ZN14MsgFileElement11setFilenameEPKc = comdat any

$_ZN9NEDParser11getFileNameEv = comdat any

$_ZN9NEDParser9getSourceEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZN15MSG2ParserStateaSERKS_ = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_ = comdat any

$_ZNKSt6vectorIP10NEDElementSaIS1_EE8capacityEv = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_ = comdat any

$_ZNKSt6vectorIP10NEDElementSaIS1_EE5beginEv = comdat any

$_ZNKSt6vectorIP10NEDElementSaIS1_EE3endEv = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_ = comdat any

$_ZSt4copyIPP10NEDElementS2_ET0_T_S4_S3_ = comdat any

$_ZSt22__uninitialized_copy_aIPP10NEDElementS2_S1_ET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEET_SA_ = comdat any

$_ZSt12__niter_wrapIPP10NEDElementET_RKS3_S3_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__niter_baseIPKP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE = comdat any

$_ZSt14__copy_move_a2ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10NEDElementEEPT_PKS5_S8_S6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS4_ = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEEEvT_S9_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS5_SaIS5_EEEEEEvT_SB_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_ = comdat any

$_ZSt12__niter_baseIPP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEplEl = comdat any

$_ZSt13__copy_move_aILb0EPP10NEDElementS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPP10NEDElementET_S3_ = comdat any

$_ZSt14__copy_move_a1ILb0EPP10NEDElementS2_ET1_T0_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPP10NEDElementS2_ET1_T0_S4_S3_ = comdat any

$_ZSt18uninitialized_copyIPP10NEDElementS2_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP10NEDElementS4_EET0_T_S6_S5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZTS12NEDException = comdat any

$_ZTI12NEDException = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTV17opp_runtime_error = comdat any

@_ZL2ps = internal global %struct.MSG2ParserState zeroinitializer, align 8
@__dso_handle = external hidden global i8
@msg2yydebug = dso_local local_unnamed_addr global i32 0, align 4
@msg2yychar = dso_local local_unnamed_addr global i32 0, align 4
@msg2yylval = dso_local local_unnamed_addr global ptr null, align 8
@msg2yynerrs = dso_local local_unnamed_addr global i32 0, align 4
@msg2yylloc = dso_local local_unnamed_addr global %struct.my_yyltype zeroinitializer, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@_ZL6yypact = internal unnamed_addr constant [243 x i16] [i16 -132, i16 29, i16 156, i16 -132, i16 25, i16 26, i16 27, i16 32, i16 30, i16 34, i16 45, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -12, i16 -12, i16 -12, i16 -12, i16 -132, i16 -31, i16 -2, i16 10, i16 14, i16 53, i16 16, i16 18, i16 20, i16 66, i16 75, i16 76, i16 -132, i16 78, i16 -8, i16 -132, i16 74, i16 -132, i16 36, i16 31, i16 -132, i16 -132, i16 -132, i16 48, i16 -132, i16 -132, i16 -132, i16 89, i16 -132, i16 -132, i16 97, i16 -132, i16 -132, i16 57, i16 99, i16 -132, i16 -132, i16 100, i16 -132, i16 -132, i16 101, i16 -132, i16 -132, i16 -132, i16 -132, i16 58, i16 71, i16 123, i16 -132, i16 -132, i16 -3, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 39, i16 -132, i16 131, i16 -132, i16 -7, i16 132, i16 91, i16 92, i16 -132, i16 0, i16 102, i16 108, i16 151, i16 152, i16 153, i16 124, i16 111, i16 -132, i16 112, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 114, i16 159, i16 160, i16 -132, i16 -132, i16 -132, i16 -132, i16 161, i16 69, i16 115, i16 121, i16 -132, i16 105, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -15, i16 122, i16 151, i16 -132, i16 118, i16 125, i16 -132, i16 153, i16 -132, i16 21, i16 -2, i16 17, i16 173, i16 112, i16 1, i16 -132, i16 -132, i16 -132, i16 167, i16 168, i16 -132, i16 -7, i16 1, i16 151, i16 -132, i16 37, i16 -2, i16 -132, i16 -132, i16 1, i16 -132, i16 -132, i16 -132, i16 23, i16 -132, i16 126, i16 127, i16 -132, i16 128, i16 130, i16 173, i16 -132, i16 105, i16 -132, i16 -132, i16 -132, i16 -132, i16 133, i16 -132, i16 -132, i16 169, i16 136, i16 -132, i16 137, i16 -132, i16 -132, i16 -132, i16 171, i16 90, i16 138, i16 130, i16 -2, i16 -132, i16 -132, i16 -132, i16 134, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 90, i16 -132, i16 -132, i16 139, i16 -132, i16 -132, i16 -132, i16 -132], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"Reading a token: \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@_ZL11yytranslate = internal unnamed_addr constant [303 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02F7B\02@A53D4C6\02\02\02\02\02\02\02\02\02\020:2=1/E\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02>\02?8\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02;\02<\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-.9", align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Next token is\00", align 1
@_ZL7yycheck = internal unnamed_addr constant [210 x i16] [i16 42, i16 13, i16 14, i16 15, i16 16, i16 13, i16 14, i16 15, i16 16, i16 140, i16 17, i16 18, i16 19, i16 20, i16 17, i16 22, i16 23, i16 48, i16 17, i16 18, i16 19, i16 20, i16 12, i16 22, i16 23, i16 156, i16 12, i16 58, i16 12, i16 0, i16 12, i16 5, i16 12, i16 152, i16 17, i16 18, i16 15, i16 16, i16 15, i16 16, i16 159, i16 11, i16 17, i16 58, i16 17, i16 52, i16 61, i16 17, i16 60, i16 17, i16 53, i16 17, i16 60, i16 52, i16 17, i16 18, i16 58, i16 69, i16 58, i16 59, i16 191, i16 69, i16 17, i16 70, i16 25, i16 26, i16 27, i16 28, i16 58, i16 59, i16 17, i16 70, i16 58, i16 59, i16 58, i16 59, i16 58, i16 59, i16 58, i16 59, i16 63, i16 60, i16 16, i16 60, i16 25, i16 26, i16 27, i16 18, i16 19, i16 52, i16 15, i16 17, i16 14, i16 17, i16 58, i16 64, i16 48, i16 139, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 17, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 17, i16 58, i16 17, i16 17, i16 17, i16 48, i16 62, i16 163, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 13, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 17, i16 17, i16 59, i16 59, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 3, i16 4, i16 59, i16 6, i16 7, i16 8, i16 9, i16 10, i16 59, i16 17, i16 17, i16 17, i16 60, i16 48, i16 68, i16 62, i16 61, i16 17, i16 17, i16 17, i16 58, i16 65, i16 63, i16 60, i16 10, i16 17, i16 17, i16 61, i16 18, i16 17, i16 63, i16 63, i16 61, i16 64, i16 60, i16 58, i16 58, i16 58, i16 58, i16 143, i16 65, i16 153, i16 190, i16 132, i16 170, i16 42, i16 235, i16 144, i16 151, i16 -1, i16 137], align 16
@_ZL7yytable = internal unnamed_addr constant [210 x i16] [i16 76, i16 -52, i16 -52, i16 37, i16 38, i16 -51, i16 -51, i16 37, i16 38, i16 164, i16 109, i16 110, i16 111, i16 112, i16 -66, i16 113, i16 114, i16 51, i16 171, i16 110, i16 111, i16 112, i16 55, i16 113, i16 114, i16 182, i16 58, i16 52, i16 62, i16 3, i16 65, i16 30, i16 68, i16 176, i16 165, i16 166, i16 37, i16 38, i16 37, i16 38, i16 183, i16 33, i16 28, i16 154, i16 31, i16 115, i16 155, i16 34, i16 -52, i16 32, i16 102, i16 35, i16 -51, i16 115, i16 178, i16 179, i16 53, i16 39, i16 126, i16 127, i16 239, i16 39, i16 36, i16 116, i16 104, i16 105, i16 106, i16 107, i16 56, i16 57, i16 61, i16 116, i16 59, i16 60, i16 63, i16 64, i16 66, i16 67, i16 69, i16 70, i16 167, i16 -160, i16 71, i16 -159, i16 48, i16 49, i16 50, i16 148, i16 149, i16 180, i16 72, i16 78, i16 74, i16 73, i16 88, i16 89, i16 90, i16 161, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 91, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 92, i16 93, i16 94, i16 95, i16 96, i16 99, i16 98, i16 184, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 100, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 108, i16 123, i16 124, i16 125, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 4, i16 5, i16 128, i16 6, i16 7, i16 8, i16 9, i16 10, i16 129, i16 130, i16 134, i16 135, i16 140, i16 139, i16 152, i16 141, i16 144, i16 145, i16 146, i16 147, i16 151, i16 150, i16 158, i16 156, i16 168, i16 173, i16 174, i16 159, i16 192, i16 195, i16 185, i16 186, i16 188, i16 187, i16 191, i16 193, i16 194, i16 237, i16 242, i16 170, i16 240, i16 177, i16 238, i16 157, i16 190, i16 77, i16 241, i16 172, i16 175, i16 0, i16 160], align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@_ZL8yydefact = internal unnamed_addr constant [243 x i8] c"\04\00\02\01\00\00\00\00\00\00\00\03\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10AAAA\13\00\AB\00\00\00\00\00\00=>\00&\A4A7\008\00\88'()\00\11\AA\14\00\19*\00\1A,\00\00\16.\00\150\00\1B\1C?@\8A\00\9E56;NDEFGL\00M\00\87\9C\00\00\00\17\00\00\00!\00\A6\00\00CRHIJK9\93\98\99\95\96\97\9B\00\9A\00\8C\8E\90\92\12+-\18/1\1E\00\00 #\00\00\A3\A5\A8A\AB\00TR\9C\85\86\94\00\00\89\9C\9C!$\00\AB\22\8B\9C\A7\A2\9DA2\00\00Q\00VT\93\8F\83\84\8D\91\00\82\80\00\00\1D\00\A1PO\00\00\00V\AB\81%\A9\00_[\\YZ]^efhjbcdxklmyno`agipqrstuw~\7F|}vz{UX<\00\1FSW:", align 16
@_ZL4yyr2 = internal unnamed_addr constant [172 x i8] c"\00\02\01\02\00\01\01\01\01\01\01\01\01\01\01\01\01\03\04\01\03\03\03\04\05\03\03\03\00\07\00\09\01\00\02\01\02\04\02\02\02\02\03\05\03\05\03\05\03\05\05\01\00\02\02\01\01\00\08\00\07\01\01\02\02\00\01\02\01\01\01\01\02\02\02\02\01\01\01\03\03\02\00\04\00\02\00\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\03\03\02\02\02\01\04\02\05\01\03\01\03\01\03\01\01\02\01\01\01\01\01\01\01\00\03\00\01\00\02\01\03\00\01\00\02\01\04\01\00", align 16
@np = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"-> $$ =\00", align 1
@_ZL4yyr1 = internal unnamed_addr constant [172 x i8] c"\00GHIIJJJJJJJJJJJJKLLMNOOOPQRTSUSVVWWXXYZ[\\]]^^__``abbccccedfdggggghhhhhhhhhhhhhiiiijjkkllmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmnnnoooopqqrrsttuuvvwwwwwwwwwwxxyyzz{{||}}~\7F\7F", align 16
@_ZL7yypgoto = internal unnamed_addr constant [57 x i16] [i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 47, i16 -132, i16 70, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 59, i16 -132, i16 -132, i16 -42, i16 -132, i16 -132, i16 -132, i16 -132, i16 55, i16 33, i16 11, i16 -132, i16 -30, i16 -132, i16 -132, i16 162, i16 -132, i16 -132, i16 -132, i16 -132, i16 56, i16 62, i16 -119, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 72, i16 -131], align 16
@_ZL9yydefgoto = internal unnamed_addr constant [57 x i16] [i16 -1, i16 1, i16 2, i16 11, i16 12, i16 29, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 97, i16 153, i16 131, i16 132, i16 133, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 40, i16 41, i16 42, i16 43, i16 143, i16 103, i16 44, i16 87, i16 142, i16 169, i16 189, i16 235, i16 236, i16 181, i16 117, i16 45, i16 46, i16 47, i16 118, i16 119, i16 120, i16 121, i16 122, i16 101, i16 162, i16 163, i16 75, i16 136, i16 137, i16 138, i16 54], align 16
@.str.10 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@_ZL6yystos = internal unnamed_addr constant [243 x i8] c"\00HI\00\03\04\06\07\08\09\0AJKMNOPQRSYZ[\\]^_`\11L\05\11\11\0B\11\11\11\0F\10Eabcdgpqraaa0::\7F\0C:;\0C:;\11\0C:;\0C:;\0C:;\10\0F\11\0E{dp\11\18\19\1A\1B\1C\1D\1E\1Fh:@0\11\11:\11\11\11T>0\0Dx5f\19\1A\1B\1C\11\11\12\13\14\16\174Fostuvw\11;;:;;;\11VWX\11\11|}~0<>ie=\11\11\11\12\13A:DU:=<X?=~dyz\7F\11\12?\0Aji\11v\11\11uwV\11\124n\7Fwd??@=kj<\12::\11\11\12\13\14\15\16\17 !\22#$%&'()*+,-/0123456789>?@ABCDlm:k\7FAm:", align 16
@.str.13 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"token %s (\00", align 1
@_ZL7yytname = internal unnamed_addr constant [129 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr null], align 16
@.str.17 = private unnamed_addr constant [11 x i8] c"nterm %s (\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"NAMESPACE\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"CPLUSPLUS\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"CPLUSPLUSBODY\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"PACKET\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"STRUCT\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"ENUM\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"NONCOBJECT\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"EXTENDS\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"FIELDS\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"PROPERTIES\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"ABSTRACT\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"READONLY\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"INTCONSTANT\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"REALCONSTANT\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"STRINGCONSTANT\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"CHARCONSTANT\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"TRUE_\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"FALSE_\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"BOOLTYPE\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"CHARTYPE\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"SHORTTYPE\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"INTTYPE\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"LONGTYPE\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"DOUBLETYPE\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"UNSIGNED_\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"STRINGTYPE\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"EQ\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"NE\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"GE\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"XOR\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"BIN_AND\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"BIN_OR\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"BIN_XOR\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"BIN_COMPL\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"INVALID_CHAR\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"'?'\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"'>'\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"'<'\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"'-'\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"'/'\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"'%'\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"'^'\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"UMIN\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"';'\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"'{'\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"'}'\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"'='\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"'&'\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"'.'\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"'@'\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"'$'\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"msgfile\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"definitions\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"definition\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"namespace_decl\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"namespacename\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"cplusplus\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"struct_decl\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"class_decl\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"message_decl\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"packet_decl\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"enum_decl\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"@1\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"@2\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"opt_enumfields\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"enumfields\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"enumfield\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"message_header\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"packet_header\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"class_header\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"struct_header\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.118 = private unnamed_addr constant [26 x i8] c"opt_fields_and_properties\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"fields_and_properties\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"@3\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"@4\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"fieldmodifiers\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"fielddatatype\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"opt_fieldvector\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"opt_fieldenum\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"opt_fieldvalue\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"fieldvalue\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"fieldvalueitem\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"enumvalue\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"quantity\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"property_namevalue\00", align 1
@.str.134 = private unnamed_addr constant [14 x i8] c"property_name\00", align 1
@.str.135 = private unnamed_addr constant [18 x i8] c"opt_property_keys\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"property_keys\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"property_key\00", align 1
@.str.138 = private unnamed_addr constant [16 x i8] c"property_values\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"property_value\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"opt_fieldsblock_old\00", align 1
@.str.141 = private unnamed_addr constant [15 x i8] c"opt_fields_old\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"fields_old\00", align 1
@.str.143 = private unnamed_addr constant [24 x i8] c"opt_propertiesblock_old\00", align 1
@.str.144 = private unnamed_addr constant [19 x i8] c"opt_properties_old\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"properties_old\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"property_old\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"opt_semicolon\00", align 1
@_ZL7yyrline = internal unnamed_addr constant [172 x i16] [i16 0, i16 132, i16 132, i16 136, i16 137, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 149, i16 151, i16 153, i16 155, i16 157, i16 165, i16 173, i16 174, i16 181, i16 193, i16 202, i16 209, i16 216, i16 227, i16 236, i16 245, i16 258, i16 257, i16 267, i16 266, i16 279, i16 280, i16 284, i16 285, i16 289, i16 295, i16 308, i16 313, i16 318, i16 323, i16 328, i16 334, i16 344, i16 350, i16 360, i16 366, i16 376, i16 382, i16 392, i16 399, i16 400, i16 404, i16 405, i16 406, i16 407, i16 415, i16 414, i16 427, i16 426, i16 440, i16 442, i16 444, i16 446, i16 449, i16 453, i16 454, i16 456, i16 457, i16 458, i16 459, i16 461, i16 462, i16 463, i16 464, i16 466, i16 467, i16 468, i16 473, i16 478, i16 483, i16 487, i16 491, i16 495, i16 499, i16 503, i16 508, i16 509, i16 513, i16 514, i16 515, i16 516, i16 517, i16 518, i16 519, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 521, i16 521, i16 521, i16 521, i16 521, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 523, i16 523, i16 523, i16 523, i16 523, i16 523, i16 527, i16 528, i16 529, i16 533, i16 534, i16 535, i16 536, i16 543, i16 551, i16 552, i16 556, i16 561, i16 570, i16 574, i16 575, i16 579, i16 588, i16 600, i16 602, i16 607, i16 609, i16 611, i16 613, i16 615, i16 617, i16 619, i16 621, i16 623, i16 626, i16 637, i16 640, i16 644, i16 645, i16 649, i16 650, i16 657, i16 660, i16 664, i16 665, i16 669, i16 670, i16 674, i16 685, i16 685], align 16
@.str.148 = private unnamed_addr constant [39 x i8] c"Reducing stack by rule %d (line %lu):\0A\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@_ZL5yyrhs = internal unnamed_addr constant [466 x i8] c"H\00\FFI\FFIJ\FF\FFK\FFM\FFN\FFO\FFP\FFQ\FFR\FFS\FFY\FFZ\FF[\FF\\\FF\03L:\FFL00\11\FF\11\FF\04\05\7F\FF\09\11:\FF\08\11:\FF\08\0B\11:\FF\08\11\0C\11:\FF\06\11:\FF\07\11:\FF\0A\11:\FF\FF\0A\11;TV<\7F\FF\FF\0A\11\0C\11;UV<\7F\FFW\FF\FFWX\FFX\FF\11:\FF\11=n:\FF]a\FF^a\FF_a\FF`a\FF\06\11;\FF\06\11\0C\11;\FF\07\11;\FF\07\11\0C\11;\FF\08\11;\FF\08\11\0C\11;\FF\09\11;\FF\09\11\0C\11;\FFb{x<\7F\FFc\FF\FFcd\FFcp\FFd\FFp\FF\FFgh\11eijk:\FF\FFg\11fijk:\FF\0F\FF\10\FF\0F\10\FF\10\0F\FF\FF\11\FF\115\FF\19\FF\1A\FF\1B\FF\1C\FF\1E\19\FF\1E\1A\FF\1E\1B\FF\1E\1C\FF\1D\FF\1F\FF\18\FF>\12?\FF>\11?\FF>?\FF\FF\0A@\11A\FF\FF=l\FF\FFlm\FFm\FF\14\FF\15\FF\12\FF\13\FF\16\FF\17\FF\11\FF/\FF0\FF$\FF%\FF&\FF \FF!\FF1\FF\22\FF2\FF#\FF(\FF)\FF*\FF,\FF-\FF3\FF4\FF5\FF6\FF7\FF8\FFB\FF9\FF'\FF+\FFC\FFD\FF@\FFA\FF>\FF?\FF\12\FF4\12\FF\11\FFo\12\11\FFo\13\11\FF\12\11\FF\13\11\FFq:\FFr\FFr@sA\FFE\11\FFE\11>\11?\FFt\FFt:u\FFu\FF\11=v\FFv\FFvDw\FFw\FF\11\FFF\11\FF\14\FF\16\FF\17\FF\12\FF\13\FFo\FF4\FF\FF\0D0y\FF\FFz\FF\FFzd\FFd\FF\0E0|\FF\FF}\FF\FF}~\FF~\FF\11=w:\FF:\FF\FF", align 16
@_ZL6yyprhs = internal unnamed_addr constant [172 x i16] [i16 0, i16 0, i16 3, i16 5, i16 8, i16 9, i16 11, i16 13, i16 15, i16 17, i16 19, i16 21, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 37, i16 42, i16 44, i16 48, i16 52, i16 56, i16 61, i16 67, i16 71, i16 75, i16 79, i16 80, i16 88, i16 89, i16 99, i16 101, i16 102, i16 105, i16 107, i16 110, i16 115, i16 118, i16 121, i16 124, i16 127, i16 131, i16 137, i16 141, i16 147, i16 151, i16 157, i16 161, i16 167, i16 173, i16 175, i16 176, i16 179, i16 182, i16 184, i16 186, i16 187, i16 196, i16 197, i16 205, i16 207, i16 209, i16 212, i16 215, i16 216, i16 218, i16 221, i16 223, i16 225, i16 227, i16 229, i16 232, i16 235, i16 238, i16 241, i16 243, i16 245, i16 247, i16 251, i16 255, i16 258, i16 259, i16 264, i16 265, i16 268, i16 269, i16 272, i16 274, i16 276, i16 278, i16 280, i16 282, i16 284, i16 286, i16 288, i16 290, i16 292, i16 294, i16 296, i16 298, i16 300, i16 302, i16 304, i16 306, i16 308, i16 310, i16 312, i16 314, i16 316, i16 318, i16 320, i16 322, i16 324, i16 326, i16 328, i16 330, i16 332, i16 334, i16 336, i16 338, i16 340, i16 342, i16 344, i16 346, i16 348, i16 350, i16 352, i16 354, i16 357, i16 359, i16 363, i16 367, i16 370, i16 373, i16 376, i16 378, i16 383, i16 386, i16 392, i16 394, i16 398, i16 400, i16 404, i16 406, i16 410, i16 412, i16 414, i16 417, i16 419, i16 421, i16 423, i16 425, i16 427, i16 429, i16 431, i16 432, i16 436, i16 437, i16 439, i16 440, i16 443, i16 445, i16 449, i16 450, i16 452, i16 453, i16 456, i16 458, i16 463, i16 465], align 16
@.str.150 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@_ZZL14yysyntax_errorPciiE12yyunexpected = internal unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 16
@_ZZL14yysyntax_errorPciiE11yyexpecting = internal constant [15 x i8] c", expecting %s\00", align 1
@_ZZL14yysyntax_errorPciiE4yyor = internal constant [7 x i8] c" or %s\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1
@pos = external local_unnamed_addr global %struct.LineColumn, align 4
@prevpos = external local_unnamed_addr global %struct.LineColumn, align 4
@msg2yyin = external local_unnamed_addr global ptr, align 8
@msg2yyout = external local_unnamed_addr global ptr, align 8
@.str.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.155 = private unnamed_addr constant [31 x i8] c"unable to allocate work memory\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12NEDException = linkonce_odr dso_local constant [15 x i8] c"12NEDException\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI12NEDException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12NEDException, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.156 = private unnamed_addr constant [23 x i8] c"error during parsing: \00", align 1
@.str.157 = private unnamed_addr constant [49 x i8] c"non-reentrant parser invoked again while parsing\00", align 1
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@_ZZL16resetParserStatevE7cleanps = internal global %struct.MSG2ParserState zeroinitializer, align 8
@_ZGVZL16resetParserStatevE7cleanps = internal global i64 0, align 8
@.str.159 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_msg2.tab.cc, ptr null }]

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN15MSG2ParserStateC2Ev(ptr noundef nonnull align 8 dereferenceable(184) @_ZL2ps) #24
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN15MSG2ParserStateD2Ev, ptr nonnull @_ZL2ps, ptr nonnull @__dso_handle) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MSG2ParserStateC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %struct.MSG2ParserState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIP10NEDElementSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MSG2ParserStateD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %struct.MSG2ParserState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIP10NEDElementSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP10NEDElementSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !132 {
  tail call void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !132 {
  tail call void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !132 {
  tail call void @_ZNSaIP10NEDElementEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #24
  tail call void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIP10NEDElementEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !133 {
  tail call void @_ZNSt15__new_allocatorIP10NEDElementEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !132 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP10NEDElementEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP10NEDElementSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !135
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  invoke void @_ZSt8_DestroyIPP10NEDElementS1_EvT_S3_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #26
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #27
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPP10NEDElementS1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat !prof !141 {
  tail call void @_ZSt8_DestroyIPP10NEDElementEvT_S3_(ptr noundef %0, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !142 {
  ret ptr %0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #25
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !135
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #26
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIP10NEDElementED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #27
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPP10NEDElementEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !141 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP10NEDElementEEvT_S5_(ptr noundef %0, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP10NEDElementEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !141 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !144 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !145

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIP10NEDElementEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #26
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP10NEDElementED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP10NEDElementEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !147 {
  tail call void @_ZNSt15__new_allocatorIP10NEDElementE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP10NEDElementE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #28
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z11msg2yyparsev() local_unnamed_addr #3 !prof !148 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca [200 x i16], align 16
  %3 = alloca [200 x ptr], align 16
  %4 = alloca [200 x %struct.my_yyltype], align 16
  %5 = alloca %struct.my_yyltype, align 8
  %6 = alloca %struct.my_yyltype, align 8
  %7 = alloca %struct.my_yyltype, align 8
  %8 = alloca %struct.my_yyltype, align 8
  %9 = alloca %struct.my_yyltype, align 8
  %10 = alloca %struct.my_yyltype, align 8
  %11 = alloca %struct.my_yyltype, align 8
  %12 = alloca %struct.my_yyltype, align 8
  %13 = alloca %struct.my_yyltype, align 8
  %14 = alloca %struct.my_yyltype, align 8
  %15 = alloca %struct.my_yyltype, align 8
  %16 = alloca %struct.my_yyltype, align 8
  %17 = alloca %struct.my_yyltype, align 8
  %18 = alloca %struct.my_yyltype, align 8
  %19 = alloca %struct.my_yyltype, align 8
  %20 = alloca %struct.my_yyltype, align 8
  %21 = alloca %struct.my_yyltype, align 8
  %22 = alloca %struct.my_yyltype, align 8
  %23 = alloca %struct.my_yyltype, align 8
  %24 = alloca %struct.my_yyltype, align 8
  %25 = alloca %struct.my_yyltype, align 8
  %26 = alloca %struct.my_yyltype, align 8
  %27 = alloca %struct.my_yyltype, align 8
  %28 = alloca %struct.my_yyltype, align 8
  %29 = alloca %struct.my_yyltype, align 8
  %30 = alloca %struct.my_yyltype, align 8
  %31 = alloca %struct.my_yyltype, align 8
  %32 = alloca %struct.my_yyltype, align 8
  %33 = alloca %struct.my_yyltype, align 8
  %34 = alloca %struct.my_yyltype, align 8
  %35 = alloca %struct.my_yyltype, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 6400, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %36 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %0
  %39 = load ptr, ptr @stderr, align 8, !tbaa !151
  %40 = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %39) #29
  br label %41

41:                                               ; preds = %38, %0
  store i32 0, ptr @msg2yynerrs, align 4, !tbaa !149
  store i32 -2, ptr @msg2yychar, align 4, !tbaa !149
  store i16 0, ptr %2, align 16, !tbaa !152
  %42 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 1
  br label %53

43:                                               ; preds = %605, %609, %141
  %44 = phi i64 [ %585, %605 ], [ %585, %609 ], [ %58, %141 ]
  %45 = phi ptr [ %587, %605 ], [ %587, %609 ], [ %143, %141 ]
  %46 = phi ptr [ %588, %605 ], [ %588, %609 ], [ %144, %141 ]
  %47 = phi i32 [ %152, %605 ], [ %152, %609 ], [ %108, %141 ]
  %48 = phi i32 [ %608, %605 ], [ %612, %609 ], [ %120, %141 ]
  %49 = add nsw i64 %44, 2
  %50 = getelementptr inbounds i8, ptr %2, i64 %49
  %51 = trunc i32 %48 to i16
  store i16 %51, ptr %50, align 2, !tbaa !152
  %52 = icmp slt i64 %44, 396
  br i1 %52, label %53, label %656

53:                                               ; preds = %41, %43
  %54 = phi i32 [ 0, %41 ], [ %48, %43 ]
  %55 = phi i32 [ 0, %41 ], [ %47, %43 ]
  %56 = phi ptr [ %4, %41 ], [ %46, %43 ]
  %57 = phi ptr [ %3, %41 ], [ %45, %43 ]
  %58 = phi i64 [ 0, %41 ], [ %49, %43 ]
  %59 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr @stderr, align 8, !tbaa !151
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.1, i32 noundef %54) #30
  br label %64

64:                                               ; preds = %53, %61
  %65 = sext i32 %54 to i64
  %66 = getelementptr inbounds [243 x i16], ptr @_ZL6yypact, i64 0, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !152
  %68 = sext i16 %67 to i32
  %69 = icmp eq i16 %67, -132
  br i1 %69, label %145, label %70

70:                                               ; preds = %64
  %71 = load i32, ptr @msg2yychar, align 4, !tbaa !149
  %72 = icmp eq i32 %71, -2
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr @stderr, align 8, !tbaa !151
  %78 = call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %77) #29
  br label %79

79:                                               ; preds = %76, %73
  %80 = call noundef i32 @_Z9msg2yylexv() #26
  store i32 %80, ptr @msg2yychar, align 4, !tbaa !149
  br label %81

81:                                               ; preds = %79, %70
  %82 = phi i32 [ %80, %79 ], [ %71, %70 ]
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  store i32 0, ptr @msg2yychar, align 4, !tbaa !149
  %85 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %107, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr @stderr, align 8, !tbaa !151
  %89 = call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr %88) #29
  br label %107

90:                                               ; preds = %81
  %91 = icmp ult i32 %82, 303
  br i1 %91, label %92, label %97

92:                                               ; preds = %90
  %93 = zext nneg i32 %82 to i64
  %94 = getelementptr inbounds [303 x i8], ptr @_ZL11yytranslate, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !154
  %96 = zext i8 %95 to i32
  br label %97

97:                                               ; preds = %90, %92
  %98 = phi i32 [ %96, %92 ], [ 2, %90 ]
  %99 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr @stderr, align 8, !tbaa !151
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #30
  %104 = load ptr, ptr @stderr, align 8, !tbaa !151
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %104, i32 noundef %98) #26
  %105 = load ptr, ptr @stderr, align 8, !tbaa !151
  %106 = call i32 @fputc(i32 10, ptr %105)
  br label %107

107:                                              ; preds = %97, %101, %84, %87
  %108 = phi i32 [ 0, %87 ], [ 0, %84 ], [ %98, %101 ], [ %98, %97 ]
  %109 = add nsw i32 %108, %68
  %110 = icmp ugt i32 %109, 209
  br i1 %110, label %145, label %111

111:                                              ; preds = %107
  %112 = zext nneg i32 %109 to i64
  %113 = getelementptr inbounds [210 x i16], ptr @_ZL7yycheck, i64 0, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !152
  %115 = sext i16 %114 to i32
  %116 = icmp eq i32 %108, %115
  br i1 %116, label %117, label %145

117:                                              ; preds = %111
  %118 = getelementptr inbounds [210 x i16], ptr @_ZL7yytable, i64 0, i64 %112
  %119 = load i16, ptr %118, align 2, !tbaa !152
  %120 = sext i16 %119 to i32
  %121 = icmp slt i16 %119, 1
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = icmp eq i32 %109, 208
  br i1 %123, label %613, label %124

124:                                              ; preds = %122
  %125 = sub nsw i32 0, %120
  br label %151

126:                                              ; preds = %117
  %127 = icmp eq i32 %109, 29
  br i1 %127, label %661, label %128

128:                                              ; preds = %126
  %129 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr @stderr, align 8, !tbaa !151
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #30
  %134 = load ptr, ptr @stderr, align 8, !tbaa !151
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %134, i32 noundef %108) #26
  %135 = load ptr, ptr @stderr, align 8, !tbaa !151
  %136 = call i32 @fputc(i32 10, ptr %135)
  br label %137

137:                                              ; preds = %131, %128
  %138 = load i32, ptr @msg2yychar, align 4, !tbaa !149
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  store i32 -2, ptr @msg2yychar, align 4, !tbaa !149
  br label %141

141:                                              ; preds = %140, %137
  %142 = load ptr, ptr @msg2yylval, align 8, !tbaa !151
  %143 = getelementptr inbounds ptr, ptr %57, i64 1
  store ptr %142, ptr %143, align 8, !tbaa !151
  %144 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %144, ptr noundef nonnull align 8 dereferenceable(32) @msg2yylloc, i64 32, i1 false), !tbaa.struct !155
  br label %43

145:                                              ; preds = %107, %111, %64
  %146 = phi i32 [ %55, %64 ], [ %108, %107 ], [ %108, %111 ]
  %147 = getelementptr inbounds [243 x i8], ptr @_ZL8yydefact, i64 0, i64 %65
  %148 = load i8, ptr %147, align 1, !tbaa !154
  %149 = zext i8 %148 to i32
  %150 = icmp eq i8 %148, 0
  br i1 %150, label %613, label %151

151:                                              ; preds = %145, %124
  %152 = phi i32 [ %146, %145 ], [ %108, %124 ]
  %153 = phi i32 [ %149, %145 ], [ %125, %124 ]
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [172 x i8], ptr @_ZL4yyr2, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !154
  %157 = zext i8 %156 to i64
  %158 = sub nsw i64 1, %157
  %159 = getelementptr inbounds ptr, ptr %57, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !151
  %161 = icmp eq i8 %156, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %151
  %163 = sub nsw i64 0, %157
  %164 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 %163
  %165 = getelementptr inbounds %struct.my_yyltype, ptr %164, i64 1, i32 1
  %166 = load <2 x i32>, ptr %165, align 4, !tbaa !149
  %167 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 0, i32 3
  %168 = load <2 x i32>, ptr %167, align 4, !tbaa !149
  %169 = shufflevector <2 x i32> %166, <2 x i32> %168, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %174

170:                                              ; preds = %151
  %171 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 0, i32 3
  %172 = load <2 x i32>, ptr %171, align 4, !tbaa !149
  %173 = shufflevector <2 x i32> %172, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %174

174:                                              ; preds = %162, %170
  %175 = phi <4 x i32> [ %169, %162 ], [ %173, %170 ]
  store <4 x i32> %175, ptr %42, align 4, !tbaa !149
  %176 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  call fastcc void @_ZL15yy_reduce_printPP10NEDElementP10my_yyltypei(ptr noundef nonnull %57, ptr noundef nonnull %56, i32 noundef %153) #26
  br label %179

179:                                              ; preds = %178, %174
  switch i32 %153, label %553 [
    i32 12, label %180
    i32 13, label %186
    i32 14, label %192
    i32 15, label %198
    i32 16, label %204
    i32 17, label %210
    i32 20, label %217
    i32 21, label %224
    i32 22, label %231
    i32 23, label %239
    i32 24, label %247
    i32 25, label %258
    i32 26, label %265
    i32 27, label %272
    i32 28, label %279
    i32 29, label %288
    i32 30, label %290
    i32 31, label %302
    i32 36, label %304
    i32 37, label %310
    i32 38, label %319
    i32 39, label %321
    i32 40, label %323
    i32 41, label %325
    i32 42, label %327
    i32 43, label %334
    i32 44, label %344
    i32 45, label %351
    i32 46, label %361
    i32 47, label %368
    i32 48, label %378
    i32 49, label %385
    i32 57, label %395
    i32 58, label %408
    i32 59, label %412
    i32 60, label %422
    i32 61, label %426
    i32 62, label %427
    i32 63, label %428
    i32 64, label %429
    i32 65, label %430
    i32 79, label %431
    i32 80, label %436
    i32 81, label %441
    i32 83, label %443
    i32 85, label %447
    i32 135, label %450
    i32 138, label %453
    i32 139, label %457
    i32 143, label %464
    i32 144, label %487
    i32 145, label %512
    i32 146, label %513
    i32 147, label %514
    i32 148, label %516
    i32 149, label %518
    i32 150, label %520
    i32 151, label %522
    i32 152, label %524
    i32 153, label %526
    i32 154, label %528
    i32 155, label %530
    i32 156, label %532
    i32 157, label %534
    i32 163, label %536
    i32 169, label %538
  ]

180:                                              ; preds = %179
  %181 = load ptr, ptr @np, align 8, !tbaa !151
  %182 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %181) #26
  br i1 %182, label %183, label %553

183:                                              ; preds = %180
  %184 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !156
  %185 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  call void @_ZN11EnumElement13setSourceCodeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %184, ptr noundef %185) #26
  br label %553

186:                                              ; preds = %179
  %187 = load ptr, ptr @np, align 8, !tbaa !151
  %188 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %187) #26
  br i1 %188, label %189, label %553

189:                                              ; preds = %186
  %190 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !162
  %191 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  call void @_ZN14MessageElement13setSourceCodeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %190, ptr noundef %191) #26
  br label %553

192:                                              ; preds = %179
  %193 = load ptr, ptr @np, align 8, !tbaa !151
  %194 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %193) #26
  br i1 %194, label %195, label %553

195:                                              ; preds = %192
  %196 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !163
  %197 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  call void @_ZN13PacketElement13setSourceCodeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %196, ptr noundef %197) #26
  br label %553

198:                                              ; preds = %179
  %199 = load ptr, ptr @np, align 8, !tbaa !151
  %200 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %199) #26
  br i1 %200, label %201, label %553

201:                                              ; preds = %198
  %202 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !164
  %203 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  call void @_ZN12ClassElement13setSourceCodeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %202, ptr noundef %203) #26
  br label %553

204:                                              ; preds = %179
  %205 = load ptr, ptr @np, align 8, !tbaa !151
  %206 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %205) #26
  br i1 %206, label %207, label %553

207:                                              ; preds = %204
  %208 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !165
  %209 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  call void @_ZN13StructElement13setSourceCodeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %208, ptr noundef %209) #26
  br label %553

210:                                              ; preds = %179
  %211 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %212 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 36, ptr noundef %211) #26
  store ptr %212, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 4), align 8, !tbaa !167
  %213 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %214 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %213) #26
  call void @_ZN16NamespaceElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %212, ptr noundef %214) #26
  %215 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 4), align 8, !tbaa !167
  %216 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %216, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %215, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %6, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %213) #26
  br label %553

217:                                              ; preds = %179
  %218 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %219 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 37, ptr noundef %218) #26
  store ptr %219, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !168
  %220 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  call void @_Z16trimDoubleBraces10my_yyltype(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %7, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %220) #26
  %221 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %7) #26
  call void @_ZN16CplusplusElement7setBodyEPKc(ptr noundef nonnull align 8 dereferenceable(144) %219, ptr noundef %221) #26
  %222 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !168
  %223 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %223, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %222, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %8, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %220) #26
  br label %553

224:                                              ; preds = %179
  %225 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %226 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 38, ptr noundef %225) #26
  store ptr %226, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 6), align 8, !tbaa !169
  %227 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %228 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %227) #26
  call void @_ZN17StructDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %226, ptr noundef %228) #26
  %229 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 6), align 8, !tbaa !169
  %230 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %230, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %229, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %9, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %227) #26
  br label %553

231:                                              ; preds = %179
  %232 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %233 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 39, ptr noundef %232) #26
  store ptr %233, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !170
  %234 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %235 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %234) #26
  call void @_ZN16ClassDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %233, ptr noundef %235) #26
  %236 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !170
  call void @_ZN16ClassDeclElement12setIsCobjectEb(ptr noundef nonnull align 8 dereferenceable(184) %236, i1 noundef zeroext true) #26
  %237 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !170
  %238 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %238, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %237, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %10, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %234) #26
  br label %553

239:                                              ; preds = %179
  %240 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %241 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 39, ptr noundef %240) #26
  store ptr %241, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !170
  call void @_ZN16ClassDeclElement12setIsCobjectEb(ptr noundef nonnull align 8 dereferenceable(184) %241, i1 noundef zeroext false) #26
  %242 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !170
  %243 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %244 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %243) #26
  call void @_ZN16ClassDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %242, ptr noundef %244) #26
  %245 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !170
  %246 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %246, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %245, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %243) #26
  br label %553

247:                                              ; preds = %179
  %248 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %249 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 39, ptr noundef %248) #26
  store ptr %249, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !170
  call void @_ZN16ClassDeclElement12setIsCobjectEb(ptr noundef nonnull align 8 dereferenceable(184) %249, i1 noundef zeroext true) #26
  %250 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !170
  %251 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -3
  %252 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %251) #26
  call void @_ZN16ClassDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %250, ptr noundef %252) #26
  %253 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !170
  %254 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %255 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %254) #26
  call void @_ZN16ClassDeclElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %253, ptr noundef %255) #26
  %256 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !170
  %257 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %257, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %256, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %12, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %254) #26
  br label %553

258:                                              ; preds = %179
  %259 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %260 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 40, ptr noundef %259) #26
  store ptr %260, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 8), align 8, !tbaa !171
  %261 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %262 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %261) #26
  call void @_ZN18MessageDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %260, ptr noundef %262) #26
  %263 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 8), align 8, !tbaa !171
  %264 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %264, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %263, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %13, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %261) #26
  br label %553

265:                                              ; preds = %179
  %266 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %267 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 41, ptr noundef %266) #26
  store ptr %267, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !172
  %268 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %269 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %268) #26
  call void @_ZN17PacketDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %267, ptr noundef %269) #26
  %270 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !172
  %271 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %271, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %270, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %14, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %268) #26
  br label %553

272:                                              ; preds = %179
  %273 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %274 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 42, ptr noundef %273) #26
  store ptr %274, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !173
  %275 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %276 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %275) #26
  call void @_ZN15EnumDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %274, ptr noundef %276) #26
  %277 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !173
  %278 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %278, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %277, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %15, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %275) #26
  br label %553

279:                                              ; preds = %179
  %280 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %281 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 43, ptr noundef %280) #26
  store ptr %281, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !156
  %282 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %283 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %282) #26
  call void @_ZN11EnumElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %281, ptr noundef %283) #26
  %284 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !156
  %285 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %285, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %284, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %16, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %282) #26
  %286 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !156
  %287 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 44, ptr noundef %286) #26
  store ptr %287, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !174
  br label %553

288:                                              ; preds = %179
  %289 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !156
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %289, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

290:                                              ; preds = %179
  %291 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %292 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 43, ptr noundef %291) #26
  store ptr %292, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !156
  %293 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -3
  %294 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %293) #26
  call void @_ZN11EnumElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %292, ptr noundef %294) #26
  %295 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !156
  %296 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %297 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %296) #26
  call void @_ZN11EnumElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %295, ptr noundef %297) #26
  %298 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !156
  %299 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %299, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %298, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %17, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %296) #26
  %300 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !156
  %301 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 44, ptr noundef %300) #26
  store ptr %301, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !174
  br label %553

302:                                              ; preds = %179
  %303 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !156
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %303, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

304:                                              ; preds = %179
  %305 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !174
  %306 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 45, ptr noundef %305) #26
  store ptr %306, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !175
  %307 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %308 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %307) #26
  call void @_ZN16EnumFieldElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %306, ptr noundef %308) #26
  %309 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %307, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %309, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %18, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %307) #26
  br label %553

310:                                              ; preds = %179
  %311 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !174
  %312 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 45, ptr noundef %311) #26
  store ptr %312, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !175
  %313 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -3
  %314 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %313) #26
  call void @_ZN16EnumFieldElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %312, ptr noundef %314) #26
  %315 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !175
  %316 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %317 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %316) #26
  call void @_ZN16EnumFieldElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(176) %315, ptr noundef %317) #26
  %318 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %313, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %318, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %19, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %316) #26
  br label %553

319:                                              ; preds = %179
  %320 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !162
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %320, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

321:                                              ; preds = %179
  %322 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !163
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %322, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

323:                                              ; preds = %179
  %324 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !164
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %324, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

325:                                              ; preds = %179
  %326 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !165
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %326, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

327:                                              ; preds = %179
  %328 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %329 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 46, ptr noundef %328) #26
  store ptr %329, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !162
  store ptr %329, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %330 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %331 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %330) #26
  call void @_ZN14MessageElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %329, ptr noundef %331) #26
  %332 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !162
  %333 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %333, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %332, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %20, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %330) #26
  br label %553

334:                                              ; preds = %179
  %335 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %336 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 46, ptr noundef %335) #26
  store ptr %336, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !162
  store ptr %336, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %337 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -3
  %338 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %337) #26
  call void @_ZN14MessageElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %336, ptr noundef %338) #26
  %339 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !162
  %340 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %341 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %340) #26
  call void @_ZN14MessageElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %339, ptr noundef %341) #26
  %342 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !162
  %343 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %343, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %342, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %21, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %340) #26
  br label %553

344:                                              ; preds = %179
  %345 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %346 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 47, ptr noundef %345) #26
  store ptr %346, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !163
  store ptr %346, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %347 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %348 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %347) #26
  call void @_ZN13PacketElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %346, ptr noundef %348) #26
  %349 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !163
  %350 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %350, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %349, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %22, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %347) #26
  br label %553

351:                                              ; preds = %179
  %352 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %353 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 47, ptr noundef %352) #26
  store ptr %353, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !163
  store ptr %353, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %354 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -3
  %355 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %354) #26
  call void @_ZN13PacketElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %353, ptr noundef %355) #26
  %356 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !163
  %357 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %358 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %357) #26
  call void @_ZN13PacketElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %356, ptr noundef %358) #26
  %359 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !163
  %360 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %360, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %359, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %23, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %357) #26
  br label %553

361:                                              ; preds = %179
  %362 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %363 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 48, ptr noundef %362) #26
  store ptr %363, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !164
  store ptr %363, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %364 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %365 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %364) #26
  call void @_ZN12ClassElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %363, ptr noundef %365) #26
  %366 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !164
  %367 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %367, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %366, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %24, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %364) #26
  br label %553

368:                                              ; preds = %179
  %369 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %370 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 48, ptr noundef %369) #26
  store ptr %370, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !164
  store ptr %370, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %371 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -3
  %372 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %371) #26
  call void @_ZN12ClassElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %370, ptr noundef %372) #26
  %373 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !164
  %374 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %375 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %374) #26
  call void @_ZN12ClassElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %373, ptr noundef %375) #26
  %376 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !164
  %377 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %377, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %376, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %25, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %374) #26
  br label %553

378:                                              ; preds = %179
  %379 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %380 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 49, ptr noundef %379) #26
  store ptr %380, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !165
  store ptr %380, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %381 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %382 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %381) #26
  call void @_ZN13StructElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %380, ptr noundef %382) #26
  %383 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !165
  %384 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %384, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %383, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %26, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %381) #26
  br label %553

385:                                              ; preds = %179
  %386 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %387 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 49, ptr noundef %386) #26
  store ptr %387, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !165
  store ptr %387, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %388 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -3
  %389 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %388) #26
  call void @_ZN13StructElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %387, ptr noundef %389) #26
  %390 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !165
  %391 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %392 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %391) #26
  call void @_ZN13StructElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %390, ptr noundef %392) #26
  %393 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !165
  %394 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %394, i64 32, i1 false), !tbaa.struct !155
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %393, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %27, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %391) #26
  br label %553

395:                                              ; preds = %179
  %396 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %397 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 50, ptr noundef %396) #26
  store ptr %397, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %398 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  call void @_ZN12FieldElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(280) %397, ptr noundef %398) #26
  %399 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %400 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %401 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %400) #26
  call void @_ZN12FieldElement11setDataTypeEPKc(ptr noundef nonnull align 8 dereferenceable(280) %399, ptr noundef %401) #26
  %402 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %403 = load i8, ptr @_ZL2ps, align 8, !tbaa !178, !range !179, !noundef !180
  %404 = icmp ne i8 %403, 0
  call void @_ZN12FieldElement13setIsAbstractEb(ptr noundef nonnull align 8 dereferenceable(280) %402, i1 noundef zeroext %404) #26
  %405 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %406 = load i8, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !181, !range !179, !noundef !180
  %407 = icmp ne i8 %406, 0
  call void @_ZN12FieldElement13setIsReadonlyEb(ptr noundef nonnull align 8 dereferenceable(280) %405, i1 noundef zeroext %407) #26
  br label %553

408:                                              ; preds = %179
  %409 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %410 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %410, i64 32, i1 false), !tbaa.struct !155
  %411 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %409, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %28, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %411) #26
  br label %553

412:                                              ; preds = %179
  %413 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %414 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 50, ptr noundef %413) #26
  store ptr %414, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %415 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  call void @_ZN12FieldElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(280) %414, ptr noundef %415) #26
  %416 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %417 = load i8, ptr @_ZL2ps, align 8, !tbaa !178, !range !179, !noundef !180
  %418 = icmp ne i8 %417, 0
  call void @_ZN12FieldElement13setIsAbstractEb(ptr noundef nonnull align 8 dereferenceable(280) %416, i1 noundef zeroext %418) #26
  %419 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %420 = load i8, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !181, !range !179, !noundef !180
  %421 = icmp ne i8 %420, 0
  call void @_ZN12FieldElement13setIsReadonlyEb(ptr noundef nonnull align 8 dereferenceable(280) %419, i1 noundef zeroext %421) #26
  br label %553

422:                                              ; preds = %179
  %423 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %424 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %424, i64 32, i1 false), !tbaa.struct !155
  %425 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %423, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %29, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %425) #26
  br label %553

426:                                              ; preds = %179
  store i8 1, ptr @_ZL2ps, align 8, !tbaa !178
  store i8 0, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !181
  br label %553

427:                                              ; preds = %179
  store i8 0, ptr @_ZL2ps, align 8, !tbaa !178
  store i8 1, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !181
  br label %553

428:                                              ; preds = %179
  store i8 1, ptr @_ZL2ps, align 8, !tbaa !178
  store i8 1, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !181
  br label %553

429:                                              ; preds = %179
  store i8 1, ptr @_ZL2ps, align 8, !tbaa !178
  store i8 1, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !181
  br label %553

430:                                              ; preds = %179
  store i8 0, ptr @_ZL2ps, align 8, !tbaa !178
  store i8 0, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !181
  br label %553

431:                                              ; preds = %179
  %432 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  call void @_ZN12FieldElement11setIsVectorEb(ptr noundef nonnull align 8 dereferenceable(280) %432, i1 noundef zeroext true) #26
  %433 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %434 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %435 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %434) #26
  call void @_ZN12FieldElement13setVectorSizeEPKc(ptr noundef nonnull align 8 dereferenceable(280) %433, ptr noundef %435) #26
  br label %553

436:                                              ; preds = %179
  %437 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  call void @_ZN12FieldElement11setIsVectorEb(ptr noundef nonnull align 8 dereferenceable(280) %437, i1 noundef zeroext true) #26
  %438 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %439 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %440 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %439) #26
  call void @_ZN12FieldElement13setVectorSizeEPKc(ptr noundef nonnull align 8 dereferenceable(280) %438, ptr noundef %440) #26
  br label %553

441:                                              ; preds = %179
  %442 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  call void @_ZN12FieldElement11setIsVectorEb(ptr noundef nonnull align 8 dereferenceable(280) %442, i1 noundef zeroext true) #26
  br label %553

443:                                              ; preds = %179
  %444 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %445 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %446 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %445) #26
  call void @_ZN12FieldElement11setEnumNameEPKc(ptr noundef nonnull align 8 dereferenceable(280) %444, ptr noundef %446) #26
  br label %553

447:                                              ; preds = %179
  %448 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !177
  %449 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  call void @_ZN12FieldElement15setDefaultValueEPKc(ptr noundef nonnull align 8 dereferenceable(280) %448, ptr noundef %449) #26
  br label %553

450:                                              ; preds = %179
  %451 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !182
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %451, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %452 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !182
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %452, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

453:                                              ; preds = %179
  %454 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %455 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  %456 = call noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %454, ptr noundef %455) #26
  store ptr %456, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !182
  call void @_ZNSt6vectorIP10NEDElementSaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2)) #24
  br label %553

457:                                              ; preds = %179
  %458 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %459 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -3
  %460 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %459) #26
  %461 = call noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %458, ptr noundef %460) #26
  store ptr %461, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !182
  %462 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -1
  %463 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %462) #26
  call void @_ZN15PropertyElement8setIndexEPKc(ptr noundef nonnull align 8 dereferenceable(184) %461, ptr noundef %463) #26
  call void @_ZNSt6vectorIP10NEDElementSaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2)) #24
  br label %553

464:                                              ; preds = %179
  %465 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !182
  %466 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %465) #26
  store ptr %466, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !183
  %467 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  %468 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %467) #26
  call void @_ZN18PropertyKeyElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %466, ptr noundef %468) #26
  %469 = call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2)) #24
  %470 = trunc i64 %469 to i32
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %474, label %472

472:                                              ; preds = %474, %464
  call void @_ZNSt6vectorIP10NEDElementSaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2)) #24
  %473 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !183
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %473, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

474:                                              ; preds = %464, %474
  %475 = phi i64 [ %482, %474 ], [ 0, %464 ]
  %476 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !183
  %477 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), i64 noundef %475) #24
  %478 = load ptr, ptr %477, align 8, !tbaa !151
  %479 = load ptr, ptr %476, align 8, !tbaa !184
  %480 = getelementptr inbounds ptr, ptr %479, i64 27
  %481 = load ptr, ptr %480, align 8
  call void %481(ptr noundef nonnull align 8 dereferenceable(112) %476, ptr noundef %478) #26
  %482 = add nuw nsw i64 %475, 1
  %483 = call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2)) #24
  %484 = shl i64 %483, 32
  %485 = ashr exact i64 %484, 32
  %486 = icmp slt i64 %482, %485
  br i1 %486, label %474, label %472, !llvm.loop !186

487:                                              ; preds = %179
  %488 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !182
  %489 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %488) #26
  store ptr %489, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !183
  %490 = load ptr, ptr %57, align 8, !tbaa !151
  %491 = load ptr, ptr %489, align 8, !tbaa !184
  %492 = getelementptr inbounds ptr, ptr %491, i64 27
  %493 = load ptr, ptr %492, align 8
  call void %493(ptr noundef nonnull align 8 dereferenceable(112) %489, ptr noundef %490) #26
  %494 = call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2)) #24
  %495 = trunc i64 %494 to i32
  %496 = icmp sgt i32 %495, 0
  br i1 %496, label %499, label %497

497:                                              ; preds = %499, %487
  call void @_ZNSt6vectorIP10NEDElementSaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2)) #24
  %498 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !183
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %498, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

499:                                              ; preds = %487, %499
  %500 = phi i64 [ %507, %499 ], [ 0, %487 ]
  %501 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !183
  %502 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), i64 noundef %500) #24
  %503 = load ptr, ptr %502, align 8, !tbaa !151
  %504 = load ptr, ptr %501, align 8, !tbaa !184
  %505 = getelementptr inbounds ptr, ptr %504, i64 27
  %506 = load ptr, ptr %505, align 8
  call void %506(ptr noundef nonnull align 8 dereferenceable(112) %501, ptr noundef %503) #26
  %507 = add nuw nsw i64 %500, 1
  %508 = call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2)) #24
  %509 = shl i64 %508, 32
  %510 = ashr exact i64 %509, 32
  %511 = icmp slt i64 %507, %510
  br i1 %511, label %499, label %497, !llvm.loop !188

512:                                              ; preds = %179
  call void @_ZNSt6vectorIP10NEDElementSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), ptr noundef nonnull align 8 dereferenceable(8) %57) #26
  br label %553

513:                                              ; preds = %179
  call void @_ZNSt6vectorIP10NEDElementSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), ptr noundef nonnull align 8 dereferenceable(8) %57) #26
  br label %553

514:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %56, i64 32, i1 false), !tbaa.struct !155
  %515 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 2, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %30, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  br label %553

516:                                              ; preds = %179
  %517 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 2, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

518:                                              ; preds = %179
  %519 = call noundef ptr @_Z19createStringLiteral10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  br label %553

520:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %56, i64 32, i1 false), !tbaa.struct !155
  %521 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 3, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %31, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  br label %553

522:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %56, i64 32, i1 false), !tbaa.struct !155
  %523 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 3, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %32, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  br label %553

524:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %56, i64 32, i1 false), !tbaa.struct !155
  %525 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %33, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  br label %553

526:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %56, i64 32, i1 false), !tbaa.struct !155
  %527 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %34, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  br label %553

528:                                              ; preds = %179
  %529 = call noundef ptr @_Z21createQuantityLiteral10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  br label %553

530:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %56, i64 32, i1 false), !tbaa.struct !155
  %531 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 4, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %35, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %56) #26
  br label %553

532:                                              ; preds = %179
  %533 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null) #26
  call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %533, i32 noundef 4) #26
  br label %553

534:                                              ; preds = %179
  %535 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  call void @_ZN14MsgFileElement10setVersionEPKc(ptr noundef nonnull align 8 dereferenceable(176) %535, ptr noundef nonnull @.str.8) #26
  br label %553

536:                                              ; preds = %179
  %537 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  call void @_ZN14MsgFileElement10setVersionEPKc(ptr noundef nonnull align 8 dereferenceable(176) %537, ptr noundef nonnull @.str.8) #26
  br label %553

538:                                              ; preds = %179
  %539 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !176
  %540 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -3
  %541 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %540) #26
  %542 = call noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %539, ptr noundef %541) #26
  store ptr %542, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !182
  %543 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %542) #26
  store ptr %543, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !183
  %544 = getelementptr inbounds ptr, ptr %57, i64 -1
  %545 = load ptr, ptr %544, align 8, !tbaa !151
  %546 = load ptr, ptr %543, align 8, !tbaa !184
  %547 = getelementptr inbounds ptr, ptr %546, i64 27
  %548 = load ptr, ptr %547, align 8
  call void %548(ptr noundef nonnull align 8 dereferenceable(112) %543, ptr noundef %545) #26
  %549 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !183
  %550 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 -2
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %549, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %550) #26
  %551 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !182
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %551, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %552 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !182
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %552, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %553

553:                                              ; preds = %210, %217, %224, %231, %239, %247, %258, %265, %272, %279, %288, %290, %302, %304, %310, %319, %321, %323, %325, %327, %334, %344, %351, %361, %368, %378, %385, %395, %408, %412, %422, %426, %427, %428, %429, %430, %431, %436, %441, %443, %447, %450, %453, %457, %472, %497, %512, %513, %514, %516, %518, %520, %522, %524, %526, %528, %530, %532, %534, %536, %538, %183, %180, %189, %186, %195, %192, %201, %198, %207, %204, %179
  %554 = phi ptr [ %160, %179 ], [ %160, %538 ], [ %160, %536 ], [ %160, %534 ], [ %533, %532 ], [ %531, %530 ], [ %529, %528 ], [ %527, %526 ], [ %525, %524 ], [ %523, %522 ], [ %521, %520 ], [ %519, %518 ], [ %517, %516 ], [ %515, %514 ], [ %160, %513 ], [ %160, %512 ], [ %160, %497 ], [ %160, %472 ], [ %160, %457 ], [ %160, %453 ], [ %160, %450 ], [ %160, %447 ], [ %160, %443 ], [ %160, %441 ], [ %160, %436 ], [ %160, %431 ], [ %160, %430 ], [ %160, %429 ], [ %160, %428 ], [ %160, %427 ], [ %160, %426 ], [ %160, %422 ], [ %160, %412 ], [ %160, %408 ], [ %160, %395 ], [ %160, %385 ], [ %160, %378 ], [ %160, %368 ], [ %160, %361 ], [ %160, %351 ], [ %160, %344 ], [ %160, %334 ], [ %160, %327 ], [ %160, %325 ], [ %160, %323 ], [ %160, %321 ], [ %160, %319 ], [ %160, %310 ], [ %160, %304 ], [ %160, %302 ], [ %160, %290 ], [ %160, %288 ], [ %160, %279 ], [ %160, %272 ], [ %160, %265 ], [ %160, %258 ], [ %160, %247 ], [ %160, %239 ], [ %160, %231 ], [ %160, %224 ], [ %160, %217 ], [ %160, %210 ], [ %160, %207 ], [ %160, %204 ], [ %160, %201 ], [ %160, %198 ], [ %160, %195 ], [ %160, %192 ], [ %160, %189 ], [ %160, %186 ], [ %160, %183 ], [ %160, %180 ]
  %555 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %564

557:                                              ; preds = %553
  %558 = sub nsw i64 0, %157
  %559 = getelementptr inbounds ptr, ptr %57, i64 %558
  %560 = shl nsw i64 %558, 1
  %561 = add nsw i64 %560, %58
  %562 = getelementptr inbounds i8, ptr %2, i64 %561
  %563 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 %558
  br label %582

564:                                              ; preds = %553
  %565 = load ptr, ptr @stderr, align 8, !tbaa !151
  %566 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %565, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #30
  %567 = load ptr, ptr @stderr, align 8, !tbaa !151
  %568 = getelementptr inbounds [172 x i8], ptr @_ZL4yyr1, i64 0, i64 %154
  %569 = load i8, ptr %568, align 1, !tbaa !154
  %570 = zext i8 %569 to i32
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %567, i32 noundef %570) #26
  %571 = load ptr, ptr @stderr, align 8, !tbaa !151
  %572 = call i32 @fputc(i32 10, ptr %571)
  %573 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %574 = sub nsw i64 0, %157
  %575 = getelementptr inbounds ptr, ptr %57, i64 %574
  %576 = shl nsw i64 %574, 1
  %577 = add nsw i64 %576, %58
  %578 = getelementptr inbounds i8, ptr %2, i64 %577
  %579 = getelementptr inbounds %struct.my_yyltype, ptr %56, i64 %574
  %580 = icmp eq i32 %573, 0
  br i1 %580, label %582, label %581

581:                                              ; preds = %564
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %578) #26
  br label %582

582:                                              ; preds = %557, %581, %564
  %583 = phi ptr [ %563, %557 ], [ %579, %581 ], [ %579, %564 ]
  %584 = phi ptr [ %562, %557 ], [ %578, %581 ], [ %578, %564 ]
  %585 = phi i64 [ %561, %557 ], [ %577, %581 ], [ %577, %564 ]
  %586 = phi ptr [ %559, %557 ], [ %575, %581 ], [ %575, %564 ]
  %587 = getelementptr inbounds ptr, ptr %586, i64 1
  store ptr %554, ptr %587, align 8, !tbaa !151
  %588 = getelementptr inbounds %struct.my_yyltype, ptr %583, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %588, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !155
  %589 = getelementptr inbounds [172 x i8], ptr @_ZL4yyr1, i64 0, i64 %154
  %590 = load i8, ptr %589, align 1, !tbaa !154
  %591 = zext i8 %590 to i64
  %592 = add nsw i64 %591, -71
  %593 = getelementptr inbounds [57 x i16], ptr @_ZL7yypgoto, i64 0, i64 %592
  %594 = load i16, ptr %593, align 2, !tbaa !152
  %595 = sext i16 %594 to i32
  %596 = load i16, ptr %584, align 2, !tbaa !152
  %597 = sext i16 %596 to i32
  %598 = add nsw i32 %597, %595
  %599 = icmp ult i32 %598, 210
  br i1 %599, label %600, label %609

600:                                              ; preds = %582
  %601 = zext nneg i32 %598 to i64
  %602 = getelementptr inbounds [210 x i16], ptr @_ZL7yycheck, i64 0, i64 %601
  %603 = load i16, ptr %602, align 2, !tbaa !152
  %604 = icmp eq i16 %603, %596
  br i1 %604, label %605, label %609

605:                                              ; preds = %600
  %606 = getelementptr inbounds [210 x i16], ptr @_ZL7yytable, i64 0, i64 %601
  %607 = load i16, ptr %606, align 2, !tbaa !152
  %608 = sext i16 %607 to i32
  br label %43

609:                                              ; preds = %600, %582
  %610 = getelementptr inbounds [57 x i16], ptr @_ZL9yydefgoto, i64 0, i64 %592
  %611 = load i16, ptr %610, align 2, !tbaa !152
  %612 = sext i16 %611 to i32
  br label %43

613:                                              ; preds = %122, %145
  %614 = phi i32 [ %146, %145 ], [ %108, %122 ]
  %615 = load i32, ptr @msg2yynerrs, align 4, !tbaa !149
  %616 = add nsw i32 %615, 1
  store i32 %616, ptr @msg2yynerrs, align 4, !tbaa !149
  %617 = load i32, ptr @msg2yychar, align 4, !tbaa !149
  %618 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef null, i32 noundef %54, i32 noundef %617) #26
  %619 = icmp ugt i64 %618, 128
  br i1 %619, label %620, label %628

620:                                              ; preds = %613
  %621 = shl i64 %618, 1
  %622 = icmp sgt i64 %618, -1
  %623 = select i1 %622, i64 %621, i64 -1
  %624 = call noalias ptr @malloc(i64 noundef %623) #31
  %625 = icmp eq ptr %624, null
  %626 = select i1 %625, i64 128, i64 %623
  %627 = select i1 %625, ptr %1, ptr %624
  br label %628

628:                                              ; preds = %620, %613
  %629 = phi i64 [ %626, %620 ], [ 128, %613 ]
  %630 = phi ptr [ %627, %620 ], [ %1, %613 ]
  %631 = add i64 %618, -1
  %632 = icmp ult i64 %631, %629
  br i1 %632, label %633, label %636

633:                                              ; preds = %628
  %634 = load i32, ptr @msg2yychar, align 4, !tbaa !149
  %635 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %630, i32 noundef %54, i32 noundef %634) #26
  call void @_Z11msg2yyerrorPKc(ptr noundef %630) #26
  br label %638

636:                                              ; preds = %628
  %637 = icmp eq i64 %618, 0
  call void @_Z11msg2yyerrorPKc(ptr noundef nonnull @.str.10) #26
  br i1 %637, label %638, label %656

638:                                              ; preds = %633, %636
  %639 = icmp eq i64 %58, 0
  br i1 %639, label %663, label %640

640:                                              ; preds = %638, %654
  %641 = phi i32 [ %650, %654 ], [ %54, %638 ]
  %642 = phi i64 [ %647, %654 ], [ %58, %638 ]
  %643 = sext i32 %641 to i64
  %644 = getelementptr inbounds [243 x i8], ptr @_ZL6yystos, i64 0, i64 %643
  %645 = load i8, ptr %644, align 1, !tbaa !154
  %646 = zext i8 %645 to i32
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.12, i32 noundef %646) #26
  %647 = add nsw i64 %642, -2
  %648 = getelementptr inbounds i8, ptr %2, i64 %647
  %649 = load i16, ptr %648, align 2, !tbaa !152
  %650 = sext i16 %649 to i32
  %651 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %654, label %653

653:                                              ; preds = %640
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %648) #26
  br label %654

654:                                              ; preds = %653, %640
  %655 = icmp eq i64 %647, 0
  br i1 %655, label %663, label %640, !llvm.loop !189

656:                                              ; preds = %43, %636
  %657 = phi i64 [ %58, %636 ], [ %49, %43 ]
  %658 = phi ptr [ %630, %636 ], [ %1, %43 ]
  %659 = phi i32 [ %614, %636 ], [ %47, %43 ]
  %660 = getelementptr inbounds i8, ptr %2, i64 %657
  call void @_Z11msg2yyerrorPKc(ptr noundef nonnull @.str.13) #26
  br label %663

661:                                              ; preds = %126
  %662 = getelementptr inbounds i8, ptr %2, i64 %58
  br label %663

663:                                              ; preds = %654, %638, %661, %656
  %664 = phi ptr [ %660, %656 ], [ %662, %661 ], [ %2, %638 ], [ %2, %654 ]
  %665 = phi ptr [ %658, %656 ], [ %1, %661 ], [ %630, %638 ], [ %630, %654 ]
  %666 = phi i32 [ %659, %656 ], [ %108, %661 ], [ %614, %638 ], [ %614, %654 ]
  %667 = phi i32 [ 2, %656 ], [ 0, %661 ], [ 1, %638 ], [ 1, %654 ]
  %668 = load i32, ptr @msg2yychar, align 4
  switch i32 %668, label %669 [
    i32 -2, label %670
    i32 0, label %670
  ]

669:                                              ; preds = %663
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.14, i32 noundef %666) #26
  br label %670

670:                                              ; preds = %663, %663, %669
  %671 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %674, label %673

673:                                              ; preds = %670
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %664) #26
  br label %674

674:                                              ; preds = %673, %670
  %675 = icmp eq ptr %664, %2
  br i1 %675, label %685, label %676

676:                                              ; preds = %674, %676
  %677 = phi ptr [ %683, %676 ], [ %664, %674 ]
  %678 = load i16, ptr %677, align 2, !tbaa !152
  %679 = sext i16 %678 to i64
  %680 = getelementptr inbounds [243 x i8], ptr @_ZL6yystos, i64 0, i64 %679
  %681 = load i8, ptr %680, align 1, !tbaa !154
  %682 = zext i8 %681 to i32
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.15, i32 noundef %682) #26
  %683 = getelementptr inbounds i16, ptr %677, i64 -1
  %684 = icmp eq ptr %683, %2
  br i1 %684, label %685, label %676, !llvm.loop !190

685:                                              ; preds = %676, %674
  %686 = icmp eq ptr %665, %1
  br i1 %686, label %688, label %687

687:                                              ; preds = %685
  call void @free(ptr noundef %665) #24
  br label %688

688:                                              ; preds = %685, %687
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #25
  ret i32 %667
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare noundef i32 @_Z9msg2yylexv() local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !prof !148 !PGOFuncName !191 {
  %3 = icmp slt i32 %1, 71
  %4 = zext nneg i32 %1 to i64
  %5 = sext i32 %1 to i64
  %6 = select i1 %3, i64 %5, i64 %4
  %7 = select i1 %3, ptr @.str.16, ptr @.str.17
  %8 = getelementptr inbounds [129 x ptr], ptr @_ZL7yytname, i64 0, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !151
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %9) #26
  %11 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 2, i64 1, ptr %0)
  %12 = tail call i32 @fputc(i32 41, ptr %0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL15yy_reduce_printPP10NEDElementP10my_yyltypei(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) unnamed_addr #9 !prof !148 !PGOFuncName !192 {
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds [172 x i8], ptr @_ZL4yyr2, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !154
  %7 = getelementptr inbounds [172 x i16], ptr @_ZL7yyrline, i64 0, i64 %4
  %8 = load i16, ptr %7, align 2, !tbaa !152
  %9 = zext i16 %8 to i64
  %10 = load ptr, ptr @stderr, align 8, !tbaa !151
  %11 = add nsw i32 %2, -1
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.148, i32 noundef %11, i64 noundef %9) #30
  %13 = icmp eq i8 %6, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds [172 x i16], ptr @_ZL6yyprhs, i64 0, i64 %4
  %16 = zext i8 %6 to i64
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %20, %17 ]
  %19 = load ptr, ptr @stderr, align 8, !tbaa !151
  %20 = add nuw nsw i64 %18, 1
  %21 = trunc i64 %20 to i32
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.149, i32 noundef %21) #30
  %23 = load ptr, ptr @stderr, align 8, !tbaa !151
  %24 = load i16, ptr %15, align 2, !tbaa !152
  %25 = zext i16 %24 to i64
  %26 = add nuw i64 %18, %25
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds [466 x i8], ptr @_ZL5yyrhs, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !154
  %30 = sext i8 %29 to i32
  tail call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %23, i32 noundef %30) #26
  %31 = load ptr, ptr @stderr, align 8, !tbaa !151
  %32 = tail call i32 @fputc(i32 10, ptr %31)
  %33 = icmp eq i64 %20, %16
  br i1 %33, label %34, label %17, !llvm.loop !193

34:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !194 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 1, !tbaa !195, !range !179, !noundef !180
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11EnumElement13setSourceCodeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z8toString10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14MessageElement13setSourceCodeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13PacketElement13setSourceCodeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12ClassElement13setSourceCodeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13StructElement13setSourceCodeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16NamespaceElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.NamespaceElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16CplusplusElement7setBodyEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.CplusplusElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare void @_Z16trimDoubleBraces10my_yyltype(ptr dead_on_unwind writable sret(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17StructDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.StructDeclElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16ClassDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16ClassDeclElement12setIsCobjectEb(ptr noundef nonnull align 8 dereferenceable(184) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16ClassDeclElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18MessageDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.MessageDeclElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17PacketDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.PacketDeclElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15EnumDeclElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.EnumDeclElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11EnumElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11EnumElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16EnumFieldElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16EnumFieldElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14MessageElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14MessageElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13PacketElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13PacketElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12ClassElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12ClassElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13StructElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13StructElement14setExtendsNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElement11setDataTypeEPKc(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElement13setIsAbstractEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElement13setIsReadonlyEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 1, !tbaa !206
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElement11setIsVectorEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 2, !tbaa !207
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElement13setVectorSizeEPKc(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 6
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElement11setEnumNameEPKc(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 7
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElement15setDefaultValueEPKc(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 8
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP10NEDElementSaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !135
  tail call void @_ZNSt6vectorIP10NEDElementSaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15PropertyElement8setIndexEPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18PropertyKeyElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.PropertyKeyElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !209 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = load ptr, ptr %0, align 8, !tbaa !135
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !210 {
  %3 = load ptr, ptr %0, align 8, !tbaa !135
  %4 = getelementptr inbounds ptr, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP10NEDElementSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !210 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !211

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIP10NEDElementEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #24
  %9 = load ptr, ptr %3, align 8, !tbaa !140
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !140
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  tail call void @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_Z19createStringLiteral10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_Z21createQuantityLiteral10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14MsgFileElement10setVersionEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL14yy_stack_printPsS_(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 !prof !148 !PGOFuncName !212 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !151
  %4 = tail call i64 @fwrite(ptr nonnull @.str.151, i64 9, i64 1, ptr %3) #29
  %5 = icmp ugt ptr %0, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %0, %2 ]
  %8 = load ptr, ptr @stderr, align 8, !tbaa !151
  %9 = load i16, ptr %7, align 2, !tbaa !152
  %10 = sext i16 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.152, i32 noundef %10) #30
  %12 = getelementptr inbounds i16, ptr %7, i64 1
  %13 = icmp ugt ptr %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !213

14:                                               ; preds = %6, %2
  %15 = load ptr, ptr @stderr, align 8, !tbaa !151
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 !prof !148 !PGOFuncName !214 {
  %4 = alloca [5 x ptr], align 16
  %5 = alloca [60 x i8], align 16
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [243 x i16], ptr @_ZL6yypact, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !152
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i16 %8, -132
  br i1 %10, label %11, label %109

11:                                               ; preds = %3
  %12 = icmp ult i32 %2, 303
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = zext nneg i32 %2 to i64
  %15 = getelementptr inbounds [303 x i8], ptr @_ZL11yytranslate, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !154
  %17 = zext i8 %16 to i64
  br label %18

18:                                               ; preds = %11, %13
  %19 = phi i64 [ %17, %13 ], [ 2, %11 ]
  %20 = getelementptr inbounds [129 x ptr], ptr @_ZL7yytname, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !151
  %22 = tail call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %21) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #25
  %23 = icmp slt i16 %8, 0
  %24 = sub nsw i32 0, %9
  %25 = select i1 %23, i32 %24, i32 0
  %26 = sub nsw i32 210, %9
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 71)
  store ptr %21, ptr %4, align 16, !tbaa !151
  %28 = getelementptr inbounds i8, ptr %5, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %5, ptr noundef nonnull align 16 dereferenceable(28) @_ZZL14yysyntax_errorPciiE12yyunexpected, i64 28, i1 false) #24
  %29 = icmp slt i32 %25, %27
  br i1 %29, label %30, label %72

30:                                               ; preds = %18
  %31 = sext i32 %25 to i64
  %32 = sext i16 %8 to i64
  %33 = sext i32 %27 to i64
  br label %34

34:                                               ; preds = %30, %64
  %35 = phi i64 [ %31, %30 ], [ %70, %64 ]
  %36 = phi i32 [ 1, %30 ], [ %69, %64 ]
  %37 = phi i64 [ %22, %30 ], [ %68, %64 ]
  %38 = phi ptr [ @_ZZL14yysyntax_errorPciiE11yyexpecting, %30 ], [ %67, %64 ]
  %39 = phi ptr [ %28, %30 ], [ %66, %64 ]
  %40 = phi i32 [ 0, %30 ], [ %65, %64 ]
  %41 = add nsw i64 %35, %32
  %42 = getelementptr inbounds [210 x i16], ptr @_ZL7yycheck, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !152
  %44 = sext i16 %43 to i32
  %45 = trunc i64 %35 to i32
  %46 = icmp eq i32 %45, %44
  %47 = icmp ne i64 %35, 1
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %64

49:                                               ; preds = %34
  %50 = icmp eq i32 %36, 5
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store i8 0, ptr %28, align 1, !tbaa !154
  br label %72

52:                                               ; preds = %49
  %53 = getelementptr inbounds [129 x ptr], ptr @_ZL7yytname, i64 0, i64 %35
  %54 = load ptr, ptr %53, align 8, !tbaa !151
  %55 = add nsw i32 %36, 1
  %56 = sext i32 %36 to i64
  %57 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %56
  store ptr %54, ptr %57, align 8, !tbaa !151
  %58 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %54) #26
  %59 = add i64 %58, %37
  %60 = icmp ult i64 %59, %37
  %61 = zext i1 %60 to i32
  %62 = or i32 %40, %61
  %63 = call ptr @stpcpy(ptr noundef %39, ptr noundef %38) #24
  br label %64

64:                                               ; preds = %34, %52
  %65 = phi i32 [ %62, %52 ], [ %40, %34 ]
  %66 = phi ptr [ %63, %52 ], [ %39, %34 ]
  %67 = phi ptr [ @_ZZL14yysyntax_errorPciiE4yyor, %52 ], [ %38, %34 ]
  %68 = phi i64 [ %59, %52 ], [ %37, %34 ]
  %69 = phi i32 [ %55, %52 ], [ %36, %34 ]
  %70 = add nsw i64 %35, 1
  %71 = icmp slt i64 %70, %33
  br i1 %71, label %34, label %72, !llvm.loop !215

72:                                               ; preds = %64, %18, %51
  %73 = phi i32 [ %40, %51 ], [ 0, %18 ], [ %65, %64 ]
  %74 = phi i64 [ %22, %51 ], [ %22, %18 ], [ %68, %64 ]
  %75 = phi i32 [ 1, %51 ], [ 1, %18 ], [ %69, %64 ]
  %76 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #32
  %77 = add i64 %76, %74
  %78 = icmp ult i64 %77, %74
  %79 = zext i1 %78 to i32
  %80 = or i32 %73, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %72
  %83 = icmp eq ptr %0, null
  br i1 %83, label %107, label %84

84:                                               ; preds = %82, %101
  %85 = phi ptr [ %106, %101 ], [ %5, %82 ]
  %86 = phi ptr [ %105, %101 ], [ %0, %82 ]
  %87 = phi i32 [ %104, %101 ], [ 0, %82 ]
  %88 = load i8, ptr %85, align 1, !tbaa !154
  store i8 %88, ptr %86, align 1, !tbaa !154
  switch i8 %88, label %101 [
    i8 0, label %107
    i8 37, label %89
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, ptr %85, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !154
  %92 = icmp eq i8 %91, 115
  %93 = icmp slt i32 %87, %75
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = add nsw i32 %87, 1
  %97 = sext i32 %87 to i64
  %98 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !151
  %100 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef nonnull %86, ptr noundef %99) #26
  br label %101

101:                                              ; preds = %89, %84, %95
  %102 = phi i64 [ %100, %95 ], [ 1, %84 ], [ 1, %89 ]
  %103 = phi i64 [ 2, %95 ], [ 1, %84 ], [ 1, %89 ]
  %104 = phi i32 [ %96, %95 ], [ %87, %84 ], [ %87, %89 ]
  %105 = getelementptr inbounds i8, ptr %86, i64 %102
  %106 = getelementptr inbounds i8, ptr %85, i64 %103
  br label %84, !llvm.loop !216

107:                                              ; preds = %84, %82, %72
  %108 = phi i64 [ -1, %72 ], [ %77, %82 ], [ %77, %84 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #25
  br label %109

109:                                              ; preds = %3, %107
  %110 = phi i64 [ %108, %107 ], [ 0, %3 ]
  ret i64 %110
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z11msg2yyerrorPKc(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !148 {
  %2 = alloca [250 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 250, ptr nonnull %2) #25
  %3 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #24
  %4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds [250 x i8], ptr %2, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !154
  %8 = icmp eq i8 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 0, ptr %6, align 1, !tbaa !154
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr @np, align 8, !tbaa !151
  %12 = load i32, ptr @pos, align 4, !tbaa !217
  call void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %2, i32 noundef %12) #26
  call void @llvm.lifetime.end.p0(i64 250, ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !148 !PGOFuncName !219 {
  %3 = load i32, ptr @msg2yydebug, align 4, !tbaa !149
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr @.str.153, ptr %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !151
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #30
  %10 = load ptr, ptr @stderr, align 8, !tbaa !151
  tail call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %10, i32 noundef %1) #26
  %11 = load ptr, ptr @stderr, align 8, !tbaa !151
  %12 = tail call i32 @fputc(i32 10, ptr %11)
  br label %13

13:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP10NEDElementSaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6, !prof !220

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  invoke void @_ZSt8_DestroyIPP10NEDElementS1_EvT_S3_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #26
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !140
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #27
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP10NEDElementEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !221 {
  tail call void @_ZNSt15__new_allocatorIP10NEDElementE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 !prof !134 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.150) #26
  %7 = load ptr, ptr %0, align 8, !tbaa !135
  %8 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %10 = tail call ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPP10NEDElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  %12 = call noundef ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #26
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIP10NEDElementEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  %15 = load ptr, ptr %14, align 8, !tbaa !151
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %17 = call noundef ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #24
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  %20 = load ptr, ptr %19, align 8, !tbaa !151
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %22 = call noundef ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #24
  %23 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !143
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  call void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #26
  store ptr %12, ptr %0, align 8, !tbaa !135
  store ptr %22, ptr %8, align 8, !tbaa !140
  %29 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !222 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP10NEDElementE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !221 {
  %4 = load ptr, ptr %2, align 8, !tbaa !151
  store ptr %4, ptr %1, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !134 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !223
  %6 = tail call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %7 = tail call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !224

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #33
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %13 = tail call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  store i64 %13, ptr %5, align 8, !tbaa !223
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %15 = load i64, ptr %14, align 8, !tbaa !223
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  %17 = call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !224

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !224

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPP10NEDElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !134 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #24
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !222 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !134 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !224

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #26
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 !prof !144 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPP10NEDElementS2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #24
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !225 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !144 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %3 = tail call noundef i64 @_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2) #24
  ret i64 %3
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !226 {
  %3 = load i64, ptr %0, align 8, !tbaa !223
  %4 = load i64, ptr %1, align 8, !tbaa !223
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !227
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIP10NEDElementEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #24
  store i64 %4, ptr %3, align 8, !tbaa !223
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %6 = load i64, ptr %5, align 8, !tbaa !223
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !144 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIP10NEDElementEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !147 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP10NEDElementE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #24
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !228 {
  %3 = load i64, ptr %1, align 8, !tbaa !223
  %4 = load i64, ptr %0, align 8, !tbaa !223
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !229
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP10NEDElementE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !147 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP10NEDElementE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #24
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP10NEDElementE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !230 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !142 {
  %3 = load ptr, ptr %1, align 8, !tbaa !151
  store ptr %3, ptr %0, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !233 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIP10NEDElementE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #26
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIP10NEDElementE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIP10NEDElementE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #24
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !234

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #34
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPP10NEDElementS2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat !prof !144 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPP10NEDElementET_S3_(ptr noundef %0) #24
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPP10NEDElementET_S3_(ptr noundef %1) #24
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPP10NEDElementET_S3_(ptr noundef %2) #24
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IP10NEDElementS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #24
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IP10NEDElementS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat !prof !144 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10, !prof !235

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPP10NEDElementET_S3_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !132 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 !prof !148 !PGOFuncName !236 {
  %3 = load i8, ptr %1, align 1, !tbaa !154
  %4 = icmp eq i8 %3, 34
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %21, %20 ], [ 0, %5 ]
  %9 = phi ptr [ %17, %20 ], [ %1, %5 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !154
  switch i8 %11, label %16 [
    i8 39, label %25
    i8 44, label %25
    i8 92, label %12
    i8 34, label %22
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %9, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !154
  %15 = icmp eq i8 %14, 92
  br i1 %15, label %16, label %25

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %10, %7 ], [ %13, %12 ]
  br i1 %6, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 %11, ptr %19, align 1, !tbaa !154
  br label %20

20:                                               ; preds = %18, %16
  %21 = add i64 %8, 1
  br label %7, !llvm.loop !237

22:                                               ; preds = %7
  br i1 %6, label %34, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 0, ptr %24, align 1, !tbaa !154
  br label %34

25:                                               ; preds = %7, %7, %12, %2
  %26 = icmp eq ptr %0, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  br label %34

29:                                               ; preds = %25
  %30 = tail call ptr @stpcpy(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %0 to i64
  %33 = sub i64 %31, %32
  br label %34

34:                                               ; preds = %23, %22, %29, %27
  %35 = phi i64 [ %33, %29 ], [ %28, %27 ], [ %8, %22 ], [ %8, %23 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias noundef writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z11doParseMSG2P9NEDParserPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !148 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %struct.my_yyltype, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  store i32 0, ptr @msg2yydebug, align 4, !tbaa !149
  tail call fastcc void @_ZZ11doParseMSG2P9NEDParserPKcEN5GuardC2ES0_(ptr noundef %0) #26
  store i32 0, ptr getelementptr inbounds (%struct.LineColumn, ptr @pos, i64 0, i32 1), align 4, !tbaa !238
  store i32 1, ptr @pos, align 4, !tbaa !217
  %8 = load i64, ptr @pos, align 4
  store i64 %8, ptr @prevpos, align 4
  store ptr null, ptr @msg2yyin, align 8, !tbaa !151
  %9 = load ptr, ptr @stderr, align 8, !tbaa !151
  store ptr %9, ptr @msg2yyout, align 8, !tbaa !151
  %10 = invoke noundef ptr @_Z18msg2yy_scan_stringPKc(ptr noundef %1) #26
          to label %11 unwind label %16

11:                                               ; preds = %2
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = load ptr, ptr @np, align 8, !tbaa !151
  %15 = tail call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #26
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %15, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.155) #26
          to label %86 unwind label %16

16:                                               ; preds = %36, %32, %27, %19, %18, %13, %2
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %88

18:                                               ; preds = %11
  invoke fastcc void @_ZL16resetParserStatev() #26
          to label %19 unwind label %16

19:                                               ; preds = %18
  %20 = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #34
          to label %21 unwind label %16

21:                                               ; preds = %19
  invoke void @_ZN14MsgFileElementC1Ev(ptr noundef nonnull align 8 dereferenceable(176) %20) #26
          to label %22 unwind label %38

22:                                               ; preds = %21
  store ptr %20, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %23 = load ptr, ptr @np, align 8, !tbaa !151
  %24 = tail call noundef ptr @_ZN9NEDParser11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %23) #26
  invoke void @_Z16slashifyFilenameB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %24) #26
          to label %25 unwind label %40

25:                                               ; preds = %22
  %26 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  invoke void @_ZN14MsgFileElement11setFilenameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %20, ptr noundef %26) #26
          to label %27 unwind label %42

27:                                               ; preds = %25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  %28 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  invoke void @_Z16storeFileCommentP10NEDElement(ptr noundef %28) #26
          to label %29 unwind label %16

29:                                               ; preds = %27
  %30 = load ptr, ptr @np, align 8, !tbaa !151
  %31 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %30) #26
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  %34 = load ptr, ptr @np, align 8, !tbaa !151
  %35 = call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %34) #26
  invoke void @_ZN13NEDFileBuffer14getFullTextPosEv(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %4, ptr noundef nonnull align 8 dereferenceable(52) %35) #26
          to label %36 unwind label %16

36:                                               ; preds = %32
  %37 = invoke noundef ptr @_Z15storeSourceCodeP10NEDElement10my_yyltype(ptr noundef %33, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %4) #26
          to label %46 unwind label %16

38:                                               ; preds = %21
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %20) #28
  br label %88

40:                                               ; preds = %22
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %44

42:                                               ; preds = %25
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  br label %88

46:                                               ; preds = %36, %29
  %47 = invoke noundef i32 @_Z11msg2yyparsev() #26
          to label %48 unwind label %49

48:                                               ; preds = %46
  invoke void @_Z20msg2yy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %10) #26
          to label %82 unwind label %84

49:                                               ; preds = %46
  %50 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12NEDException
  %51 = extractvalue { ptr, i32 } %50, 1
  %52 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI12NEDException) #25
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %49
  %55 = extractvalue { ptr, i32 } %50, 0
  %56 = call ptr @__cxa_begin_catch(ptr %55) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #25
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.156, ptr noundef nonnull align 1 dereferenceable(1) %7) #26
          to label %57 unwind label %66

57:                                               ; preds = %54
  %58 = load ptr, ptr %56, align 8, !tbaa !184
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(48) %56) #24
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %61) #26
          to label %62 unwind label %68

62:                                               ; preds = %57
  %63 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  invoke void @_Z11msg2yyerrorPKc(ptr noundef %63) #26
          to label %64 unwind label %70

64:                                               ; preds = %62
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  invoke void @_Z20msg2yy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %10) #26
          to label %65 unwind label %76

65:                                               ; preds = %64
  invoke void @__cxa_end_catch()
          to label %86 unwind label %78

66:                                               ; preds = %54
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %74

68:                                               ; preds = %57
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %72

70:                                               ; preds = %62
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %69, %68 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  br label %74

74:                                               ; preds = %72, %66
  %75 = phi { ptr, i32 } [ %73, %72 ], [ %67, %66 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  br label %80

76:                                               ; preds = %64
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %80

78:                                               ; preds = %65
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %88

80:                                               ; preds = %76, %74
  %81 = phi { ptr, i32 } [ %77, %76 ], [ %75, %74 ]
  invoke void @__cxa_end_catch()
          to label %88 unwind label %90

82:                                               ; preds = %48
  %83 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !166
  br label %86

84:                                               ; preds = %48
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %88

86:                                               ; preds = %82, %65, %13
  %87 = phi ptr [ null, %13 ], [ %83, %82 ], [ null, %65 ]
  call fastcc void @_ZZ11doParseMSG2P9NEDParserPKcEN5GuardD2Ev() #24
  ret ptr %87

88:                                               ; preds = %78, %80, %49, %84, %44, %38, %16
  %89 = phi { ptr, i32 } [ %17, %16 ], [ %45, %44 ], [ %39, %38 ], [ %85, %84 ], [ %50, %49 ], [ %79, %78 ], [ %81, %80 ]
  call fastcc void @_ZZ11doParseMSG2P9NEDParserPKcEN5GuardD2Ev() #24
  resume { ptr, i32 } %89

90:                                               ; preds = %80
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #27
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZZ11doParseMSG2P9NEDParserPKcEN5GuardC2ES0_(ptr noundef %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !148 !PGOFuncName !239 {
  %2 = load ptr, ptr @np, align 8, !tbaa !151
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #25
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.157) #26
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #35
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #25
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  store ptr %0, ptr @np, align 8, !tbaa !151
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z18msg2yy_scan_stringPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !240 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL16resetParserStatev() unnamed_addr #3 !prof !148 !PGOFuncName !242 {
  %1 = load atomic i8, ptr @_ZGVZL16resetParserStatevE7cleanps acquire, align 8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %8, !prof !243

3:                                                ; preds = %0
  %4 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL16resetParserStatevE7cleanps) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  tail call void @_ZN15MSG2ParserStateC2Ev(ptr noundef nonnull align 8 dereferenceable(184) @_ZZL16resetParserStatevE7cleanps) #24
  %7 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN15MSG2ParserStateD2Ev, ptr nonnull @_ZZL16resetParserStatevE7cleanps, ptr nonnull @__dso_handle) #25
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL16resetParserStatevE7cleanps) #25
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN15MSG2ParserStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(184) @_ZL2ps, ptr noundef nonnull align 8 dereferenceable(184) @_ZZL16resetParserStatevE7cleanps) #26
  ret void
}

; Function Attrs: optsize
declare void @_ZN14MsgFileElementC1Ev(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14MsgFileElement11setFilenameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare void @_Z16slashifyFilenameB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9NEDParser11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !244 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !245
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: optsize
declare void @_Z16storeFileCommentP10NEDElement(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_Z15storeSourceCodeP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !246 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN13NEDFileBuffer14getFullTextPosEv(ptr dead_on_unwind writable sret(%struct.my_yyltype) align 8, ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #19

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !248 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #26
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #26
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.159) #33
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #26
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #26
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !249 {
  ret void
}

; Function Attrs: optsize
declare void @_Z20msg2yy_delete_bufferP15yy_buffer_state(ptr noundef) local_unnamed_addr #8

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @_ZZ11doParseMSG2P9NEDParserPKcEN5GuardD2Ev() unnamed_addr #20 align 2 !prof !148 !PGOFuncName !250 {
  store ptr null, ptr @np, align 8, !tbaa !151
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !148 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !184
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  ret ptr %3
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(184) ptr @_ZN15MSG2ParserStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) local_unnamed_addr #3 comdat align 2 {
  %3 = load i16, ptr %1, align 8
  store i16 %3, ptr %0, align 8
  %4 = getelementptr inbounds %struct.MSG2ParserState, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.MSG2ParserState, ptr %1, i64 0, i32 2
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  %7 = getelementptr inbounds %struct.MSG2ParserState, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.MSG2ParserState, ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef nonnull align 8 dereferenceable(152) %8, i64 152, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 !prof !251 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4, !prof !252

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  %6 = tail call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24, !prof !252

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  %10 = tail call ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  %11 = tail call noundef ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #26
  %12 = load ptr, ptr %0, align 8, !tbaa !135
  %13 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  tail call void @_ZSt8_DestroyIPP10NEDElementS1_EvT_S3_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #26
  %16 = load ptr, ptr %0, align 8, !tbaa !135
  %17 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !143
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  tail call void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #26
  store ptr %11, ptr %0, align 8, !tbaa !135
  %23 = getelementptr inbounds ptr, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !143
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27, !prof !252

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  %29 = tail call ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  %30 = tail call ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_(ptr %28, ptr %29, ptr %30) #26
  %32 = tail call ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #26
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !135
  %36 = tail call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !135
  %39 = tail call noundef ptr @_ZSt4copyIPP10NEDElementS2_ET0_T_S4_S3_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #26
  %40 = load ptr, ptr %1, align 8, !tbaa !135
  %41 = tail call noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !140
  %45 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !140
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPP10NEDElementS2_S1_ET0_T_S4_S3_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #26
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !135
  %51 = getelementptr inbounds ptr, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !140
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP10NEDElementSaIS1_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !251 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = load ptr, ptr %0, align 8, !tbaa !135
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #26
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #26
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #25
  invoke void @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #26
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #35
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #27
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !251 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !251 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat !prof !251 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEEEvT_S9_(ptr %0, ptr %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat !prof !251 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEET_SA_(ptr %0) #26
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEET_SA_(ptr %1) #26
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_(ptr %4, ptr %5, ptr %2) #26
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPP10NEDElementS2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !148 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPP10NEDElementET_S3_(ptr noundef %0) #26
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPP10NEDElementET_S3_(ptr noundef %1) #26
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPP10NEDElementS2_ET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #26
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPP10NEDElementS2_S1_ET0_T_S4_S3_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !148 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPP10NEDElementS2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !148 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #26
  ret ptr %5
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !148 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) #26
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #26
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !148 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEET_SA_(ptr %0) #26
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEET_SA_(ptr %1) #26
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(ptr %4, ptr %5, ptr noundef %2) #26
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !148 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !151
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %0) #24
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %1) #24
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPP10NEDElementET_S3_(ptr noundef %2) #24
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #26
  %9 = call noundef ptr @_ZSt12__niter_wrapIPP10NEDElementET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #26
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEET_SA_(ptr %0) local_unnamed_addr #1 comdat !prof !141 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPP10NEDElementET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !148 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !251 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %0) local_unnamed_addr #1 comdat !prof !141 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !251 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10NEDElementEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10NEDElementEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !253 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !254

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !141 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !141 {
  %3 = load ptr, ptr %1, align 8, !tbaa !151
  store ptr %3, ptr %0, align 8, !tbaa !255
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #3 comdat !prof !251 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS5_SaIS5_EEEEEEvT_SB_(ptr %0, ptr %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS5_SaIS5_EEEEEEvT_SB_(ptr %0, ptr %1) local_unnamed_addr #1 comdat align 2 !prof !251 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat !prof !251 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %0) #24
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %1) #24
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %2) #24
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #26
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_(ptr %2, ptr noundef %7) #26
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !251 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %0) #24
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #24
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %0) local_unnamed_addr #1 comdat !prof !141 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !251 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr %0, align 8, !tbaa !231
  %6 = getelementptr inbounds ptr, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !151
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPP10NEDElementS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !148 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !151
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPP10NEDElementET_S3_(ptr noundef %0) #24
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPP10NEDElementET_S3_(ptr noundef %1) #24
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPP10NEDElementET_S3_(ptr noundef %2) #24
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPP10NEDElementS2_ET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #26
  %9 = call noundef ptr @_ZSt12__niter_wrapIPP10NEDElementET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #26
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPP10NEDElementET_S3_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !148 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPP10NEDElementS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !240 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPP10NEDElementS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPP10NEDElementS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !240 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10NEDElementEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPP10NEDElementS2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !148 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP10NEDElementS4_EET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP10NEDElementS4_EET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !148 {
  %4 = tail call noundef ptr @_ZSt4copyIPP10NEDElementS2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !257 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #26
  store i64 %6, ptr %4, align 8, !tbaa !223
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !258

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #26
  %10 = load i64, ptr %4, align 8, !tbaa !223
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #26
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #26
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #24
  store ptr null, ptr %5, align 8, !tbaa !259
  %15 = load i64, ptr %4, align 8, !tbaa !223
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #26
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !257 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !151
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #26
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !257 {
  store ptr %1, ptr %0, align 8, !tbaa !259
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !257 {
  %2 = load ptr, ptr %0, align 8, !tbaa !259
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !261

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #26
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #27
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !257 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !257 {
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: optsize
declare void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @_GLOBAL__sub_I_msg2.tab.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind memory(none) }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind }
attributes #26 = { optsize }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind optsize }
attributes #29 = { cold }
attributes #30 = { cold optsize }
attributes #31 = { nounwind optsize allocsize(0) }
attributes #32 = { nounwind optsize willreturn memory(read) }
attributes #33 = { noreturn optsize }
attributes #34 = { builtin optsize allocsize(0) }
attributes #35 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!131}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!36 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEC2Ev, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EEC2Ev, i64 6}
!37 = !{ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EEC2Ev, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE12_Vector_implC2Ev, i64 6}
!38 = !{ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE12_Vector_implC2Ev, ptr @_ZNSaIP10NEDElementEC2Ev, i64 6}
!39 = !{ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE17_Vector_impl_dataC2Ev, i64 6}
!40 = !{ptr @_ZNSaIP10NEDElementEC2Ev, ptr @_ZNSt15__new_allocatorIP10NEDElementEC2Ev, i64 21}
!41 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv, i64 1}
!42 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EED2Ev, ptr @_ZSt8_DestroyIPP10NEDElementS1_EvT_S3_RSaIT0_E, i64 1}
!43 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EED2Ev, i64 1}
!44 = !{ptr @_ZSt8_DestroyIPP10NEDElementS1_EvT_S3_RSaIT0_E, ptr @_ZSt8_DestroyIPP10NEDElementEvT_S3_, i64 56}
!45 = !{ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE13_M_deallocateEPS1_m, i64 1}
!46 = !{ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EED2Ev, ptr @_ZNSt15__new_allocatorIP10NEDElementED2Ev, i64 1}
!47 = !{ptr @_ZSt8_DestroyIPP10NEDElementEvT_S3_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPP10NEDElementEEvT_S5_, i64 56}
!48 = !{ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE13_M_deallocateEPS1_m, ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE10deallocateERS2_PS1_m, i64 1}
!49 = !{ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE10deallocateERS2_PS1_m, ptr @_ZNSt15__new_allocatorIP10NEDElementE10deallocateEPS1_m, i64 3}
!50 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE5clearEv, ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE15_M_erase_at_endEPS1_, i64 110}
!51 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE9push_backERKS1_, ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_, i64 53}
!52 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE9push_backERKS1_, ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE3endEv, i64 2}
!53 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE9push_backERKS1_, ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, i64 2}
!54 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE15_M_erase_at_endEPS1_, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv, i64 55}
!55 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE15_M_erase_at_endEPS1_, ptr @_ZSt8_DestroyIPP10NEDElementS1_EvT_S3_RSaIT0_E, i64 55}
!56 = !{ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIP10NEDElementE9constructIS1_JRKS1_EEEvPT_DpOT0_, i64 99}
!57 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE12_M_check_lenEmPKc, i64 1}
!58 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE5beginEv, i64 1}
!59 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPP10NEDElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, i64 1}
!60 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE11_M_allocateEm, i64 1}
!61 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_, i64 1}
!62 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv, i64 2}
!63 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv, i64 2}
!64 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, i64 2}
!65 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE13_M_deallocateEPS1_m, i64 1}
!66 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 29}
!67 = !{ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE8max_sizeEv, i64 1}
!68 = !{ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv, i64 4}
!69 = !{ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 1}
!70 = !{ptr @_ZN9__gnu_cxxmiIPP10NEDElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv, i64 2}
!71 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 29}
!72 = !{ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE8allocateERS2_m, i64 1}
!73 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, ptr @_ZSt12__relocate_aIPP10NEDElementS2_SaIS1_EET0_T_S5_S4_RT1_, i64 2}
!74 = !{ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv, i64 2}
!75 = !{ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE8max_sizeEv, ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_max_sizeERKS2_, i64 2}
!76 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_max_sizeERKS2_, ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE8max_sizeERKS2_, i64 2}
!77 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE11_S_max_sizeERKS2_, ptr @_ZSt3minImERKT_S2_S2_, i64 2}
!78 = !{ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE8max_sizeERKS2_, ptr @_ZNKSt15__new_allocatorIP10NEDElementE8max_sizeEv, i64 3}
!79 = !{ptr @_ZNKSt15__new_allocatorIP10NEDElementE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIP10NEDElementE11_M_max_sizeEv, i64 3}
!80 = !{ptr @_ZNSt16allocator_traitsISaIP10NEDElementEE8allocateERS2_m, ptr @_ZNSt15__new_allocatorIP10NEDElementE8allocateEmPKv, i64 17}
!81 = !{ptr @_ZSt12__relocate_aIPP10NEDElementS2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt12__niter_baseIPP10NEDElementET_S3_, i64 6}
!82 = !{ptr @_ZSt12__relocate_aIPP10NEDElementS2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt14__relocate_a_1IP10NEDElementS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E, i64 2}
!83 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!84 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!85 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE4sizeEv, i64 55}
!86 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE8capacityEv, i64 27}
!87 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE5beginEv, i64 26}
!88 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE3endEv, i64 26}
!89 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_, i64 1}
!90 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE19_M_get_Tp_allocatorEv, i64 27}
!91 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZSt8_DestroyIPP10NEDElementS1_EvT_S3_RSaIT0_E, i64 1}
!92 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZNSt12_Vector_baseIP10NEDElementSaIS1_EE13_M_deallocateEPS1_m, i64 1}
!93 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE5beginEv, i64 25}
!94 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_, i64 25}
!95 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE3endEv, i64 25}
!96 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E, i64 25}
!97 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZSt4copyIPP10NEDElementS2_ET0_T_S4_S3_, i64 1}
!98 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_, ptr @_ZSt22__uninitialized_copy_aIPP10NEDElementS2_S1_ET0_T_S4_S3_RSaIT1_E, i64 1}
!99 = !{ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS4_, i64 28}
!100 = !{ptr @_ZNKSt6vectorIP10NEDElementSaIS1_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS4_, i64 28}
!101 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEEEvT_S9_, i64 28}
!102 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEEET_SA_, i64 56}
!103 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_, i64 28}
!104 = !{ptr @_ZSt14__copy_move_a1ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_, ptr @_ZSt14__copy_move_a2ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_, i64 28}
!105 = !{ptr @_ZSt12__niter_baseIPKP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv, i64 56}
!106 = !{ptr @_ZSt14__copy_move_a2ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10NEDElementEEPT_PKS5_S8_S6_, i64 28}
!107 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEEEvT_S9_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS5_SaIS5_EEEEEEvT_SB_, i64 28}
!108 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_, ptr @_ZSt12__niter_baseIPKP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE, i64 56}
!109 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_, ptr @_ZSt12__niter_baseIPP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE, i64 28}
!110 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_, ptr @_ZSt14__copy_move_a1ILb0EPKP10NEDElementPS1_ET1_T0_S6_S5_, i64 28}
!111 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_, i64 28}
!112 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_, ptr @_ZSt12__niter_baseIPP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE, i64 28}
!113 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEplEl, i64 28}
!114 = !{ptr @_ZSt12__niter_baseIPP10NEDElementSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEE4baseEv, i64 56}
!115 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEplEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 28}
!116 = !{ptr @_ZSt14__copy_move_a1ILb0EPP10NEDElementS2_ET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPP10NEDElementS2_ET1_T0_S4_S3_, i64 14}
!117 = !{ptr @_ZSt14__copy_move_a2ILb0EPP10NEDElementS2_ET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10NEDElementEEPT_PKS5_S8_S6_, i64 14}
!118 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!119 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!120 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!121 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!122 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!123 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!124 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!125 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!126 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!127 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!128 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!129 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!130 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!131 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!132 = !{!"function_entry_count", i64 6}
!133 = !{!"function_entry_count", i64 21}
!134 = !{!"function_entry_count", i64 1}
!135 = !{!136, !137, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseIP10NEDElementSaIS1_EE17_Vector_impl_dataE", !137, i64 0, !137, i64 8, !137, i64 16}
!137 = !{!"any pointer", !138, i64 0}
!138 = !{!"omnipotent char", !139, i64 0}
!139 = !{!"Simple C++ TBAA"}
!140 = !{!136, !137, i64 8}
!141 = !{!"function_entry_count", i64 56}
!142 = !{!"function_entry_count", i64 86}
!143 = !{!136, !137, i64 16}
!144 = !{!"function_entry_count", i64 2}
!145 = !{!"branch_weights", i32 3, i32 1}
!146 = !{!"function_entry_count", i64 4}
!147 = !{!"function_entry_count", i64 3}
!148 = !{!"function_entry_count", i64 0}
!149 = !{!150, !150, i64 0}
!150 = !{!"int", !138, i64 0}
!151 = !{!137, !137, i64 0}
!152 = !{!153, !153, i64 0}
!153 = !{!"short", !138, i64 0}
!154 = !{!138, !138, i64 0}
!155 = !{i64 0, i64 4, !149, i64 4, i64 4, !149, i64 8, i64 4, !149, i64 12, i64 4, !149, i64 16, i64 4, !149, i64 24, i64 8, !151}
!156 = !{!157, !137, i64 96}
!157 = !{!"_ZTS15MSG2ParserState", !158, i64 0, !158, i64 1, !159, i64 8, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !137, i64 104, !137, i64 112, !137, i64 120, !137, i64 128, !137, i64 136, !137, i64 144, !137, i64 152, !137, i64 160, !137, i64 168, !137, i64 176}
!158 = !{!"bool", !138, i64 0}
!159 = !{!"_ZTSSt6vectorIP10NEDElementSaIS1_EE", !160, i64 0}
!160 = !{!"_ZTSSt12_Vector_baseIP10NEDElementSaIS1_EE", !161, i64 0}
!161 = !{!"_ZTSNSt12_Vector_baseIP10NEDElementSaIS1_EE12_Vector_implE", !136, i64 0}
!162 = !{!157, !137, i64 104}
!163 = !{!157, !137, i64 112}
!164 = !{!157, !137, i64 120}
!165 = !{!157, !137, i64 128}
!166 = !{!157, !137, i64 32}
!167 = !{!157, !137, i64 40}
!168 = !{!157, !137, i64 48}
!169 = !{!157, !137, i64 56}
!170 = !{!157, !137, i64 64}
!171 = !{!157, !137, i64 72}
!172 = !{!157, !137, i64 80}
!173 = !{!157, !137, i64 88}
!174 = !{!157, !137, i64 144}
!175 = !{!157, !137, i64 152}
!176 = !{!157, !137, i64 136}
!177 = !{!157, !137, i64 160}
!178 = !{!157, !158, i64 0}
!179 = !{i8 0, i8 2}
!180 = !{}
!181 = !{!157, !158, i64 1}
!182 = !{!157, !137, i64 168}
!183 = !{!157, !137, i64 176}
!184 = !{!185, !185, i64 0}
!185 = !{!"vtable pointer", !139, i64 0}
!186 = distinct !{!186, !187}
!187 = !{!"llvm.loop.mustprogress"}
!188 = distinct !{!188, !187}
!189 = distinct !{!189, !187}
!190 = distinct !{!190, !187}
!191 = !{!"msg2.tab.cc:_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype"}
!192 = !{!"msg2.tab.cc:_ZL15yy_reduce_printPP10NEDElementP10my_yyltypei"}
!193 = distinct !{!193, !187}
!194 = !{!"function_entry_count", i64 36}
!195 = !{!196, !158, i64 1}
!196 = !{!"_ZTS9NEDParser", !158, i64 0, !158, i64 1, !137, i64 8, !137, i64 16, !137, i64 24}
!197 = !{!198, !158, i64 144}
!198 = !{!"_ZTS16ClassDeclElement", !199, i64 0, !201, i64 112, !158, i64 144, !201, i64 152}
!199 = !{!"_ZTS10NEDElement", !200, i64 8, !201, i64 16, !203, i64 48, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !137, i64 104}
!200 = !{!"long", !138, i64 0}
!201 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !202, i64 0, !200, i64 8, !138, i64 16}
!202 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !137, i64 0}
!203 = !{!"_ZTS15NEDSourceRegion", !150, i64 0, !150, i64 4, !150, i64 8, !150, i64 12}
!204 = !{!205, !158, i64 176}
!205 = !{!"_ZTS12FieldElement", !199, i64 0, !201, i64 112, !201, i64 144, !158, i64 176, !158, i64 177, !158, i64 178, !201, i64 184, !201, i64 216, !201, i64 248}
!206 = !{!205, !158, i64 177}
!207 = !{!205, !158, i64 178}
!208 = !{!"function_entry_count", i64 110}
!209 = !{!"function_entry_count", i64 170}
!210 = !{!"function_entry_count", i64 55}
!211 = !{!"branch_weights", i32 2, i32 55}
!212 = !{!"msg2.tab.cc:_ZL14yy_stack_printPsS_"}
!213 = distinct !{!213, !187}
!214 = !{!"msg2.tab.cc:_ZL14yysyntax_errorPcii"}
!215 = distinct !{!215, !187}
!216 = distinct !{!216, !187}
!217 = !{!218, !150, i64 0}
!218 = !{!"_ZTS10LineColumn", !150, i64 0, !150, i64 4}
!219 = !{!"msg2.tab.cc:_ZL10yydestructPKciPP10NEDElementP10my_yyltype"}
!220 = !{!"branch_weights", i32 56, i32 56}
!221 = !{!"function_entry_count", i64 99}
!222 = !{!"function_entry_count", i64 29}
!223 = !{!200, !200, i64 0}
!224 = !{!"branch_weights", i32 1, i32 2}
!225 = !{!"function_entry_count", i64 60}
!226 = !{!"function_entry_count", i64 147735}
!227 = !{!"branch_weights", i32 61980, i32 85757}
!228 = !{!"function_entry_count", i64 295467}
!229 = !{!"branch_weights", i32 2, i32 295467}
!230 = !{!"function_entry_count", i64 20}
!231 = !{!232, !137, i64 0}
!232 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPP10NEDElementSt6vectorIS2_SaIS2_EEEE", !137, i64 0}
!233 = !{!"function_entry_count", i64 17}
!234 = !{!"branch_weights", i32 1, i32 2000}
!235 = !{!"branch_weights", i32 1, i32 3}
!236 = !{!"msg2.tab.cc:_ZL9yytnamerrPcPKc"}
!237 = distinct !{!237, !187}
!238 = !{!218, !150, i64 4}
!239 = !{!"msg2.tab.cc:_ZZ11doParseMSG2P9NEDParserPKcEN5GuardC2ES0_"}
!240 = !{!"function_entry_count", i64 14}
!241 = !{!196, !137, i64 16}
!242 = !{!"msg2.tab.cc:_ZL16resetParserStatev"}
!243 = !{!"branch_weights", i32 1, i32 1048575}
!244 = !{!"function_entry_count", i64 1159}
!245 = !{!196, !137, i64 8}
!246 = !{!"function_entry_count", i64 2924}
!247 = !{!196, !137, i64 24}
!248 = !{!"function_entry_count", i64 2107073}
!249 = !{!"function_entry_count", i64 1891507}
!250 = !{!"msg2.tab.cc:_ZZ11doParseMSG2P9NEDParserPKcEN5GuardD2Ev"}
!251 = !{!"function_entry_count", i64 28}
!252 = !{!"branch_weights", i32 1, i32 29}
!253 = !{!"function_entry_count", i64 42}
!254 = !{!"branch_weights", i32 29, i32 15}
!255 = !{!256, !137, i64 0}
!256 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKP10NEDElementSt6vectorIS2_SaIS2_EEEE", !137, i64 0}
!257 = !{!"function_entry_count", i64 1889443}
!258 = !{!"branch_weights", i32 1257663, i32 631782}
!259 = !{!260, !137, i64 0}
!260 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !137, i64 0}
!261 = !{!"branch_weights", i32 1889444, i32 1}
