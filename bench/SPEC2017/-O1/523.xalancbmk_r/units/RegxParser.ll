; ModuleID = 'RegxParser.cpp'
source_filename = "RegxParser.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RegxParser::ReferencePosition" = type { i32, i32 }
%"class.xercesc_2_7::RegxParser" = type { ptr, ptr, i8, i32, i32, i32, i16, i32, i16, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE9elementAtEj = comdat any

$_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_714ParseExceptionD0Ev = comdat any

$_ZNK11xercesc_2_714ParseException7getTypeEv = comdat any

$_ZNK11xercesc_2_714ParseException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE12setElementAtEPS2_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_714ParseExceptionE = comdat any

$_ZTIN11xercesc_2_714ParseExceptionE = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_714ParseExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE = comdat any

@_ZN11xercesc_2_710RegxParser8S_NORMALE = dso_local local_unnamed_addr constant i16 0, align 2
@_ZN11xercesc_2_710RegxParser12S_INBRACKETSE = dso_local local_unnamed_addr constant i16 1, align 2
@_ZN11xercesc_2_710RegxParser13S_INXBRACKETSE = dso_local local_unnamed_addr constant i16 2, align 2
@_ZTVN11xercesc_2_710RegxParserE = dso_local unnamed_addr constant { [35 x ptr] } { [35 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710RegxParserE, ptr @_ZN11xercesc_2_710RegxParserD2Ev, ptr @_ZN11xercesc_2_710RegxParserD0Ev, ptr @_ZN11xercesc_2_710RegxParser13checkQuestionEi, ptr @_ZN11xercesc_2_710RegxParser13decodeEscapedEv, ptr @_ZN11xercesc_2_710RegxParser12processCaretEv, ptr @_ZN11xercesc_2_710RegxParser13processDollarEv, ptr @_ZN11xercesc_2_710RegxParser11processLookEt, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_AEv, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_zEv, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_ZEv, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_bEv, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_BEv, ptr @_ZN11xercesc_2_710RegxParser21processBacksolidus_ltEv, ptr @_ZN11xercesc_2_710RegxParser21processBacksolidus_gtEv, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_cEv, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_CEv, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_iEv, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_IEv, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_gEv, ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_XEv, ptr @_ZN11xercesc_2_710RegxParser20processBackReferenceEv, ptr @_ZN11xercesc_2_710RegxParser11processStarEPNS_5TokenE, ptr @_ZN11xercesc_2_710RegxParser11processPlusEPNS_5TokenE, ptr @_ZN11xercesc_2_710RegxParser15processQuestionEPNS_5TokenE, ptr @_ZN11xercesc_2_710RegxParser12processParenEv, ptr @_ZN11xercesc_2_710RegxParser13processParen2Ev, ptr @_ZN11xercesc_2_710RegxParser16processConditionEv, ptr @_ZN11xercesc_2_710RegxParser16processModifiersEv, ptr @_ZN11xercesc_2_710RegxParser18processIndependentEv, ptr @_ZN11xercesc_2_710RegxParser19parseCharacterClassEb, ptr @_ZN11xercesc_2_710RegxParser18parseSetOperationsEv, ptr @_ZN11xercesc_2_710RegxParser24processCInCharacterClassEPNS_10RangeTokenEi, ptr @_ZN11xercesc_2_710RegxParser20getTokenForShorthandEi] }, align 8
@_ZN11xercesc_2_717RegularExpression16EXTENDED_COMMENTE = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"RegxParser.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714ParseExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714ParseExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_717RegularExpression14XMLSCHEMA_MODEE = external local_unnamed_addr constant i32, align 4
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZN11xercesc_2_75Token9UTF16_MAXE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_717RegularExpression13SPECIAL_COMMAE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_717RegularExpression11IGNORE_CASEE = external local_unnamed_addr constant i32, align 4
@_ZTIi = external constant ptr
@_ZN11xercesc_2_717RegularExpression20USE_UNICODE_CATEGORYE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_7L17fgUniDecimalDigitE = internal constant [3 x i16] [i16 78, i16 100, i16 0], align 2
@_ZN11xercesc_2_7L12fgASCIIDigitE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 68, i16 105, i16 103, i16 105, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L11fgUniIsWordE = internal constant [7 x i16] [i16 73, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 2
@_ZN11xercesc_2_7L11fgASCIIWordE = internal constant [13 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 16
@_ZN11xercesc_2_7L12fgUniIsSpaceE = internal constant [8 x i16] [i16 73, i16 115, i16 83, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xercesc_2_7L12fgASCIISpaceE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 83, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710RegxParserE = dso_local constant [28 x i8] c"N11xercesc_2_710RegxParserE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_710RegxParserE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710RegxParserE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZTVN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714ParseExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_714ParseExceptionD0Ev, ptr @_ZNK11xercesc_2_714ParseException7getTypeEv, ptr @_ZNK11xercesc_2_714ParseException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni21fgParseException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE12setElementAtEPS2_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE = linkonce_odr dso_local constant [66 x i8] c"N11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE = linkonce_odr dso_local constant [70 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE12setElementAtEPS2_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_710RegxParser17ReferencePositionC1Eii = dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN11xercesc_2_710RegxParser17ReferencePositionC2Eii
@_ZN11xercesc_2_710RegxParserC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_710RegxParserC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_710RegxParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710RegxParserD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_710RegxParser17ReferencePositionC2Eii(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !49 {
  store i32 %1, ptr %0, align 4, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegxParser::ReferencePosition", ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 4, !tbaa !55
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_710RegxParserC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !56 {
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xercesc_2_710RegxParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !59
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !65
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 5
  store i32 1, ptr %7, align 4, !tbaa !67
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 6
  store i16 0, ptr %8, align 8, !tbaa !68
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !69
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  store i16 0, ptr %10, align 8, !tbaa !70
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710RegxParserD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xercesc_2_710RegxParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = load ptr, ptr %3, align 8, !tbaa !57
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18, !prof !72

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !74

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !57
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #14
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #15
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !49 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710RegxParserD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParserD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser5parseEPKti(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %4 = alloca [65 x i16], align 16
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %126, label %8, !prof !76

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 3
  store i32 %2, ptr %9, align 4, !tbaa !65
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !66
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 5
  store i32 1, ptr %11, align 4, !tbaa !67
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 2
  store i8 0, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 6
  store i16 0, ptr %13, align 8, !tbaa !68
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !74

17:                                               ; preds = %8
  %18 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %15)
  br label %23

23:                                               ; preds = %17, %8
  %24 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = icmp eq ptr %1, null
  br i1 %26, label %47, label %27, !prof !76

27:                                               ; preds = %23
  %28 = load i16, ptr %1, align 2, !tbaa !77
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %41, label %30, !prof !76

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %32, %30 ], [ %1, %27 ]
  %32 = getelementptr inbounds i16, ptr %31, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !77
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %30, !prof !78, !llvm.loop !79

35:                                               ; preds = %30
  %36 = ptrtoint ptr %32 to i64
  %37 = ptrtoint ptr %1 to i64
  %38 = sub i64 %36, %37
  %39 = add i64 %38, 2
  %40 = and i64 %39, 8589934590
  br label %41

41:                                               ; preds = %35, %27
  %42 = phi i64 [ %40, %35 ], [ 2, %27 ]
  %43 = load ptr, ptr %25, align 8, !tbaa !57
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef %42), !prof !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %46, ptr nonnull align 2 %1, i64 %42, i1 false), !prof !83
  br label %47

47:                                               ; preds = %23, %41
  %48 = phi ptr [ %46, %41 ], [ null, %23 ]
  store ptr %48, ptr %14, align 8, !tbaa !71
  %49 = load i32, ptr @_ZN11xercesc_2_717RegularExpression16EXTENDED_COMMENTE, align 4, !tbaa !84
  %50 = load i32, ptr %9, align 4, !tbaa !65
  %51 = and i32 %50, %49
  %52 = icmp eq i32 %51, %49
  br i1 %52, label %53, label %63, !prof !76

53:                                               ; preds = %47
  %54 = icmp eq ptr %48, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %24, align 8, !tbaa !59
  %57 = load ptr, ptr %56, align 8, !tbaa !57
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull %48)
  br label %60

60:                                               ; preds = %55, %53
  %61 = load ptr, ptr %24, align 8, !tbaa !59
  %62 = tail call noundef ptr @_ZN11xercesc_2_78RegxUtil20stripExtendedCommentEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %61)
  store ptr %62, ptr %14, align 8, !tbaa !71
  br label %63

63:                                               ; preds = %60, %47
  %64 = load ptr, ptr %14, align 8, !tbaa !71
  %65 = icmp eq ptr %64, null
  br i1 %65, label %80, label %66, !prof !76

66:                                               ; preds = %63
  %67 = load i16, ptr %64, align 2, !tbaa !77
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %80, label %69, !prof !76

69:                                               ; preds = %66, %69
  %70 = phi ptr [ %71, %69 ], [ %64, %66 ]
  %71 = getelementptr inbounds i16, ptr %70, i64 1
  %72 = load i16, ptr %71, align 2, !tbaa !77
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %69, !prof !78, !llvm.loop !79

74:                                               ; preds = %69
  %75 = ptrtoint ptr %71 to i64
  %76 = ptrtoint ptr %64 to i64
  %77 = sub i64 %75, %76
  %78 = lshr exact i64 %77, 1
  %79 = trunc i64 %78 to i32
  br label %80

80:                                               ; preds = %63, %66, %74
  %81 = phi i32 [ %79, %74 ], [ 0, %66 ], [ 0, %63 ]
  %82 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 7
  store i32 %81, ptr %82, align 4, !tbaa !69
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %83 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  %84 = load i32, ptr %10, align 8, !tbaa !66
  %85 = load i32, ptr %82, align 4, !tbaa !69
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %95, label %87, !prof !74

87:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #14
  %88 = load ptr, ptr %24, align 8, !tbaa !59
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %84, ptr noundef nonnull %4, i32 noundef 64, i32 noundef 10, ptr noundef %88)
  %89 = call ptr @__cxa_allocate_exception(i64 48) #14
  %90 = load ptr, ptr %14, align 8, !tbaa !71
  %91 = load ptr, ptr %24, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %89, ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 120, ptr noundef nonnull %4, ptr noundef %90, ptr noundef null, ptr noundef null, ptr noundef %91)
          to label %92 unwind label %93

92:                                               ; preds = %87
  call void @__cxa_throw(ptr nonnull %89, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %89) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #14
  br label %124

95:                                               ; preds = %80
  %96 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 11
  %97 = load ptr, ptr %96, align 8, !tbaa !73
  %98 = icmp eq ptr %97, null
  br i1 %98, label %126, label %99, !prof !74

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %97, i64 0, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !85
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %111

103:                                              ; preds = %111
  %104 = add nuw i32 %112, 1
  %105 = icmp eq i32 %104, %101
  br i1 %105, label %106, label %111, !llvm.loop !87

106:                                              ; preds = %103, %99
  %107 = load ptr, ptr %96, align 8, !tbaa !73
  %108 = load ptr, ptr %107, align 8, !tbaa !57
  %109 = getelementptr inbounds ptr, ptr %108, i64 3
  %110 = load ptr, ptr %109, align 8
  tail call void %110(ptr noundef nonnull align 8 dereferenceable(40) %107)
  br label %126

111:                                              ; preds = %99, %103
  %112 = phi i32 [ %104, %103 ], [ 0, %99 ]
  %113 = load i32, ptr %11, align 4, !tbaa !67
  %114 = load ptr, ptr %96, align 8, !tbaa !73
  %115 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %114, i32 noundef %112)
  %116 = load i32, ptr %115, align 4, !tbaa !50
  %117 = icmp sgt i32 %113, %116
  br i1 %117, label %103, label %118

118:                                              ; preds = %111
  %119 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %120 = load ptr, ptr %24, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %119, ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 121, ptr noundef %120)
          to label %121 unwind label %122

121:                                              ; preds = %118
  tail call void @__cxa_throw(ptr nonnull %119, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

122:                                              ; preds = %118
  %123 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %119) #14
  br label %124

124:                                              ; preds = %122, %93
  %125 = phi { ptr, i32 } [ %94, %93 ], [ %123, %122 ]
  resume { ptr, i32 } %125

126:                                              ; preds = %95, %106, %3
  %127 = phi ptr [ null, %3 ], [ %83, %106 ], [ %83, %95 ]
  ret ptr %127
}

declare noundef ptr @_ZN11xercesc_2_78RegxUtil20stripExtendedCommentEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %9, label %7, !prof !89

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  store i32 -1, ptr %8, align 4, !tbaa !90
  br label %220

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = add nsw i32 %3, 1
  store i32 %12, ptr %2, align 8, !tbaa !66
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds i16, ptr %11, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !77
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  store i32 %16, ptr %17, align 4, !tbaa !90
  %18 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 6
  %19 = load i16, ptr %18, align 8, !tbaa !68
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %86, !prof !91

21:                                               ; preds = %9
  switch i16 %15, label %67 [
    i16 92, label %22
    i16 45, label %37
    i16 91, label %52
  ], !prof !92

22:                                               ; preds = %21
  %23 = icmp slt i32 %12, %5
  br i1 %23, label %31, label %24, !prof !93

24:                                               ; preds = %22
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %26 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 122, ptr noundef %27)
          to label %28 unwind label %29

28:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %223

31:                                               ; preds = %22
  %32 = add nsw i32 %3, 2
  store i32 %32, ptr %2, align 8, !tbaa !66
  %33 = sext i32 %12 to i64
  %34 = getelementptr inbounds i16, ptr %11, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !77
  %36 = zext i16 %35 to i32
  store i32 %36, ptr %17, align 4, !tbaa !90
  br label %220

37:                                               ; preds = %21
  %38 = load i32, ptr @_ZN11xercesc_2_717RegularExpression14XMLSCHEMA_MODEE, align 4, !tbaa !84
  %39 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !65
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, %38
  %43 = icmp slt i32 %12, %5
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %220, !prof !94

45:                                               ; preds = %37
  %46 = sext i32 %12 to i64
  %47 = getelementptr inbounds i16, ptr %11, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !77
  %49 = icmp eq i16 %48, 91
  br i1 %49, label %50, label %220, !prof !95

50:                                               ; preds = %45
  %51 = add nsw i32 %3, 2
  store i32 %51, ptr %2, align 8, !tbaa !66
  br label %220

52:                                               ; preds = %21
  %53 = load i32, ptr @_ZN11xercesc_2_717RegularExpression14XMLSCHEMA_MODEE, align 4, !tbaa !84
  %54 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !65
  %56 = and i32 %55, %53
  %57 = icmp ne i32 %56, %53
  %58 = icmp slt i32 %12, %5
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = sext i32 %12 to i64
  %62 = getelementptr inbounds i16, ptr %11, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !77
  %64 = icmp eq i16 %63, 58
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = add nsw i32 %3, 2
  store i32 %66, ptr %2, align 8, !tbaa !66
  br label %220

67:                                               ; preds = %52, %60, %21
  %68 = and i16 %15, -1024
  %69 = icmp eq i16 %68, -10240
  br i1 %69, label %70, label %220, !prof !96

70:                                               ; preds = %67
  %71 = icmp slt i32 %12, %5
  br i1 %71, label %72, label %220

72:                                               ; preds = %70
  %73 = sext i32 %12 to i64
  %74 = getelementptr inbounds i16, ptr %11, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !77
  %76 = and i16 %75, -1024
  %77 = icmp eq i16 %76, -9216
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = shl nuw nsw i32 %16, 10
  %80 = zext i16 %75 to i32
  %81 = add nsw i32 %79, -56613888
  %82 = add nuw nsw i32 %81, %80
  store i32 %82, ptr %17, align 4, !tbaa !90
  %83 = add nsw i32 %3, 2
  store i32 %83, ptr %2, align 8, !tbaa !66
  br label %220

84:                                               ; preds = %72
  %85 = tail call ptr @__cxa_allocate_exception(i64 4) #14
  store i32 249, ptr %85, align 16, !tbaa !97
  tail call void @__cxa_throw(ptr nonnull %85, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #16
  unreachable

86:                                               ; preds = %9
  switch i16 %15, label %201 [
    i16 124, label %220
    i16 42, label %87
    i16 43, label %88
    i16 63, label %89
    i16 41, label %90
    i16 46, label %91
    i16 91, label %92
    i16 94, label %93
    i16 36, label %94
    i16 40, label %95
    i16 92, label %186
  ], !prof !99

87:                                               ; preds = %86
  br label %220

88:                                               ; preds = %86
  br label %220

89:                                               ; preds = %86
  br label %220

90:                                               ; preds = %86
  br label %220

91:                                               ; preds = %86
  br label %220

92:                                               ; preds = %86
  br label %220

93:                                               ; preds = %86
  br label %220

94:                                               ; preds = %86
  br label %220

95:                                               ; preds = %86
  %96 = icmp slt i32 %12, %5
  br i1 %96, label %97, label %220, !prof !100

97:                                               ; preds = %95
  %98 = sext i32 %12 to i64
  %99 = getelementptr inbounds i16, ptr %11, i64 %98
  %100 = load i16, ptr %99, align 2, !tbaa !77
  %101 = icmp eq i16 %100, 63
  br i1 %101, label %102, label %220, !prof !101

102:                                              ; preds = %97
  %103 = add nsw i32 %3, 2
  store i32 %103, ptr %2, align 8, !tbaa !66
  %104 = icmp slt i32 %103, %5
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %107 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %106, ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 123, ptr noundef %108)
          to label %109 unwind label %110

109:                                              ; preds = %105
  tail call void @__cxa_throw(ptr nonnull %106, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

110:                                              ; preds = %105
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %223

112:                                              ; preds = %102
  %113 = add nsw i32 %3, 3
  store i32 %113, ptr %2, align 8, !tbaa !66
  %114 = sext i32 %103 to i64
  %115 = getelementptr inbounds i16, ptr %11, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !77
  switch i16 %116, label %171 [
    i16 58, label %220
    i16 61, label %122
    i16 33, label %123
    i16 91, label %124
    i16 62, label %125
    i16 60, label %126
    i16 35, label %117
    i16 45, label %175
  ]

117:                                              ; preds = %112
  %118 = load i32, ptr %2, align 8, !tbaa !66
  %119 = icmp slt i32 %118, %5
  br i1 %119, label %120, label %161

120:                                              ; preds = %117
  %121 = sext i32 %118 to i64
  br label %150

122:                                              ; preds = %112
  br label %220

123:                                              ; preds = %112
  br label %220

124:                                              ; preds = %112
  br label %220

125:                                              ; preds = %112
  br label %220

126:                                              ; preds = %112
  %127 = icmp slt i32 %113, %5
  br i1 %127, label %135, label %128

128:                                              ; preds = %126
  %129 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %130 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %129, ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 123, ptr noundef %131)
          to label %132 unwind label %133

132:                                              ; preds = %128
  tail call void @__cxa_throw(ptr nonnull %129, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

133:                                              ; preds = %128
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %223

135:                                              ; preds = %126
  %136 = add nsw i32 %3, 4
  store i32 %136, ptr %2, align 8, !tbaa !66
  %137 = sext i32 %113 to i64
  %138 = getelementptr inbounds i16, ptr %11, i64 %137
  %139 = load i16, ptr %138, align 2, !tbaa !77
  switch i16 %139, label %141 [
    i16 61, label %220
    i16 33, label %140
  ]

140:                                              ; preds = %135
  br label %220

141:                                              ; preds = %135
  %142 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %143 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %142, ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 124, ptr noundef %144)
          to label %145 unwind label %146

145:                                              ; preds = %141
  tail call void @__cxa_throw(ptr nonnull %142, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

146:                                              ; preds = %141
  %147 = landingpad { ptr, i32 }
          cleanup
  br label %223

148:                                              ; preds = %150
  %149 = icmp eq i32 %5, %156
  br i1 %149, label %157, label %150, !llvm.loop !102

150:                                              ; preds = %120, %148
  %151 = phi i64 [ %121, %120 ], [ %152, %148 ]
  %152 = add nsw i64 %151, 1
  %153 = getelementptr inbounds i16, ptr %11, i64 %151
  %154 = load i16, ptr %153, align 2, !tbaa !77
  %155 = icmp eq i16 %154, 41
  %156 = trunc i64 %152 to i32
  br i1 %155, label %159, label %148, !llvm.loop !102

157:                                              ; preds = %148
  %158 = trunc i64 %152 to i32
  br label %159

159:                                              ; preds = %150, %157
  %160 = phi i32 [ %158, %157 ], [ %156, %150 ]
  store i32 %160, ptr %2, align 8, !tbaa !66
  br label %161

161:                                              ; preds = %159, %117
  %162 = phi i16 [ %116, %117 ], [ %154, %159 ]
  %163 = icmp eq i16 %162, 41
  br i1 %163, label %220, label %164

164:                                              ; preds = %161
  %165 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %166 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %165, ptr noundef nonnull @.str, i32 noundef 281, i32 noundef 125, ptr noundef %167)
          to label %168 unwind label %169

168:                                              ; preds = %164
  tail call void @__cxa_throw(ptr nonnull %165, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

169:                                              ; preds = %164
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %223

171:                                              ; preds = %112
  %172 = and i16 %116, -33
  %173 = add i16 %172, -65
  %174 = icmp ult i16 %173, 26
  br i1 %174, label %175, label %177

175:                                              ; preds = %112, %171
  %176 = add nsw i32 %3, 2
  store i32 %176, ptr %2, align 8, !tbaa !66
  br label %220

177:                                              ; preds = %171
  %178 = icmp eq i16 %116, 40
  br i1 %178, label %220, label %179

179:                                              ; preds = %177
  %180 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %181 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %180, ptr noundef nonnull @.str, i32 noundef 297, i32 noundef 123, ptr noundef %182)
          to label %183 unwind label %184

183:                                              ; preds = %179
  tail call void @__cxa_throw(ptr nonnull %180, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

184:                                              ; preds = %179
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %223

186:                                              ; preds = %86
  %187 = icmp slt i32 %12, %5
  br i1 %187, label %195, label %188, !prof !103

188:                                              ; preds = %186
  %189 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %190 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %189, ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 122, ptr noundef %191)
          to label %192 unwind label %193

192:                                              ; preds = %188
  tail call void @__cxa_throw(ptr nonnull %189, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

193:                                              ; preds = %188
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %223

195:                                              ; preds = %186
  %196 = add nsw i32 %3, 2
  store i32 %196, ptr %2, align 8, !tbaa !66
  %197 = sext i32 %12 to i64
  %198 = getelementptr inbounds i16, ptr %11, i64 %197
  %199 = load i16, ptr %198, align 2, !tbaa !77
  %200 = zext i16 %199 to i32
  store i32 %200, ptr %17, align 4, !tbaa !90
  br label %220

201:                                              ; preds = %86
  %202 = and i16 %15, -1024
  %203 = icmp eq i16 %202, -10240
  br i1 %203, label %204, label %220, !prof !104

204:                                              ; preds = %201
  %205 = icmp slt i32 %12, %5
  br i1 %205, label %206, label %220

206:                                              ; preds = %204
  %207 = sext i32 %12 to i64
  %208 = getelementptr inbounds i16, ptr %11, i64 %207
  %209 = load i16, ptr %208, align 2, !tbaa !77
  %210 = and i16 %209, -1024
  %211 = icmp eq i16 %210, -9216
  br i1 %211, label %212, label %218

212:                                              ; preds = %206
  %213 = shl nuw nsw i32 %16, 10
  %214 = zext i16 %209 to i32
  %215 = add nsw i32 %213, -56613888
  %216 = add nuw nsw i32 %215, %214
  store i32 %216, ptr %17, align 4, !tbaa !90
  %217 = add nsw i32 %3, 2
  store i32 %217, ptr %2, align 8, !tbaa !66
  br label %220

218:                                              ; preds = %206
  %219 = tail call ptr @__cxa_allocate_exception(i64 4) #14
  store i32 249, ptr %219, align 16, !tbaa !97
  tail call void @__cxa_throw(ptr nonnull %219, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #16
  unreachable

220:                                              ; preds = %87, %88, %89, %90, %91, %92, %93, %94, %195, %95, %97, %140, %175, %125, %124, %123, %122, %212, %204, %201, %86, %135, %161, %112, %177, %31, %65, %50, %45, %37, %78, %70, %67, %7
  %221 = phi i16 [ 1, %7 ], [ 20, %65 ], [ 24, %50 ], [ 10, %31 ], [ 0, %45 ], [ 0, %37 ], [ 0, %78 ], [ 0, %70 ], [ 0, %67 ], [ 0, %212 ], [ 0, %204 ], [ 0, %201 ], [ 10, %195 ], [ 6, %95 ], [ 6, %97 ], [ 22, %175 ], [ 17, %140 ], [ 18, %125 ], [ 19, %124 ], [ 15, %123 ], [ 14, %122 ], [ 12, %94 ], [ 11, %93 ], [ 9, %92 ], [ 8, %91 ], [ 7, %90 ], [ 5, %89 ], [ 4, %88 ], [ 3, %87 ], [ 2, %86 ], [ 13, %112 ], [ 16, %135 ], [ 21, %161 ], [ 23, %177 ]
  %222 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  store i16 %221, ptr %222, align 8, !tbaa !70
  ret void

223:                                              ; preds = %193, %184, %169, %146, %133, %110, %29
  %224 = phi ptr [ %189, %193 ], [ %180, %184 ], [ %165, %169 ], [ %142, %146 ], [ %129, %133 ], [ %106, %110 ], [ %25, %29 ]
  %225 = phi { ptr, i32 } [ %194, %193 ], [ %185, %184 ], [ %170, %169 ], [ %147, %146 ], [ %134, %133 ], [ %111, %110 ], [ %30, %29 ]
  tail call void @__cxa_free_exception(ptr %224) #14
  resume { ptr, i32 } %225
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !105 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseTermEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1)
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %5 = load i16, ptr %4, align 8, !tbaa !70
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %7, label %31, !prof !106

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  br label %9

9:                                                ; preds = %7, %21
  %10 = phi ptr [ null, %7 ], [ %23, %21 ]
  %11 = phi ptr [ %3, %7 ], [ %22, %21 ]
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %21, !prof !107

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createUnionEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false)
  %17 = load ptr, ptr %14, align 8, !tbaa !75
  %18 = load ptr, ptr %16, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 18
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef %11, ptr noundef %17), !prof !108
  br label %21

21:                                               ; preds = %13, %9
  %22 = phi ptr [ %16, %13 ], [ %11, %9 ]
  %23 = phi ptr [ %16, %13 ], [ %10, %9 ]
  %24 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseTermEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1)
  %25 = load ptr, ptr %8, align 8, !tbaa !75
  %26 = load ptr, ptr %22, align 8, !tbaa !57
  %27 = getelementptr inbounds ptr, ptr %26, i64 18
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef %24, ptr noundef %25), !prof !109
  %29 = load i16, ptr %4, align 8, !tbaa !70
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %9, label %31, !prof !110, !llvm.loop !111

31:                                               ; preds = %21, %2
  %32 = phi ptr [ %3, %2 ], [ %22, %21 ]
  ret ptr %32
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714ParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714ParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser9parseTermEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !115 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 8, !tbaa !70
  %5 = add i16 %4, -1
  %6 = icmp ult i16 %5, 2
  %7 = icmp eq i16 %4, 7
  %8 = and i1 %7, %1
  %9 = or i1 %6, %8
  br i1 %9, label %10, label %14, !prof !116

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createTokenEt(ptr noundef nonnull align 8 dereferenceable(128) %12, i16 noundef zeroext 7)
  br label %50

14:                                               ; preds = %2
  %15 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser11parseFactorEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %16 = load i16, ptr %3, align 8, !tbaa !70
  %17 = add i16 %16, -1
  %18 = icmp ult i16 %17, 2
  %19 = icmp eq i16 %16, 7
  %20 = and i1 %19, %1
  %21 = or i1 %18, %20
  br i1 %21, label %50, label %22, !prof !117

22:                                               ; preds = %14
  %23 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %24 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  br label %25

25:                                               ; preds = %22, %36
  %26 = phi ptr [ null, %22 ], [ %38, %36 ]
  %27 = phi ptr [ %15, %22 ], [ %37, %36 ]
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %36, !prof !118

29:                                               ; preds = %25
  %30 = load ptr, ptr %23, align 8, !tbaa !75
  %31 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createUnionEb(ptr noundef nonnull align 8 dereferenceable(128) %30, i1 noundef zeroext true)
  %32 = load ptr, ptr %23, align 8, !tbaa !75
  %33 = load ptr, ptr %31, align 8, !tbaa !57
  %34 = getelementptr inbounds ptr, ptr %33, i64 18
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %27, ptr noundef %32), !prof !119
  br label %36

36:                                               ; preds = %29, %25
  %37 = phi ptr [ %31, %29 ], [ %27, %25 ]
  %38 = phi ptr [ %31, %29 ], [ %26, %25 ]
  %39 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser11parseFactorEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %40 = load ptr, ptr %24, align 8, !tbaa !75
  %41 = load ptr, ptr %38, align 8, !tbaa !57
  %42 = getelementptr inbounds ptr, ptr %41, i64 18
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef %39, ptr noundef %40), !prof !120
  %44 = load i16, ptr %3, align 8, !tbaa !70
  %45 = add i16 %44, -1
  %46 = icmp ult i16 %45, 2
  %47 = icmp eq i16 %44, 7
  %48 = and i1 %47, %1
  %49 = or i1 %46, %48
  br i1 %49, label %50, label %25, !prof !121, !llvm.loop !122

50:                                               ; preds = %36, %14, %10
  %51 = phi ptr [ %13, %10 ], [ %15, %14 ], [ %37, %36 ]
  ret ptr %51
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createUnionEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createTokenEt(ptr noundef nonnull align 8 dereferenceable(128), i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser11parseFactorEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 8, !tbaa !70
  switch i16 %3, label %76 [
    i16 11, label %4
    i16 12, label %9
    i16 14, label %14
    i16 15, label %19
    i16 16, label %24
    i16 17, label %29
    i16 21, label %34
    i16 10, label %38
  ], !prof !124

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !57
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %284

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !57
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %284

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(72) %0, i16 noundef zeroext 20)
  br label %284

19:                                               ; preds = %1
  %20 = load ptr, ptr %0, align 8, !tbaa !57
  %21 = getelementptr inbounds ptr, ptr %20, i64 6
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(72) %0, i16 noundef zeroext 21)
  br label %284

24:                                               ; preds = %1
  %25 = load ptr, ptr %0, align 8, !tbaa !57
  %26 = getelementptr inbounds ptr, ptr %25, i64 6
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(72) %0, i16 noundef zeroext 22)
  br label %284

29:                                               ; preds = %1
  %30 = load ptr, ptr %0, align 8, !tbaa !57
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(72) %0, i16 noundef zeroext 23)
  br label %284

34:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %35 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createTokenEt(ptr noundef nonnull align 8 dereferenceable(128) %36, i16 noundef zeroext 7)
  br label %284

38:                                               ; preds = %1
  %39 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 4, !tbaa !90
  switch i32 %40, label %76 [
    i32 65, label %41
    i32 90, label %46
    i32 122, label %51
    i32 98, label %56
    i32 66, label %61
    i32 60, label %66
    i32 62, label %71
  ], !prof !125

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 8, !tbaa !57
  %43 = getelementptr inbounds ptr, ptr %42, i64 7
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %284

46:                                               ; preds = %38
  %47 = load ptr, ptr %0, align 8, !tbaa !57
  %48 = getelementptr inbounds ptr, ptr %47, i64 9
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %284

51:                                               ; preds = %38
  %52 = load ptr, ptr %0, align 8, !tbaa !57
  %53 = getelementptr inbounds ptr, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %284

56:                                               ; preds = %38
  %57 = load ptr, ptr %0, align 8, !tbaa !57
  %58 = getelementptr inbounds ptr, ptr %57, i64 11
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %284

61:                                               ; preds = %38
  %62 = load ptr, ptr %0, align 8, !tbaa !57
  %63 = getelementptr inbounds ptr, ptr %62, i64 11
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %284

66:                                               ; preds = %38
  %67 = load ptr, ptr %0, align 8, !tbaa !57
  %68 = getelementptr inbounds ptr, ptr %67, i64 12
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %284

71:                                               ; preds = %38
  %72 = load ptr, ptr %0, align 8, !tbaa !57
  %73 = getelementptr inbounds ptr, ptr %72, i64 13
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %284

76:                                               ; preds = %38, %1
  %77 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseAtomEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %78 = load i16, ptr %2, align 8, !tbaa !70
  switch i16 %78, label %284 [
    i16 3, label %79
    i16 4, label %84
    i16 5, label %89
    i16 0, label %94
  ], !prof !126

79:                                               ; preds = %76
  %80 = load ptr, ptr %0, align 8, !tbaa !57
  %81 = getelementptr inbounds ptr, ptr %80, i64 21
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %77)
  br label %284

84:                                               ; preds = %76
  %85 = load ptr, ptr %0, align 8, !tbaa !57
  %86 = getelementptr inbounds ptr, ptr %85, i64 22
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %77), !prof !127
  br label %284

89:                                               ; preds = %76
  %90 = load ptr, ptr %0, align 8, !tbaa !57
  %91 = getelementptr inbounds ptr, ptr %90, i64 23
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %77), !prof !128
  br label %284

94:                                               ; preds = %76
  %95 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %96 = load i32, ptr %95, align 4, !tbaa !90
  %97 = icmp eq i32 %96, 123
  br i1 %97, label %98, label %284, !prof !129

98:                                               ; preds = %94
  %99 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !66
  %101 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 7
  %102 = load i32, ptr %101, align 4, !tbaa !69
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %284, !prof !130

104:                                              ; preds = %98
  %105 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  %106 = load ptr, ptr %105, align 8, !tbaa !71
  %107 = add nsw i32 %100, 1
  store i32 %107, ptr %99, align 8, !tbaa !66
  %108 = sext i32 %100 to i64
  %109 = getelementptr inbounds i16, ptr %106, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !77
  %111 = add i16 %110, -48
  %112 = icmp ult i16 %111, 10
  br i1 %112, label %113, label %161, !prof !130

113:                                              ; preds = %104
  %114 = zext nneg i16 %110 to i32
  %115 = load i32, ptr %99, align 8, !tbaa !66
  %116 = add nsw i32 %114, -48
  %117 = icmp slt i32 %115, %102
  br i1 %117, label %118, label %148, !prof !93

118:                                              ; preds = %113
  %119 = sext i32 %115 to i64
  %120 = add nsw i64 %119, 1
  %121 = getelementptr inbounds i16, ptr %106, i64 %119
  %122 = load i16, ptr %121, align 2, !tbaa !77
  %123 = zext i16 %122 to i32
  %124 = add i16 %122, -48
  %125 = icmp ult i16 %124, 10
  br i1 %125, label %133, label %142, !prof !131

126:                                              ; preds = %133
  %127 = add nsw i64 %135, 1
  %128 = getelementptr inbounds i16, ptr %106, i64 %135
  %129 = load i16, ptr %128, align 2, !tbaa !77
  %130 = zext i16 %129 to i32
  %131 = add i16 %129, -48
  %132 = icmp ult i16 %131, 10
  br i1 %132, label %133, label %142, !prof !131, !llvm.loop !132

133:                                              ; preds = %118, %126
  %134 = phi i32 [ %130, %126 ], [ %123, %118 ]
  %135 = phi i64 [ %127, %126 ], [ %120, %118 ]
  %136 = phi i32 [ %139, %126 ], [ %116, %118 ]
  %137 = mul nsw i32 %136, 10
  %138 = add nsw i32 %137, %134
  %139 = add nsw i32 %138, -48
  %140 = trunc i64 %135 to i32
  %141 = icmp eq i32 %102, %140
  br i1 %141, label %142, label %126, !prof !133, !llvm.loop !132

142:                                              ; preds = %133, %126, %118
  %143 = phi i64 [ %120, %118 ], [ %135, %133 ], [ %127, %126 ]
  %144 = phi i32 [ %114, %118 ], [ %138, %126 ], [ %138, %133 ]
  %145 = phi i32 [ %116, %118 ], [ %139, %126 ], [ %139, %133 ]
  %146 = phi i32 [ %123, %118 ], [ %134, %133 ], [ %130, %126 ]
  %147 = trunc i64 %143 to i32
  store i32 %147, ptr %99, align 8, !tbaa !66
  br label %148

148:                                              ; preds = %142, %113
  %149 = phi i32 [ %114, %113 ], [ %144, %142 ]
  %150 = phi i32 [ %116, %113 ], [ %145, %142 ]
  %151 = phi i32 [ %114, %113 ], [ %146, %142 ]
  %152 = icmp slt i32 %149, 48
  br i1 %152, label %153, label %169, !prof !133

153:                                              ; preds = %148
  %154 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %155 = load ptr, ptr %105, align 8, !tbaa !71
  %156 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %154, ptr noundef nonnull @.str, i32 noundef 820, i32 noundef 157, ptr noundef %155, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %157)
          to label %158 unwind label %159

158:                                              ; preds = %153
  tail call void @__cxa_throw(ptr nonnull %154, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

159:                                              ; preds = %153
  %160 = landingpad { ptr, i32 }
          cleanup
  br label %281

161:                                              ; preds = %104
  %162 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %163 = load ptr, ptr %105, align 8, !tbaa !71
  %164 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %162, ptr noundef nonnull @.str, i32 noundef 823, i32 noundef 153, ptr noundef %163, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %165)
          to label %166 unwind label %167

166:                                              ; preds = %161
  tail call void @__cxa_throw(ptr nonnull %162, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

167:                                              ; preds = %161
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %281

169:                                              ; preds = %148
  %170 = icmp eq i32 %151, 44
  br i1 %170, label %171, label %247, !prof !134

171:                                              ; preds = %169
  %172 = load i32, ptr %99, align 8, !tbaa !66
  %173 = icmp slt i32 %172, %102
  br i1 %173, label %182, label %174, !prof !135

174:                                              ; preds = %171
  %175 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %176 = load ptr, ptr %105, align 8, !tbaa !71
  %177 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %175, ptr noundef nonnull @.str, i32 noundef 831, i32 noundef 155, ptr noundef %176, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %178)
          to label %179 unwind label %180

179:                                              ; preds = %174
  tail call void @__cxa_throw(ptr nonnull %175, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

180:                                              ; preds = %174
  %181 = landingpad { ptr, i32 }
          cleanup
  br label %281

182:                                              ; preds = %171
  %183 = add nsw i32 %172, 1
  store i32 %183, ptr %99, align 8, !tbaa !66
  %184 = sext i32 %172 to i64
  %185 = getelementptr inbounds i16, ptr %106, i64 %184
  %186 = load i16, ptr %185, align 2, !tbaa !77
  %187 = zext i16 %186 to i32
  %188 = add i16 %186, -48
  %189 = icmp ult i16 %188, 10
  br i1 %189, label %190, label %247, !prof !135

190:                                              ; preds = %182
  %191 = load i32, ptr %99, align 8, !tbaa !66
  %192 = add nsw i32 %187, -48
  %193 = icmp slt i32 %191, %102
  br i1 %193, label %194, label %224, !prof !93

194:                                              ; preds = %190
  %195 = sext i32 %191 to i64
  %196 = add nsw i64 %195, 1
  %197 = getelementptr inbounds i16, ptr %106, i64 %195
  %198 = load i16, ptr %197, align 2, !tbaa !77
  %199 = zext i16 %198 to i32
  %200 = add i16 %198, -48
  %201 = icmp ult i16 %200, 10
  br i1 %201, label %209, label %218, !prof !131

202:                                              ; preds = %209
  %203 = add nsw i64 %211, 1
  %204 = getelementptr inbounds i16, ptr %106, i64 %211
  %205 = load i16, ptr %204, align 2, !tbaa !77
  %206 = zext i16 %205 to i32
  %207 = add i16 %205, -48
  %208 = icmp ult i16 %207, 10
  br i1 %208, label %209, label %218, !prof !131, !llvm.loop !136

209:                                              ; preds = %194, %202
  %210 = phi i32 [ %206, %202 ], [ %199, %194 ]
  %211 = phi i64 [ %203, %202 ], [ %196, %194 ]
  %212 = phi i32 [ %215, %202 ], [ %192, %194 ]
  %213 = mul nsw i32 %212, 10
  %214 = add nsw i32 %213, %210
  %215 = add nsw i32 %214, -48
  %216 = trunc i64 %211 to i32
  %217 = icmp eq i32 %102, %216
  br i1 %217, label %218, label %202, !prof !110, !llvm.loop !136

218:                                              ; preds = %209, %202, %194
  %219 = phi i64 [ %196, %194 ], [ %211, %209 ], [ %203, %202 ]
  %220 = phi i32 [ %187, %194 ], [ %214, %202 ], [ %214, %209 ]
  %221 = phi i32 [ %192, %194 ], [ %215, %202 ], [ %215, %209 ]
  %222 = phi i32 [ %199, %194 ], [ %210, %209 ], [ %206, %202 ]
  %223 = trunc i64 %219 to i32
  store i32 %223, ptr %99, align 8, !tbaa !66
  br label %224

224:                                              ; preds = %218, %190
  %225 = phi i32 [ %187, %190 ], [ %220, %218 ]
  %226 = phi i32 [ %192, %190 ], [ %221, %218 ]
  %227 = phi i32 [ %187, %190 ], [ %222, %218 ]
  %228 = icmp slt i32 %225, 48
  br i1 %228, label %229, label %237, !prof !110

229:                                              ; preds = %224
  %230 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %231 = load ptr, ptr %105, align 8, !tbaa !71
  %232 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %230, ptr noundef nonnull @.str, i32 noundef 844, i32 noundef 157, ptr noundef %231, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %233)
          to label %234 unwind label %235

234:                                              ; preds = %229
  tail call void @__cxa_throw(ptr nonnull %230, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

235:                                              ; preds = %229
  %236 = landingpad { ptr, i32 }
          cleanup
  br label %281

237:                                              ; preds = %224
  %238 = icmp sgt i32 %149, %225
  br i1 %238, label %239, label %247, !prof !110

239:                                              ; preds = %237
  %240 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %241 = load ptr, ptr %105, align 8, !tbaa !71
  %242 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %240, ptr noundef nonnull @.str, i32 noundef 846, i32 noundef 156, ptr noundef %241, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %243)
          to label %244 unwind label %245

244:                                              ; preds = %239
  tail call void @__cxa_throw(ptr nonnull %240, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

245:                                              ; preds = %239
  %246 = landingpad { ptr, i32 }
          cleanup
  br label %281

247:                                              ; preds = %182, %237, %169
  %248 = phi i32 [ %226, %237 ], [ %150, %169 ], [ -1, %182 ]
  %249 = phi i32 [ %227, %237 ], [ %151, %169 ], [ %187, %182 ]
  %250 = icmp eq i32 %249, 125
  br i1 %250, label %259, label %251, !prof !130

251:                                              ; preds = %247
  %252 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %253 = load ptr, ptr %105, align 8, !tbaa !71
  %254 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %252, ptr noundef nonnull @.str, i32 noundef 854, i32 noundef 154, ptr noundef %253, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %255)
          to label %256 unwind label %257

256:                                              ; preds = %251
  tail call void @__cxa_throw(ptr nonnull %252, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

257:                                              ; preds = %251
  %258 = landingpad { ptr, i32 }
          cleanup
  br label %281

259:                                              ; preds = %247
  %260 = load i32, ptr %99, align 8, !tbaa !66
  %261 = load ptr, ptr %0, align 8, !tbaa !57
  %262 = getelementptr inbounds ptr, ptr %261, i64 2
  %263 = load ptr, ptr %262, align 8
  %264 = tail call noundef zeroext i1 %263(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %260), !prof !137
  %265 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %266 = load ptr, ptr %265, align 8, !tbaa !75
  br i1 %264, label %267, label %271, !prof !133

267:                                              ; preds = %259
  %268 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(128) %266, ptr noundef %77, i1 noundef zeroext true)
  %269 = load i32, ptr %99, align 8, !tbaa !66
  %270 = add nsw i32 %269, 1
  store i32 %270, ptr %99, align 8, !tbaa !66
  br label %273

271:                                              ; preds = %259
  %272 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(128) %266, ptr noundef %77, i1 noundef zeroext false)
  br label %273

273:                                              ; preds = %271, %267
  %274 = phi ptr [ %268, %267 ], [ %272, %271 ]
  %275 = load ptr, ptr %274, align 8, !tbaa !57
  %276 = getelementptr inbounds ptr, ptr %275, i64 10
  %277 = load ptr, ptr %276, align 8
  tail call void %277(ptr noundef nonnull align 8 dereferenceable(24) %274, i32 noundef %150), !prof !138
  %278 = load ptr, ptr %274, align 8, !tbaa !57
  %279 = getelementptr inbounds ptr, ptr %278, i64 11
  %280 = load ptr, ptr %279, align 8
  tail call void %280(ptr noundef nonnull align 8 dereferenceable(24) %274, i32 noundef %248), !prof !139
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %284

281:                                              ; preds = %257, %245, %235, %180, %167, %159
  %282 = phi ptr [ %252, %257 ], [ %240, %245 ], [ %230, %235 ], [ %175, %180 ], [ %162, %167 ], [ %154, %159 ]
  %283 = phi { ptr, i32 } [ %258, %257 ], [ %246, %245 ], [ %236, %235 ], [ %181, %180 ], [ %168, %167 ], [ %160, %159 ]
  tail call void @__cxa_free_exception(ptr %282) #14
  resume { ptr, i32 } %283

284:                                              ; preds = %79, %84, %89, %94, %98, %273, %76, %71, %66, %61, %56, %51, %46, %41, %34, %29, %24, %19, %14, %9, %4
  %285 = phi ptr [ %75, %71 ], [ %70, %66 ], [ %65, %61 ], [ %60, %56 ], [ %55, %51 ], [ %50, %46 ], [ %45, %41 ], [ %37, %34 ], [ %33, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %9 ], [ %8, %4 ], [ %93, %89 ], [ %88, %84 ], [ %83, %79 ], [ %77, %76 ], [ %274, %273 ], [ %77, %98 ], [ %77, %94 ]
  ret ptr %285
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser12processCaretEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory12getLineBeginEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory12getLineBeginEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser13processDollarEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory10getLineEndEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory10getLineEndEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser11processLookEt(ptr noundef nonnull align 8 dereferenceable(72) %0, i16 noundef zeroext %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  %6 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory10createLookEtPNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(128) %4, i16 noundef zeroext %1, ptr noundef %5)
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 8, !tbaa !70
  %9 = icmp eq i16 %8, 7
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 401, i32 noundef 126, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #14
  resume { ptr, i32 } %16

17:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret ptr %6
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory10createLookEtPNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(128), i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_AEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14getStringBeginEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory14getStringBeginEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_ZEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory13getStringEnd2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory13getStringEnd2Ev(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_zEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory12getStringEndEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory12getStringEndEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_bEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11getWordEdgeEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11getWordEdgeEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_BEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14getNotWordEdgeEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory14getNotWordEdgeEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser21processBacksolidus_ltEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory12getWordBeginEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory12getWordBeginEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser21processBacksolidus_gtEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory10getWordEndEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory10getWordEndEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser11processStarEPNS_5TokenE(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 8, !tbaa !70
  %5 = icmp eq i16 %4, 5
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef %1, i1 noundef zeroext %5)
  ret ptr %10
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser11processPlusEPNS_5TokenE(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 8, !tbaa !70
  %5 = icmp eq i16 %4, 5
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef %1, i1 noundef zeroext true)
  %10 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory12createConcatEPNS_5TokenES2_(ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef %1, ptr noundef %9)
  br label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(128) %13, ptr noundef %1, i1 noundef zeroext false)
  %15 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory12createConcatEPNS_5TokenES2_(ptr noundef nonnull align 8 dereferenceable(128) %13, ptr noundef %1, ptr noundef %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi ptr [ %10, %6 ], [ %15, %11 ]
  ret ptr %17
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory12createConcatEPNS_5TokenES2_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser15processQuestionEPNS_5TokenE(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createUnionEb(ptr noundef nonnull align 8 dereferenceable(128) %4, i1 noundef zeroext false)
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !70
  %8 = icmp eq i16 %7, 5
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %10 = load ptr, ptr %3, align 8, !tbaa !75
  %11 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createTokenEt(ptr noundef nonnull align 8 dereferenceable(128) %10, i16 noundef zeroext 7)
  %12 = load ptr, ptr %3, align 8, !tbaa !75
  %13 = load ptr, ptr %5, align 8, !tbaa !57
  %14 = getelementptr inbounds ptr, ptr %13, i64 18
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %11, ptr noundef %12)
  br label %23

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8, !tbaa !75
  %18 = load ptr, ptr %5, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 18
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %1, ptr noundef %17)
  %21 = load ptr, ptr %3, align 8, !tbaa !75
  %22 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createTokenEt(ptr noundef nonnull align 8 dereferenceable(128) %21, i16 noundef zeroext 7)
  br label %23

23:                                               ; preds = %16, %9
  %24 = phi ptr [ %22, %16 ], [ %1, %9 ]
  %25 = load ptr, ptr %3, align 8, !tbaa !75
  %26 = load ptr, ptr %5, align 8, !tbaa !57
  %27 = getelementptr inbounds ptr, ptr %26, i64 18
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %24, ptr noundef %25)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser12processParenEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !67
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
  %8 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory17createParenthesisEPNS_5TokenEi(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef %7, i32 noundef %3)
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %10 = load i16, ptr %9, align 8, !tbaa !70
  %11 = icmp eq i16 %10, 7
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 518, i32 noundef 126, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #14
  resume { ptr, i32 } %18

19:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret ptr %8
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory17createParenthesisEPNS_5TokenEi(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser13processParen2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  %5 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory17createParenthesisEPNS_5TokenEi(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4, i32 noundef 0)
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !70
  %8 = icmp eq i16 %7, 7
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 531, i32 noundef 126, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #14
  resume { ptr, i32 } %15

16:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser16processConditionEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !66
  %4 = add nsw i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 541, i32 noundef 129, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #14
  br label %155

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = sext i32 %3 to i64
  %19 = getelementptr inbounds i16, ptr %17, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !77
  %21 = add i16 %20, -49
  %22 = icmp ult i16 %21, 9
  br i1 %22, label %23, label %83

23:                                               ; preds = %15
  %24 = zext nneg i16 %20 to i32
  %25 = add nsw i32 %24, -48
  %26 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 2
  store i8 1, ptr %26, align 8, !tbaa !64
  %27 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %23
  %31 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %32)
  %34 = load ptr, ptr %31, align 8, !tbaa !59
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE, i64 0, inrange i32 0, i64 2), ptr %33, align 8, !tbaa !57
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %33, i64 0, i32 1
  store i8 1, ptr %35, align 8, !tbaa !140
  %36 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %33, i64 0, i32 2
  store i32 0, ptr %36, align 4, !tbaa !85
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %33, i64 0, i32 3
  store i32 8, ptr %37, align 8, !tbaa !141
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %33, i64 0, i32 4
  store ptr null, ptr %38, align 8, !tbaa !113
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %33, i64 0, i32 5
  store ptr %34, ptr %39, align 8, !tbaa !112
  %40 = load ptr, ptr %34, align 8, !tbaa !57
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef 64)
          to label %44 unwind label %52

44:                                               ; preds = %30
  store ptr %43, ptr %38, align 8, !tbaa !113
  br label %45

45:                                               ; preds = %44, %45
  %46 = phi i64 [ 0, %44 ], [ %49, %45 ]
  %47 = load ptr, ptr %38, align 8, !tbaa !113
  %48 = getelementptr inbounds ptr, ptr %47, i64 %46
  store ptr null, ptr %48, align 8, !tbaa !114
  %49 = add nuw nsw i64 %46, 1
  %50 = icmp eq i64 %49, 8
  br i1 %50, label %51, label %45, !llvm.loop !142

51:                                               ; preds = %45
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE, i64 0, inrange i32 0, i64 2), ptr %33, align 8, !tbaa !57
  store ptr %33, ptr %27, align 8, !tbaa !73
  br label %54

52:                                               ; preds = %30
  %53 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %33, ptr noundef %32) #14
  br label %155

54:                                               ; preds = %51, %23
  %55 = load ptr, ptr %27, align 8, !tbaa !73
  %56 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !59
  %58 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %57)
  %59 = load i32, ptr %2, align 8, !tbaa !66
  store i32 %25, ptr %58, align 4, !tbaa !50
  %60 = getelementptr inbounds %"class.xercesc_2_7::RegxParser::ReferencePosition", ptr %58, i64 0, i32 1
  store i32 %59, ptr %60, align 4, !tbaa !55
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %55, i32 noundef 1)
  %61 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %55, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !113
  %63 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %55, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !85
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %62, i64 %65
  store ptr %58, ptr %66, align 8, !tbaa !114
  %67 = add i32 %64, 1
  store i32 %67, ptr %63, align 4, !tbaa !85
  %68 = load i32, ptr %2, align 8, !tbaa !66
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %2, align 8, !tbaa !66
  %70 = load ptr, ptr %16, align 8, !tbaa !71
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !77
  %74 = icmp eq i16 %73, 41
  br i1 %74, label %81, label %75

75:                                               ; preds = %54
  %76 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %77 = load ptr, ptr %56, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %76, ptr noundef nonnull @.str, i32 noundef 560, i32 noundef 126, ptr noundef %77)
          to label %78 unwind label %79

78:                                               ; preds = %75
  tail call void @__cxa_throw(ptr nonnull %76, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %76) #14
  br label %155

81:                                               ; preds = %54
  %82 = add nsw i32 %68, 2
  store i32 %82, ptr %2, align 8, !tbaa !66
  br label %109

83:                                               ; preds = %15
  %84 = icmp eq i16 %20, 63
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  %86 = add nsw i32 %3, -1
  store i32 %86, ptr %2, align 8, !tbaa !66
  br label %87

87:                                               ; preds = %85, %83
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %88 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser11parseFactorEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %89 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %88, i64 0, i32 1
  %90 = load i16, ptr %89, align 8, !tbaa !143
  switch i16 %90, label %102 [
    i16 20, label %109
    i16 21, label %109
    i16 22, label %109
    i16 23, label %109
    i16 8, label %91
  ]

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %93 = load i16, ptr %92, align 8, !tbaa !70
  %94 = icmp eq i16 %93, 7
  br i1 %94, label %109, label %95

95:                                               ; preds = %91
  %96 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %97 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %96, ptr noundef nonnull @.str, i32 noundef 580, i32 noundef 126, ptr noundef %98)
          to label %99 unwind label %100

99:                                               ; preds = %95
  tail call void @__cxa_throw(ptr nonnull %96, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

100:                                              ; preds = %95
  %101 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %96) #14
  br label %155

102:                                              ; preds = %87
  %103 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %104 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr noundef nonnull @.str, i32 noundef 583, i32 noundef 130, ptr noundef %105)
          to label %106 unwind label %107

106:                                              ; preds = %102
  tail call void @__cxa_throw(ptr nonnull %103, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

107:                                              ; preds = %102
  %108 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %103) #14
  br label %155

109:                                              ; preds = %87, %87, %87, %87, %91, %81
  %110 = phi i32 [ %25, %81 ], [ -1, %91 ], [ -1, %87 ], [ -1, %87 ], [ -1, %87 ], [ -1, %87 ]
  %111 = phi ptr [ null, %81 ], [ %88, %91 ], [ %88, %87 ], [ %88, %87 ], [ %88, %87 ], [ %88, %87 ]
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %112 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  %113 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %112, i64 0, i32 1
  %114 = load i16, ptr %113, align 8, !tbaa !143
  %115 = icmp eq i16 %114, 2
  br i1 %115, label %116, label %138

116:                                              ; preds = %109
  %117 = load ptr, ptr %112, align 8, !tbaa !57
  %118 = getelementptr inbounds ptr, ptr %117, i64 3
  %119 = load ptr, ptr %118, align 8
  %120 = tail call noundef i32 %119(ptr noundef nonnull align 8 dereferenceable(24) %112)
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %124 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %123, ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 131, ptr noundef %125)
          to label %126 unwind label %127

126:                                              ; preds = %122
  tail call void @__cxa_throw(ptr nonnull %123, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

127:                                              ; preds = %122
  %128 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %123) #14
  br label %155

129:                                              ; preds = %116
  %130 = load ptr, ptr %112, align 8, !tbaa !57
  %131 = getelementptr inbounds ptr, ptr %130, i64 2
  %132 = load ptr, ptr %131, align 8
  %133 = tail call noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(24) %112, i32 noundef 1)
  %134 = load ptr, ptr %112, align 8, !tbaa !57
  %135 = getelementptr inbounds ptr, ptr %134, i64 2
  %136 = load ptr, ptr %135, align 8
  %137 = tail call noundef ptr %136(ptr noundef nonnull align 8 dereferenceable(24) %112, i32 noundef 0)
  br label %138

138:                                              ; preds = %129, %109
  %139 = phi ptr [ %137, %129 ], [ %112, %109 ]
  %140 = phi ptr [ %133, %129 ], [ null, %109 ]
  %141 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %142 = load i16, ptr %141, align 8, !tbaa !70
  %143 = icmp eq i16 %142, 7
  br i1 %143, label %151, label %144

144:                                              ; preds = %138
  %145 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %146 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %145, ptr noundef nonnull @.str, i32 noundef 601, i32 noundef 126, ptr noundef %147)
          to label %148 unwind label %149

148:                                              ; preds = %144
  tail call void @__cxa_throw(ptr nonnull %145, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

149:                                              ; preds = %144
  %150 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %145) #14
  br label %155

151:                                              ; preds = %138
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %152 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %153 = load ptr, ptr %152, align 8, !tbaa !75
  %154 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory15createConditionEiPNS_5TokenES2_S2_(ptr noundef nonnull align 8 dereferenceable(128) %153, i32 noundef %110, ptr noundef %111, ptr noundef %139, ptr noundef %140)
  ret ptr %154

155:                                              ; preds = %52, %79, %100, %107, %149, %127, %13
  %156 = phi { ptr, i32 } [ %14, %13 ], [ %80, %79 ], [ %53, %52 ], [ %108, %107 ], [ %101, %100 ], [ %128, %127 ], [ %150, %149 ]
  resume { ptr, i32 } %156
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_712TokenFactory15createConditionEiPNS_5TokenES2_S2_(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser16processModifiersEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 4
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %2, align 8, !tbaa !66
  %5 = load i32, ptr %3, align 4, !tbaa !69
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  br label %13

9:                                                ; preds = %30
  %10 = load i32, ptr %2, align 8, !tbaa !66
  %11 = load i32, ptr %3, align 4, !tbaa !69
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7, %9
  %14 = phi i32 [ %4, %7 ], [ %10, %9 ]
  %15 = phi i32 [ 0, %7 ], [ %31, %9 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !71
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !77
  %20 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression14getOptionValueEt(i16 noundef zeroext %19)
  %21 = load ptr, ptr %8, align 8, !tbaa !71
  %22 = load i32, ptr %2, align 8, !tbaa !66
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, ptr %21, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !77
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %13
  %28 = or i32 %20, %15
  %29 = add nsw i32 %22, 1
  store i32 %29, ptr %2, align 8, !tbaa !66
  br label %30

30:                                               ; preds = %13, %27
  %31 = phi i32 [ %28, %27 ], [ %15, %13 ]
  br i1 %26, label %32, label %9

32:                                               ; preds = %30, %9
  %33 = zext i16 %25 to i32
  br label %34

34:                                               ; preds = %32, %1
  %35 = phi i32 [ -1, %1 ], [ %33, %32 ]
  %36 = phi i32 [ 0, %1 ], [ %31, %32 ]
  %37 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 7
  %38 = load i32, ptr %2, align 8, !tbaa !66
  %39 = load i32, ptr %37, align 4, !tbaa !69
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %43 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %42, ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 127, ptr noundef %44)
          to label %45 unwind label %46

45:                                               ; preds = %41
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

46:                                               ; preds = %41
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %131

48:                                               ; preds = %34
  %49 = icmp eq i32 %35, 45
  br i1 %49, label %50, label %94

50:                                               ; preds = %48
  %51 = add nsw i32 %38, 1
  store i32 %51, ptr %2, align 8, !tbaa !66
  %52 = load i32, ptr %37, align 4, !tbaa !69
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  br label %60

56:                                               ; preds = %77
  %57 = load i32, ptr %2, align 8, !tbaa !66
  %58 = load i32, ptr %37, align 4, !tbaa !69
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54, %56
  %61 = phi i32 [ %51, %54 ], [ %57, %56 ]
  %62 = phi i32 [ 0, %54 ], [ %78, %56 ]
  %63 = load ptr, ptr %55, align 8, !tbaa !71
  %64 = sext i32 %61 to i64
  %65 = getelementptr inbounds i16, ptr %63, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !77
  %67 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression14getOptionValueEt(i16 noundef zeroext %66)
  %68 = load ptr, ptr %55, align 8, !tbaa !71
  %69 = load i32, ptr %2, align 8, !tbaa !66
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16, ptr %68, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !77
  %73 = icmp eq i32 %67, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %60
  %75 = or i32 %67, %62
  %76 = add nsw i32 %69, 1
  store i32 %76, ptr %2, align 8, !tbaa !66
  br label %77

77:                                               ; preds = %60, %74
  %78 = phi i32 [ %75, %74 ], [ %62, %60 ]
  br i1 %73, label %79, label %56

79:                                               ; preds = %77, %56
  %80 = zext i16 %72 to i32
  br label %81

81:                                               ; preds = %79, %50
  %82 = phi i32 [ 45, %50 ], [ %80, %79 ]
  %83 = phi i32 [ 0, %50 ], [ %78, %79 ]
  %84 = load i32, ptr %2, align 8, !tbaa !66
  %85 = load i32, ptr %37, align 4, !tbaa !69
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %81
  %88 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %89 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %88, ptr noundef nonnull @.str, i32 noundef 647, i32 noundef 127, ptr noundef %90)
          to label %91 unwind label %92

91:                                               ; preds = %87
  tail call void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

92:                                               ; preds = %87
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %131

94:                                               ; preds = %81, %48
  %95 = phi i32 [ %82, %81 ], [ %35, %48 ]
  %96 = phi i32 [ %83, %81 ], [ 0, %48 ]
  switch i32 %95, label %122 [
    i32 58, label %97
    i32 41, label %115
  ]

97:                                               ; preds = %94
  %98 = load i32, ptr %2, align 8, !tbaa !66
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %2, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %100 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !75
  %102 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  %103 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory19createModifierGroupEPNS_5TokenEii(ptr noundef nonnull align 8 dereferenceable(128) %101, ptr noundef %102, i32 noundef %36, i32 noundef %96)
  %104 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %105 = load i16, ptr %104, align 8, !tbaa !70
  %106 = icmp eq i16 %105, 7
  br i1 %106, label %114, label %107

107:                                              ; preds = %97
  %108 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %109 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr noundef nonnull @.str, i32 noundef 659, i32 noundef 126, ptr noundef %110)
          to label %111 unwind label %112

111:                                              ; preds = %107
  tail call void @__cxa_throw(ptr nonnull %108, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

112:                                              ; preds = %107
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %131

114:                                              ; preds = %97
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %129

115:                                              ; preds = %94
  %116 = load i32, ptr %2, align 8, !tbaa !66
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %2, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %118 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %119 = load ptr, ptr %118, align 8, !tbaa !75
  %120 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  %121 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory19createModifierGroupEPNS_5TokenEii(ptr noundef nonnull align 8 dereferenceable(128) %119, ptr noundef %120, i32 noundef %36, i32 noundef %96)
  br label %129

122:                                              ; preds = %94
  %123 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %124 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %123, ptr noundef nonnull @.str, i32 noundef 670, i32 noundef 128, ptr noundef %125)
          to label %126 unwind label %127

126:                                              ; preds = %122
  tail call void @__cxa_throw(ptr nonnull %123, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

127:                                              ; preds = %122
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %131

129:                                              ; preds = %115, %114
  %130 = phi ptr [ %103, %114 ], [ %121, %115 ]
  ret ptr %130

131:                                              ; preds = %112, %127, %92, %46
  %132 = phi ptr [ %108, %112 ], [ %123, %127 ], [ %88, %92 ], [ %42, %46 ]
  %133 = phi { ptr, i32 } [ %113, %112 ], [ %128, %127 ], [ %93, %92 ], [ %47, %46 ]
  tail call void @__cxa_free_exception(ptr %132) #14
  resume { ptr, i32 } %133
}

declare noundef i32 @_ZN11xercesc_2_717RegularExpression14getOptionValueEt(i16 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_712TokenFactory19createModifierGroupEPNS_5TokenEii(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser18processIndependentEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  %5 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory10createLookEtPNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(128) %3, i16 noundef zeroext 24, ptr noundef %4)
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !70
  %8 = icmp eq i16 %7, 7
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 684, i32 noundef 126, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #14
  resume { ptr, i32 } %15

16:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_cEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = add nsw i32 %3, 1
  store i32 %10, ptr %2, align 8, !tbaa !66
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds i16, ptr %9, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !77
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 65504
  %16 = icmp eq i32 %15, 64
  br i1 %16, label %24, label %17

17:                                               ; preds = %7, %1
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 697, i32 noundef 132, ptr noundef %20)
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #14
  resume { ptr, i32 } %23

24:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %25 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = add nsw i32 %14, -64
  %28 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory10createCharEjb(ptr noundef nonnull align 8 dereferenceable(128) %26, i32 noundef %27, i1 noundef zeroext false)
  ret ptr %28
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory10createCharEjb(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_CEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !49 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_iEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory10createCharEjb(ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef 105, i1 noundef zeroext false)
  ret ptr %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_IEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !49 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_gEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory18getGraphemePatternEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory18getGraphemePatternEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20processBacksolidus_XEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory29getCombiningCharacterSequenceEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory29getCombiningCharacterSequenceEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20processBackReferenceEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !90
  %4 = add nsw i32 %3, -48
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory19createBackReferenceEi(ptr noundef nonnull align 8 dereferenceable(128) %6, i32 noundef %4)
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 2
  store i8 1, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %14)
  %16 = load ptr, ptr %13, align 8, !tbaa !59
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE, i64 0, inrange i32 0, i64 2), ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %15, i64 0, i32 1
  store i8 1, ptr %17, align 8, !tbaa !140
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %15, i64 0, i32 2
  store i32 0, ptr %18, align 4, !tbaa !85
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %15, i64 0, i32 3
  store i32 8, ptr %19, align 8, !tbaa !141
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %15, i64 0, i32 4
  store ptr null, ptr %20, align 8, !tbaa !113
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %15, i64 0, i32 5
  store ptr %16, ptr %21, align 8, !tbaa !112
  %22 = load ptr, ptr %16, align 8, !tbaa !57
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 64)
          to label %26 unwind label %34

26:                                               ; preds = %12
  store ptr %25, ptr %20, align 8, !tbaa !113
  br label %27

27:                                               ; preds = %26, %27
  %28 = phi i64 [ 0, %26 ], [ %31, %27 ]
  %29 = load ptr, ptr %20, align 8, !tbaa !113
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  store ptr null, ptr %30, align 8, !tbaa !114
  %31 = add nuw nsw i64 %28, 1
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %33, label %27, !llvm.loop !142

33:                                               ; preds = %27
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE, i64 0, inrange i32 0, i64 2), ptr %15, align 8, !tbaa !57
  store ptr %15, ptr %9, align 8, !tbaa !73
  br label %36

34:                                               ; preds = %12
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %15, ptr noundef %14) #14
  resume { ptr, i32 } %35

36:                                               ; preds = %33, %1
  %37 = load ptr, ptr %9, align 8, !tbaa !73
  %38 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  %40 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %39)
  %41 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !66
  %43 = add nsw i32 %42, -2
  store i32 %4, ptr %40, align 4, !tbaa !50
  %44 = getelementptr inbounds %"class.xercesc_2_7::RegxParser::ReferencePosition", ptr %40, i64 0, i32 1
  store i32 %43, ptr %44, align 4, !tbaa !55
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %37, i32 noundef 1)
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %37, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !113
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %37, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !85
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %46, i64 %49
  store ptr %40, ptr %50, align 8, !tbaa !114
  %51 = add i32 %48, 1
  store i32 %51, ptr %47, align 4, !tbaa !85
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret ptr %7
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory19createBackReferenceEi(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser9parseAtomEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 8, !tbaa !70
  switch i16 %4, label %135 [
    i16 6, label %5
    i16 13, label %10
    i16 23, label %15
    i16 22, label %20
    i16 18, label %25
    i16 8, label %30
    i16 9, label %34
    i16 19, label %39
    i16 10, label %44
    i16 0, label %121
  ], !prof !145

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !57
  %7 = getelementptr inbounds ptr, ptr %6, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(72) %0), !prof !146
  br label %142

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !57
  %12 = getelementptr inbounds ptr, ptr %11, i64 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

15:                                               ; preds = %1
  %16 = load ptr, ptr %0, align 8, !tbaa !57
  %17 = getelementptr inbounds ptr, ptr %16, i64 26
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

20:                                               ; preds = %1
  %21 = load ptr, ptr %0, align 8, !tbaa !57
  %22 = getelementptr inbounds ptr, ptr %21, i64 27
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

25:                                               ; preds = %1
  %26 = load ptr, ptr %0, align 8, !tbaa !57
  %27 = getelementptr inbounds ptr, ptr %26, i64 28
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

30:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %31 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !75
  %33 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory6getDotEv(ptr noundef nonnull align 8 dereferenceable(128) %32)
  br label %142

34:                                               ; preds = %1
  %35 = load ptr, ptr %0, align 8, !tbaa !57
  %36 = getelementptr inbounds ptr, ptr %35, i64 29
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true), !prof !147
  br label %142

39:                                               ; preds = %1
  %40 = load ptr, ptr %0, align 8, !tbaa !57
  %41 = getelementptr inbounds ptr, ptr %40, i64 30
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

44:                                               ; preds = %1
  %45 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !90
  switch i32 %46, label %97 [
    i32 100, label %47
    i32 68, label %47
    i32 119, label %47
    i32 87, label %47
    i32 115, label %47
    i32 83, label %47
    i32 99, label %52
    i32 67, label %57
    i32 105, label %62
    i32 73, label %67
    i32 103, label %72
    i32 88, label %77
    i32 48, label %82
    i32 49, label %82
    i32 50, label %82
    i32 51, label %82
    i32 52, label %82
    i32 53, label %82
    i32 54, label %82
    i32 55, label %82
    i32 56, label %82
    i32 57, label %82
    i32 112, label %87
    i32 80, label %87
  ], !prof !148

47:                                               ; preds = %44, %44, %44, %44, %44, %44
  %48 = load ptr, ptr %0, align 8, !tbaa !57
  %49 = getelementptr inbounds ptr, ptr %48, i64 32
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %46), !prof !149
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

52:                                               ; preds = %44
  %53 = load ptr, ptr %0, align 8, !tbaa !57
  %54 = getelementptr inbounds ptr, ptr %53, i64 14
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

57:                                               ; preds = %44
  %58 = load ptr, ptr %0, align 8, !tbaa !57
  %59 = getelementptr inbounds ptr, ptr %58, i64 15
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

62:                                               ; preds = %44
  %63 = load ptr, ptr %0, align 8, !tbaa !57
  %64 = getelementptr inbounds ptr, ptr %63, i64 16
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

67:                                               ; preds = %44
  %68 = load ptr, ptr %0, align 8, !tbaa !57
  %69 = getelementptr inbounds ptr, ptr %68, i64 17
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

72:                                               ; preds = %44
  %73 = load ptr, ptr %0, align 8, !tbaa !57
  %74 = getelementptr inbounds ptr, ptr %73, i64 18
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

77:                                               ; preds = %44
  %78 = load ptr, ptr %0, align 8, !tbaa !57
  %79 = getelementptr inbounds ptr, ptr %78, i64 19
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

82:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %83 = load ptr, ptr %0, align 8, !tbaa !57
  %84 = getelementptr inbounds ptr, ptr %83, i64 20
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

87:                                               ; preds = %44, %44
  %88 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser21processBacksolidus_pPEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %46)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %119

90:                                               ; preds = %87
  %91 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %92 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %91, ptr noundef nonnull @.str, i32 noundef 941, i32 noundef 136, ptr noundef %93)
          to label %94 unwind label %95

94:                                               ; preds = %90
  tail call void @__cxa_throw(ptr nonnull %91, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

95:                                               ; preds = %90
  %96 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %91) #14
  br label %144

97:                                               ; preds = %44
  %98 = load ptr, ptr %0, align 8, !tbaa !57
  %99 = getelementptr inbounds ptr, ptr %98, i64 3
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef i32 %100(ptr noundef nonnull align 8 dereferenceable(72) %0), !prof !150
  %102 = icmp slt i32 %101, 65536
  br i1 %102, label %103, label %107, !prof !135

103:                                              ; preds = %97
  %104 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %105 = load ptr, ptr %104, align 8, !tbaa !75
  %106 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory10createCharEjb(ptr noundef nonnull align 8 dereferenceable(128) %105, i32 noundef %101, i1 noundef zeroext false)
  br label %119

107:                                              ; preds = %97
  %108 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !59
  %110 = tail call noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef %101, ptr noundef %109)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %111 = load ptr, ptr %108, align 8, !tbaa !59
  store ptr %110, ptr %2, align 8, !tbaa !151
  %112 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %111, ptr %112, align 8, !tbaa !153
  %113 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %114 = load ptr, ptr %113, align 8, !tbaa !75
  %115 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory12createStringEPKt(ptr noundef nonnull align 8 dereferenceable(128) %114, ptr noundef %110)
          to label %116 unwind label %117

116:                                              ; preds = %107
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %119

117:                                              ; preds = %107
  %118 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %144

119:                                              ; preds = %103, %116, %87
  %120 = phi ptr [ %88, %87 ], [ %106, %103 ], [ %115, %116 ]
  call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

121:                                              ; preds = %1
  %122 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %123 = load i32, ptr %122, align 4, !tbaa !90
  switch i32 %123, label %131 [
    i32 123, label %124
    i32 125, label %124
    i32 93, label %124
  ], !prof !154

124:                                              ; preds = %121, %121, %121
  %125 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %126 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %125, ptr noundef nonnull @.str, i32 noundef 967, i32 noundef 135, ptr noundef %127)
          to label %128 unwind label %129

128:                                              ; preds = %124
  tail call void @__cxa_throw(ptr nonnull %125, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

129:                                              ; preds = %124
  %130 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %125) #14
  br label %144

131:                                              ; preds = %121
  %132 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %133 = load ptr, ptr %132, align 8, !tbaa !75
  %134 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory10createCharEjb(ptr noundef nonnull align 8 dereferenceable(128) %133, i32 noundef %123, i1 noundef zeroext false)
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %142

135:                                              ; preds = %1
  %136 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %137 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %136, ptr noundef nonnull @.str, i32 noundef 973, i32 noundef 135, ptr noundef %138)
          to label %139 unwind label %140

139:                                              ; preds = %135
  tail call void @__cxa_throw(ptr nonnull %136, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

140:                                              ; preds = %135
  %141 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %136) #14
  br label %144

142:                                              ; preds = %30, %119, %131, %82, %77, %72, %67, %62, %57, %52, %47, %39, %34, %25, %20, %15, %10, %5
  %143 = phi ptr [ %86, %82 ], [ %81, %77 ], [ %76, %72 ], [ %71, %67 ], [ %66, %62 ], [ %61, %57 ], [ %56, %52 ], [ %51, %47 ], [ %43, %39 ], [ %38, %34 ], [ %29, %25 ], [ %24, %20 ], [ %19, %15 ], [ %14, %10 ], [ %9, %5 ], [ %134, %131 ], [ %120, %119 ], [ %33, %30 ]
  ret ptr %143

144:                                              ; preds = %140, %129, %117, %95
  %145 = phi { ptr, i32 } [ %141, %140 ], [ %130, %129 ], [ %118, %117 ], [ %96, %95 ]
  resume { ptr, i32 } %145
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory6getDotEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser21processBacksolidus_pPEi(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %5 = load i16, ptr %4, align 8, !tbaa !70
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 123
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 985, i32 noundef 133, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #14
  br label %53

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE(ptr noundef %22, i16 noundef zeroext 125, i32 noundef %20, ptr noundef %24)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %29 = load ptr, ptr %23, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 134, ptr noundef %29)
          to label %30 unwind label %31

30:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %28) #14
  br label %53

33:                                               ; preds = %18
  %34 = add nuw nsw i32 %25, 1
  store i32 %34, ptr %19, align 8, !tbaa !66
  %35 = load ptr, ptr %23, align 8, !tbaa !59
  %36 = sub i32 %25, %20
  %37 = add i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 1
  %40 = load ptr, ptr %35, align 8, !tbaa !57
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef %39)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %44 = load ptr, ptr %23, align 8, !tbaa !59
  store ptr %43, ptr %3, align 8, !tbaa !151
  %45 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !153
  %46 = load ptr, ptr %21, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %43, ptr noundef %46, i32 noundef %20, i32 noundef %25, ptr noundef %44)
          to label %47 unwind label %51

47:                                               ; preds = %33
  %48 = icmp ne i32 %1, 112
  %49 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef %43, i1 noundef zeroext %48)
          to label %50 unwind label %51

50:                                               ; preds = %47
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret ptr %49

51:                                               ; preds = %47, %33
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %53

53:                                               ; preds = %31, %51, %16
  %54 = phi { ptr, i32 } [ %17, %16 ], [ %32, %31 ], [ %52, %51 ]
  resume { ptr, i32 } %54
}

declare noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_712TokenFactory12createStringEPKt(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %2 = load ptr, ptr %0, align 8, !tbaa !151
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !156

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !157

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !158

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710RegxParser24processCInCharacterClassEPNS_10RangeTokenEi(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #4 align 2 !prof !49 {
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret i32 %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser19parseCharacterClassEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 6
  store i16 1, ptr %4, align 8, !tbaa !68
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %6 = load i16, ptr %5, align 8, !tbaa !70
  %7 = icmp ne i16 %6, 0
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 94
  %11 = select i1 %7, i1 true, i1 %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  br i1 %1, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %14, i1 noundef zeroext true)
  br label %29

17:                                               ; preds = %12
  %18 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %14, i1 noundef zeroext false)
  %19 = load i32, ptr @_ZN11xercesc_2_75Token9UTF16_MAXE, align 4, !tbaa !84
  %20 = load ptr, ptr %18, align 8, !tbaa !57
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(72) %18, i32 noundef 0, i32 noundef %19)
  %23 = load ptr, ptr %13, align 8, !tbaa !75
  %24 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %23, i1 noundef zeroext false)
  br label %29

25:                                               ; preds = %2
  %26 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %27, i1 noundef zeroext false)
  br label %29

29:                                               ; preds = %15, %17, %25
  %30 = phi ptr [ %16, %15 ], [ %24, %17 ], [ %28, %25 ]
  %31 = phi ptr [ null, %15 ], [ %18, %17 ], [ null, %25 ]
  %32 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  %33 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 4
  %34 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  %36 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 7
  %37 = load i32, ptr @_ZN11xercesc_2_717RegularExpression13SPECIAL_COMMAE, align 4
  %38 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 3
  br label %39

39:                                               ; preds = %214, %29
  %40 = phi i1 [ true, %29 ], [ false, %214 ]
  %41 = load i16, ptr %5, align 8, !tbaa !70
  switch i16 %41, label %46 [
    i16 0, label %42
    i16 1, label %217
  ]

42:                                               ; preds = %39
  %43 = load i32, ptr %8, align 4, !tbaa !90
  %44 = icmp ne i32 %43, 93
  %45 = or i1 %40, %44
  br i1 %45, label %46, label %215

46:                                               ; preds = %39, %42
  %47 = load i32, ptr %8, align 4, !tbaa !90
  switch i16 %41, label %158 [
    i16 10, label %48
    i16 20, label %82
  ]

48:                                               ; preds = %46
  switch i32 %47, label %77 [
    i32 100, label %49
    i32 68, label %49
    i32 119, label %49
    i32 87, label %49
    i32 115, label %49
    i32 83, label %49
    i32 105, label %57
    i32 73, label %57
    i32 99, label %57
    i32 67, label %57
    i32 112, label %63
    i32 80, label %63
  ]

49:                                               ; preds = %48, %48, %48, %48, %48, %48
  %50 = load ptr, ptr %0, align 8, !tbaa !57
  %51 = getelementptr inbounds ptr, ptr %50, i64 32
  %52 = load ptr, ptr %51, align 8
  %53 = call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %47)
  %54 = load ptr, ptr %30, align 8, !tbaa !57
  %55 = getelementptr inbounds ptr, ptr %54, i64 13
  %56 = load ptr, ptr %55, align 8
  call void %56(ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef %53)
  br label %158

57:                                               ; preds = %48, %48, %48, %48
  %58 = load ptr, ptr %0, align 8, !tbaa !57
  %59 = getelementptr inbounds ptr, ptr %58, i64 31
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef i32 %60(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %30, i32 noundef %47)
  %62 = icmp slt i32 %61, 0
  br label %158

63:                                               ; preds = %48, %48
  %64 = call noundef ptr @_ZN11xercesc_2_710RegxParser21processBacksolidus_pPEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %47)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = call ptr @__cxa_allocate_exception(i64 48) #14
  %68 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %67, ptr noundef nonnull @.str, i32 noundef 1078, i32 noundef 136, ptr noundef %69)
          to label %70 unwind label %71

70:                                               ; preds = %66
  call void @__cxa_throw(ptr nonnull %67, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

71:                                               ; preds = %66
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %67) #14
  br label %248

73:                                               ; preds = %63
  %74 = load ptr, ptr %30, align 8, !tbaa !57
  %75 = getelementptr inbounds ptr, ptr %74, i64 13
  %76 = load ptr, ptr %75, align 8
  call void %76(ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef nonnull %64)
  br label %158

77:                                               ; preds = %48
  %78 = load ptr, ptr %0, align 8, !tbaa !57
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  %81 = call noundef i32 %80(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %158

82:                                               ; preds = %46
  %83 = load ptr, ptr %32, align 8, !tbaa !71
  %84 = load i32, ptr %33, align 8, !tbaa !66
  %85 = load ptr, ptr %34, align 8, !tbaa !59
  %86 = call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE(ptr noundef %83, i16 noundef zeroext 58, i32 noundef %84, ptr noundef %85)
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = call ptr @__cxa_allocate_exception(i64 48) #14
  %90 = load ptr, ptr %34, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %89, ptr noundef nonnull @.str, i32 noundef 1094, i32 noundef 137, ptr noundef %90)
          to label %91 unwind label %92

91:                                               ; preds = %88
  call void @__cxa_throw(ptr nonnull %89, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

92:                                               ; preds = %88
  %93 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %89) #14
  br label %248

94:                                               ; preds = %82
  %95 = load ptr, ptr %32, align 8, !tbaa !71
  %96 = load i32, ptr %33, align 8, !tbaa !66
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i16, ptr %95, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !77
  %100 = icmp eq i16 %99, 94
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = add nsw i32 %96, 1
  store i32 %102, ptr %33, align 8, !tbaa !66
  br label %103

103:                                              ; preds = %101, %94
  %104 = load ptr, ptr %34, align 8, !tbaa !59
  %105 = load i32, ptr %33, align 8, !tbaa !66
  %106 = add nuw i32 %86, 1
  %107 = sub i32 %106, %105
  %108 = sext i32 %107 to i64
  %109 = shl nsw i64 %108, 1
  %110 = load ptr, ptr %104, align 8, !tbaa !57
  %111 = getelementptr inbounds ptr, ptr %110, i64 2
  %112 = load ptr, ptr %111, align 8
  %113 = call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(8) %104, i64 noundef %109)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %114 = load ptr, ptr %34, align 8, !tbaa !59
  store ptr %113, ptr %3, align 8, !tbaa !151
  store ptr %114, ptr %35, align 8, !tbaa !153
  %115 = load ptr, ptr %32, align 8, !tbaa !71
  %116 = load i32, ptr %33, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %113, ptr noundef %115, i32 noundef %116, i32 noundef %86, ptr noundef %114)
          to label %117 unwind label %127

117:                                              ; preds = %103
  %118 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef %113, i1 noundef zeroext %100)
          to label %119 unwind label %129

119:                                              ; preds = %117
  %120 = icmp eq ptr %118, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %119
  %122 = call ptr @__cxa_allocate_exception(i64 48) #14
  %123 = load ptr, ptr %34, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %122, ptr noundef nonnull @.str, i32 noundef 1115, i32 noundef 139, ptr noundef %123)
          to label %124 unwind label %133

124:                                              ; preds = %121, %149
  %125 = phi ptr [ %150, %149 ], [ %122, %121 ]
  invoke void @__cxa_throw(ptr nonnull %125, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %126 unwind label %131

126:                                              ; preds = %124
  unreachable

127:                                              ; preds = %103
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %156

129:                                              ; preds = %135, %117
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %156

131:                                              ; preds = %124
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %156

133:                                              ; preds = %121
  %134 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %122) #14
  br label %156

135:                                              ; preds = %119
  %136 = load ptr, ptr %30, align 8, !tbaa !57
  %137 = getelementptr inbounds ptr, ptr %136, i64 13
  %138 = load ptr, ptr %137, align 8
  invoke void %138(ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef nonnull %118)
          to label %139 unwind label %129

139:                                              ; preds = %135
  %140 = add nuw nsw i32 %86, 1
  %141 = load i32, ptr %36, align 4, !tbaa !69
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load ptr, ptr %32, align 8, !tbaa !71
  %145 = zext nneg i32 %140 to i64
  %146 = getelementptr inbounds i16, ptr %144, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !77
  %148 = icmp eq i16 %147, 93
  br i1 %148, label %154, label %149

149:                                              ; preds = %143, %139
  %150 = call ptr @__cxa_allocate_exception(i64 48) #14
  %151 = load ptr, ptr %34, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %150, ptr noundef nonnull @.str, i32 noundef 1122, i32 noundef 137, ptr noundef %151)
          to label %124 unwind label %152

152:                                              ; preds = %149
  %153 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %150) #14
  br label %156

154:                                              ; preds = %143
  %155 = add nuw nsw i32 %86, 2
  store i32 %155, ptr %33, align 8, !tbaa !66
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %158

156:                                              ; preds = %129, %131, %133, %152, %127
  %157 = phi { ptr, i32 } [ %128, %127 ], [ %134, %133 ], [ %153, %152 ], [ %130, %129 ], [ %132, %131 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %248

158:                                              ; preds = %57, %46, %154, %49, %73, %77
  %159 = phi i1 [ false, %77 ], [ true, %73 ], [ true, %49 ], [ true, %154 ], [ %62, %57 ], [ false, %46 ]
  %160 = phi i32 [ %81, %77 ], [ %47, %73 ], [ %47, %49 ], [ %47, %154 ], [ %61, %57 ], [ %47, %46 ]
  call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br i1 %159, label %203, label %161

161:                                              ; preds = %158
  %162 = load i16, ptr %5, align 8, !tbaa !70
  %163 = icmp eq i16 %162, 0
  %164 = load i32, ptr %8, align 4
  %165 = icmp eq i32 %164, 45
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %171, label %167

167:                                              ; preds = %161
  %168 = load ptr, ptr %30, align 8, !tbaa !57
  %169 = getelementptr inbounds ptr, ptr %168, i64 12
  %170 = load ptr, ptr %169, align 8
  call void %170(ptr noundef nonnull align 8 dereferenceable(72) %30, i32 noundef %160, i32 noundef %160)
  br label %203

171:                                              ; preds = %161
  call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %172 = load i16, ptr %5, align 8, !tbaa !70
  switch i16 %172, label %190 [
    i16 1, label %173
    i16 0, label %180
  ]

173:                                              ; preds = %171
  %174 = call ptr @__cxa_allocate_exception(i64 48) #14
  %175 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %174, ptr noundef nonnull @.str, i32 noundef 1139, i32 noundef 138, ptr noundef %176)
          to label %177 unwind label %178

177:                                              ; preds = %173
  call void @__cxa_throw(ptr nonnull %174, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

178:                                              ; preds = %173
  %179 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %174) #14
  br label %248

180:                                              ; preds = %171
  %181 = load i32, ptr %8, align 4, !tbaa !90
  %182 = icmp eq i32 %181, 93
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load ptr, ptr %30, align 8, !tbaa !57
  %185 = getelementptr inbounds ptr, ptr %184, i64 12
  %186 = load ptr, ptr %185, align 8
  call void %186(ptr noundef nonnull align 8 dereferenceable(72) %30, i32 noundef %160, i32 noundef %160)
  %187 = load ptr, ptr %30, align 8, !tbaa !57
  %188 = getelementptr inbounds ptr, ptr %187, i64 12
  %189 = load ptr, ptr %188, align 8
  call void %189(ptr noundef nonnull align 8 dereferenceable(72) %30, i32 noundef 45, i32 noundef 45)
  br label %203

190:                                              ; preds = %171, %180
  %191 = load i32, ptr %8, align 4, !tbaa !90
  %192 = icmp eq i16 %172, 10
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load ptr, ptr %0, align 8, !tbaa !57
  %195 = getelementptr inbounds ptr, ptr %194, i64 3
  %196 = load ptr, ptr %195, align 8
  %197 = call noundef i32 %196(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %198

198:                                              ; preds = %193, %190
  %199 = phi i32 [ %197, %193 ], [ %191, %190 ]
  call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %200 = load ptr, ptr %30, align 8, !tbaa !57
  %201 = getelementptr inbounds ptr, ptr %200, i64 12
  %202 = load ptr, ptr %201, align 8
  call void %202(ptr noundef nonnull align 8 dereferenceable(72) %30, i32 noundef %160, i32 noundef %199)
  br label %203

203:                                              ; preds = %167, %198, %183, %158
  %204 = load i32, ptr %38, align 4, !tbaa !65
  %205 = and i32 %204, %37
  %206 = icmp eq i32 %205, %37
  %207 = load i16, ptr %5, align 8
  %208 = icmp eq i16 %207, 0
  %209 = select i1 %206, i1 %208, i1 false
  %210 = load i32, ptr %8, align 4
  %211 = icmp eq i32 %210, 44
  %212 = select i1 %209, i1 %211, i1 false
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %214

214:                                              ; preds = %213, %203
  br label %39, !llvm.loop !159

215:                                              ; preds = %42
  %216 = icmp eq i16 %41, 1
  br i1 %216, label %217, label %224

217:                                              ; preds = %39, %215
  %218 = call ptr @__cxa_allocate_exception(i64 48) #14
  %219 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %218, ptr noundef nonnull @.str, i32 noundef 1167, i32 noundef 138, ptr noundef %220)
          to label %221 unwind label %222

221:                                              ; preds = %217
  call void @__cxa_throw(ptr nonnull %218, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

222:                                              ; preds = %217
  %223 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %218) #14
  br label %248

224:                                              ; preds = %215
  %225 = or i1 %11, %1
  br i1 %225, label %230, label %226

226:                                              ; preds = %224
  %227 = load ptr, ptr %31, align 8, !tbaa !57
  %228 = getelementptr inbounds ptr, ptr %227, i64 16
  %229 = load ptr, ptr %228, align 8
  call void %229(ptr noundef nonnull align 8 dereferenceable(72) %31, ptr noundef %30)
  br label %230

230:                                              ; preds = %224, %226
  %231 = phi ptr [ %30, %224 ], [ %31, %226 ]
  %232 = load ptr, ptr %231, align 8, !tbaa !57
  %233 = getelementptr inbounds ptr, ptr %232, i64 14
  %234 = load ptr, ptr %233, align 8
  call void %234(ptr noundef nonnull align 8 dereferenceable(72) %231)
  %235 = load ptr, ptr %231, align 8, !tbaa !57
  %236 = getelementptr inbounds ptr, ptr %235, i64 15
  %237 = load ptr, ptr %236, align 8
  call void %237(ptr noundef nonnull align 8 dereferenceable(72) %231)
  %238 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 3
  %239 = load i32, ptr %238, align 4, !tbaa !65
  %240 = load i32, ptr @_ZN11xercesc_2_717RegularExpression11IGNORE_CASEE, align 4, !tbaa !84
  %241 = and i32 %240, %239
  %242 = icmp eq i32 %241, %240
  br i1 %242, label %243, label %247

243:                                              ; preds = %230
  %244 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %245 = load ptr, ptr %244, align 8, !tbaa !75
  %246 = call noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %231, ptr noundef %245)
  br label %247

247:                                              ; preds = %243, %230
  store i16 0, ptr %4, align 8, !tbaa !68
  call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret ptr %231

248:                                              ; preds = %71, %178, %156, %92, %222
  %249 = phi { ptr, i32 } [ %223, %222 ], [ %179, %178 ], [ %72, %71 ], [ %93, %92 ], [ %157, %156 ]
  resume { ptr, i32 } %249
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser18parseSetOperationsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds ptr, ptr %2, i64 29
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  br label %9

9:                                                ; preds = %37, %1
  %10 = load i16, ptr %6, align 8, !tbaa !70
  switch i16 %10, label %42 [
    i16 7, label %49
    i16 0, label %11
    i16 4, label %15
  ]

11:                                               ; preds = %9
  %12 = load i32, ptr %7, align 4, !tbaa !90
  switch i32 %12, label %13 [
    i32 45, label %15
    i32 38, label %15
  ]

13:                                               ; preds = %11
  %14 = icmp eq i16 %10, 4
  br i1 %14, label %15, label %42

15:                                               ; preds = %9, %11, %11, %13
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %16 = load i16, ptr %6, align 8, !tbaa !70
  %17 = icmp eq i16 %16, 9
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str, i32 noundef 1206, i32 noundef 143, ptr noundef %21)
          to label %22 unwind label %23

22:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %50

25:                                               ; preds = %15
  %26 = load ptr, ptr %0, align 8, !tbaa !57
  %27 = getelementptr inbounds ptr, ptr %26, i64 29
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  %30 = load i16, ptr %6, align 8, !tbaa !70
  %31 = icmp eq i16 %30, 4
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load i32, ptr %8, align 4, !tbaa !90
  switch i32 %33, label %35 [
    i32 45, label %37
    i32 38, label %34
  ]

34:                                               ; preds = %32
  br label %37

35:                                               ; preds = %32
  %36 = tail call ptr @__cxa_allocate_exception(i64 4) #14
  store i32 0, ptr %36, align 16, !tbaa !84
  tail call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIi, ptr null) #16
  unreachable

37:                                               ; preds = %32, %25, %34
  %38 = phi i64 [ 17, %34 ], [ 13, %25 ], [ 16, %32 ]
  %39 = load ptr, ptr %5, align 8, !tbaa !57
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef %29)
  br label %9, !llvm.loop !160

42:                                               ; preds = %9, %13
  %43 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %44 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %43, ptr noundef nonnull @.str, i32 noundef 1224, i32 noundef 144, ptr noundef %45)
          to label %46 unwind label %47

46:                                               ; preds = %42
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

47:                                               ; preds = %42
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %50

49:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret ptr %5

50:                                               ; preds = %47, %23
  %51 = phi ptr [ %43, %47 ], [ %19, %23 ]
  %52 = phi { ptr, i32 } [ %48, %47 ], [ %24, %23 ]
  tail call void @__cxa_free_exception(ptr %51) #14
  resume { ptr, i32 } %52
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RegxParser20getTokenForShorthandEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #4 align 2 !prof !49 {
  %3 = load i32, ptr @_ZN11xercesc_2_717RegularExpression20USE_UNICODE_CATEGORYE, align 4, !tbaa !84
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = and i32 %5, %3
  %7 = icmp eq i32 %6, %3
  switch i32 %1, label %38 [
    i32 100, label %8
    i32 68, label %13
    i32 119, label %18
    i32 87, label %23
    i32 115, label %28
    i32 83, label %33
  ]

8:                                                ; preds = %2
  br i1 %7, label %9, label %11

9:                                                ; preds = %8
  %10 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L17fgUniDecimalDigitE, i1 noundef zeroext false)
  br label %38

11:                                               ; preds = %8
  %12 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, i1 noundef zeroext false)
  br label %38

13:                                               ; preds = %2
  br i1 %7, label %14, label %16

14:                                               ; preds = %13
  %15 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L17fgUniDecimalDigitE, i1 noundef zeroext true)
  br label %38

16:                                               ; preds = %13
  %17 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, i1 noundef zeroext true)
  br label %38

18:                                               ; preds = %2
  br i1 %7, label %19, label %21

19:                                               ; preds = %18
  %20 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, i1 noundef zeroext false)
  br label %38

21:                                               ; preds = %18
  %22 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, i1 noundef zeroext false)
  br label %38

23:                                               ; preds = %2
  br i1 %7, label %24, label %26

24:                                               ; preds = %23
  %25 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, i1 noundef zeroext true)
  br label %38

26:                                               ; preds = %23
  %27 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, i1 noundef zeroext true)
  br label %38

28:                                               ; preds = %2
  br i1 %7, label %29, label %31

29:                                               ; preds = %28
  %30 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsSpaceE, i1 noundef zeroext false)
  br label %38

31:                                               ; preds = %28
  %32 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, i1 noundef zeroext false)
  br label %38

33:                                               ; preds = %2
  br i1 %7, label %34, label %36

34:                                               ; preds = %33
  %35 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsSpaceE, i1 noundef zeroext true)
  br label %38

36:                                               ; preds = %33
  %37 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, i1 noundef zeroext true)
  br label %38

38:                                               ; preds = %34, %36, %29, %31, %24, %26, %19, %21, %14, %16, %9, %11, %2
  %39 = phi ptr [ null, %2 ], [ %10, %9 ], [ %12, %11 ], [ %15, %14 ], [ %17, %16 ], [ %20, %19 ], [ %22, %21 ], [ %25, %24 ], [ %27, %26 ], [ %30, %29 ], [ %32, %31 ], [ %35, %34 ], [ %37, %36 ]
  ret ptr %39
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710RegxParser13decodeEscapedEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 8, !tbaa !70
  %4 = icmp eq i16 %3, 10
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 1272, i32 noundef 122, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %249

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !90
  switch i32 %14, label %247 [
    i32 101, label %15
    i32 102, label %16
    i32 110, label %17
    i32 114, label %18
    i32 116, label %19
    i32 120, label %20
    i32 117, label %150
    i32 118, label %193
    i32 65, label %240
    i32 90, label %240
    i32 122, label %240
  ]

15:                                               ; preds = %12
  br label %247

16:                                               ; preds = %12
  br label %247

17:                                               ; preds = %12
  br label %247

18:                                               ; preds = %12
  br label %247

19:                                               ; preds = %12
  br label %247

20:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %21 = load i16, ptr %2, align 8, !tbaa !70
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %25 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull @.str, i32 noundef 1296, i32 noundef 146, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %249

30:                                               ; preds = %20
  %31 = load i32, ptr %13, align 4, !tbaa !90
  %32 = icmp eq i32 %31, 123
  br i1 %32, label %33, label %89

33:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %34 = load i16, ptr %2, align 8, !tbaa !70
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %65, %33
  %37 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %38 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str, i32 noundef 1306, i32 noundef 146, ptr noundef %39)
          to label %40 unwind label %41

40:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %249

43:                                               ; preds = %33, %65
  %44 = phi i32 [ %67, %65 ], [ 0, %33 ]
  %45 = load i32, ptr %13, align 4, !tbaa !90
  %46 = add i32 %45, -103
  %47 = icmp ult i32 %46, -55
  br i1 %47, label %62, label %48

48:                                               ; preds = %43
  %49 = icmp slt i32 %45, 58
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = add nsw i32 %45, -48
  br label %62

52:                                               ; preds = %48
  %53 = icmp slt i32 %45, 65
  br i1 %53, label %62, label %54

54:                                               ; preds = %52
  %55 = icmp slt i32 %45, 71
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = add nsw i32 %45, -55
  br label %62

58:                                               ; preds = %54
  %59 = icmp slt i32 %45, 97
  %60 = add nsw i32 %45, -87
  %61 = select i1 %59, i32 -1, i32 %60
  br label %62

62:                                               ; preds = %43, %50, %52, %56, %58
  %63 = phi i32 [ %51, %50 ], [ %57, %56 ], [ -1, %43 ], [ -1, %52 ], [ %61, %58 ]
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = shl nsw i32 %44, 4
  %67 = add nsw i32 %63, %66
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %68 = load i16, ptr %2, align 8, !tbaa !70
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %43, label %36, !llvm.loop !161

70:                                               ; preds = %62
  %71 = icmp eq i32 %45, 125
  br i1 %71, label %79, label %72

72:                                               ; preds = %70
  %73 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %74 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %73, ptr noundef nonnull @.str, i32 noundef 1315, i32 noundef 148, ptr noundef %75)
          to label %76 unwind label %77

76:                                               ; preds = %72
  tail call void @__cxa_throw(ptr nonnull %73, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

77:                                               ; preds = %72
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %249

79:                                               ; preds = %70
  %80 = load i32, ptr @_ZN11xercesc_2_75Token9UTF16_MAXE, align 4, !tbaa !84
  %81 = icmp sgt i32 %44, %80
  br i1 %81, label %82, label %247

82:                                               ; preds = %79
  %83 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %84 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %83, ptr noundef nonnull @.str, i32 noundef 1318, i32 noundef 149, ptr noundef %85)
          to label %86 unwind label %87

86:                                               ; preds = %82
  tail call void @__cxa_throw(ptr nonnull %83, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

87:                                               ; preds = %82
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %249

89:                                               ; preds = %30
  %90 = add i32 %31, -103
  %91 = icmp ult i32 %90, -55
  br i1 %91, label %106, label %92

92:                                               ; preds = %89
  %93 = icmp slt i32 %31, 58
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = add nsw i32 %31, -48
  br label %106

96:                                               ; preds = %92
  %97 = icmp slt i32 %31, 65
  br i1 %97, label %106, label %98

98:                                               ; preds = %96
  %99 = icmp slt i32 %31, 71
  br i1 %99, label %100, label %102

100:                                              ; preds = %98
  %101 = add nsw i32 %31, -55
  br label %106

102:                                              ; preds = %98
  %103 = icmp slt i32 %31, 97
  %104 = add nsw i32 %31, -87
  %105 = select i1 %103, i32 -1, i32 %104
  br label %106

106:                                              ; preds = %89, %94, %96, %100, %102
  %107 = phi i32 [ %95, %94 ], [ %101, %100 ], [ -1, %89 ], [ -1, %96 ], [ %105, %102 ]
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %111 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %110, ptr noundef nonnull @.str, i32 noundef 1325, i32 noundef 146, ptr noundef %112)
          to label %113 unwind label %114

113:                                              ; preds = %109
  tail call void @__cxa_throw(ptr nonnull %110, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

114:                                              ; preds = %109
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %249

116:                                              ; preds = %106
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %117 = load i16, ptr %2, align 8, !tbaa !70
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %116
  %120 = load i32, ptr %13, align 4, !tbaa !90
  %121 = add i32 %120, -103
  %122 = icmp ult i32 %121, -55
  br i1 %122, label %137, label %123

123:                                              ; preds = %119
  %124 = icmp slt i32 %120, 58
  br i1 %124, label %125, label %127

125:                                              ; preds = %123
  %126 = add nsw i32 %120, -48
  br label %137

127:                                              ; preds = %123
  %128 = icmp slt i32 %120, 65
  br i1 %128, label %137, label %129

129:                                              ; preds = %127
  %130 = icmp slt i32 %120, 71
  br i1 %130, label %131, label %133

131:                                              ; preds = %129
  %132 = add nsw i32 %120, -55
  br label %137

133:                                              ; preds = %129
  %134 = icmp slt i32 %120, 97
  %135 = add nsw i32 %120, -87
  %136 = select i1 %134, i32 -1, i32 %135
  br label %137

137:                                              ; preds = %119, %125, %127, %131, %133
  %138 = phi i32 [ %126, %125 ], [ %132, %131 ], [ -1, %119 ], [ -1, %127 ], [ %136, %133 ]
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137, %116
  %141 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %142 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %141, ptr noundef nonnull @.str, i32 noundef 1331, i32 noundef 146, ptr noundef %143)
          to label %144 unwind label %145

144:                                              ; preds = %140
  tail call void @__cxa_throw(ptr nonnull %141, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

145:                                              ; preds = %140
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %249

147:                                              ; preds = %137
  %148 = shl nsw i32 %107, 4
  %149 = add nuw nsw i32 %138, %148
  br label %247

150:                                              ; preds = %12, %183
  %151 = phi i32 [ %188, %183 ], [ 0, %12 ]
  %152 = phi i32 [ %187, %183 ], [ 0, %12 ]
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %153 = load i16, ptr %2, align 8, !tbaa !70
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %150
  %156 = load i32, ptr %13, align 4, !tbaa !90
  %157 = add i32 %156, -103
  %158 = icmp ult i32 %157, -55
  br i1 %158, label %173, label %159

159:                                              ; preds = %155
  %160 = icmp slt i32 %156, 58
  br i1 %160, label %161, label %163

161:                                              ; preds = %159
  %162 = add nsw i32 %156, -48
  br label %173

163:                                              ; preds = %159
  %164 = icmp slt i32 %156, 65
  br i1 %164, label %173, label %165

165:                                              ; preds = %163
  %166 = icmp slt i32 %156, 71
  br i1 %166, label %167, label %169

167:                                              ; preds = %165
  %168 = add nsw i32 %156, -55
  br label %173

169:                                              ; preds = %165
  %170 = icmp slt i32 %156, 97
  %171 = add nsw i32 %156, -87
  %172 = select i1 %170, i32 -1, i32 %171
  br label %173

173:                                              ; preds = %155, %161, %163, %167, %169
  %174 = phi i32 [ %162, %161 ], [ %168, %167 ], [ -1, %155 ], [ -1, %163 ], [ %172, %169 ]
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173, %150
  %177 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %178 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %177, ptr noundef nonnull @.str, i32 noundef 1346, i32 noundef 146, ptr noundef %179)
          to label %180 unwind label %181

180:                                              ; preds = %176
  tail call void @__cxa_throw(ptr nonnull %177, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

181:                                              ; preds = %176
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %249

183:                                              ; preds = %173
  %184 = icmp eq i32 %151, 0
  %185 = shl nsw i32 %152, 4
  %186 = select i1 %184, i32 0, i32 %185
  %187 = add nsw i32 %174, %186
  %188 = add nuw nsw i32 %151, 1
  %189 = icmp eq i32 %188, 4
  br i1 %189, label %247, label %150, !llvm.loop !162

190:                                              ; preds = %226
  %191 = load i32, ptr @_ZN11xercesc_2_75Token9UTF16_MAXE, align 4, !tbaa !84
  %192 = icmp sgt i32 %230, %191
  br i1 %192, label %233, label %247

193:                                              ; preds = %12, %226
  %194 = phi i32 [ %231, %226 ], [ 0, %12 ]
  %195 = phi i32 [ %230, %226 ], [ 0, %12 ]
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %196 = load i16, ptr %2, align 8, !tbaa !70
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %193
  %199 = load i32, ptr %13, align 4, !tbaa !90
  %200 = add i32 %199, -103
  %201 = icmp ult i32 %200, -55
  br i1 %201, label %216, label %202

202:                                              ; preds = %198
  %203 = icmp slt i32 %199, 58
  br i1 %203, label %204, label %206

204:                                              ; preds = %202
  %205 = add nsw i32 %199, -48
  br label %216

206:                                              ; preds = %202
  %207 = icmp slt i32 %199, 65
  br i1 %207, label %216, label %208

208:                                              ; preds = %206
  %209 = icmp slt i32 %199, 71
  br i1 %209, label %210, label %212

210:                                              ; preds = %208
  %211 = add nsw i32 %199, -55
  br label %216

212:                                              ; preds = %208
  %213 = icmp slt i32 %199, 97
  %214 = add nsw i32 %199, -87
  %215 = select i1 %213, i32 -1, i32 %214
  br label %216

216:                                              ; preds = %198, %204, %206, %210, %212
  %217 = phi i32 [ %205, %204 ], [ %211, %210 ], [ -1, %198 ], [ -1, %206 ], [ %215, %212 ]
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %216, %193
  %220 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %221 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %220, ptr noundef nonnull @.str, i32 noundef 1363, i32 noundef 146, ptr noundef %222)
          to label %223 unwind label %224

223:                                              ; preds = %219
  tail call void @__cxa_throw(ptr nonnull %220, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

224:                                              ; preds = %219
  %225 = landingpad { ptr, i32 }
          cleanup
  br label %249

226:                                              ; preds = %216
  %227 = icmp eq i32 %194, 0
  %228 = shl nsw i32 %195, 4
  %229 = select i1 %227, i32 0, i32 %228
  %230 = add nsw i32 %217, %229
  %231 = add nuw nsw i32 %194, 1
  %232 = icmp eq i32 %231, 6
  br i1 %232, label %190, label %193, !llvm.loop !163

233:                                              ; preds = %190
  %234 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %235 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %234, ptr noundef nonnull @.str, i32 noundef 1369, i32 noundef 146, ptr noundef %236)
          to label %237 unwind label %238

237:                                              ; preds = %233
  tail call void @__cxa_throw(ptr nonnull %234, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

238:                                              ; preds = %233
  %239 = landingpad { ptr, i32 }
          cleanup
  br label %249

240:                                              ; preds = %12, %12, %12
  %241 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %242 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %241, ptr noundef nonnull @.str, i32 noundef 1377, i32 noundef 150, ptr noundef %243)
          to label %244 unwind label %245

244:                                              ; preds = %240
  tail call void @__cxa_throw(ptr nonnull %241, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

245:                                              ; preds = %240
  %246 = landingpad { ptr, i32 }
          cleanup
  br label %249

247:                                              ; preds = %183, %190, %79, %147, %12, %19, %18, %17, %16, %15
  %248 = phi i32 [ %14, %12 ], [ %149, %147 ], [ 9, %19 ], [ 13, %18 ], [ 10, %17 ], [ 12, %16 ], [ 27, %15 ], [ %44, %79 ], [ %230, %190 ], [ %187, %183 ]
  ret i32 %248

249:                                              ; preds = %28, %181, %245, %87, %77, %41, %145, %114, %238, %224, %10
  %250 = phi ptr [ %24, %28 ], [ %177, %181 ], [ %241, %245 ], [ %83, %87 ], [ %73, %77 ], [ %37, %41 ], [ %141, %145 ], [ %110, %114 ], [ %234, %238 ], [ %220, %224 ], [ %6, %10 ]
  %251 = phi { ptr, i32 } [ %29, %28 ], [ %182, %181 ], [ %246, %245 ], [ %88, %87 ], [ %78, %77 ], [ %42, %41 ], [ %146, %145 ], [ %115, %114 ], [ %239, %238 ], [ %225, %224 ], [ %11, %10 ]
  tail call void @__cxa_free_exception(ptr %250) #14
  resume { ptr, i32 } %251
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710RegxParser13checkQuestionEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #9 align 2 !prof !49 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !69
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i16, ptr %8, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !77
  %12 = icmp eq i16 %11, 63
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i1 [ false, %2 ], [ %12, %6 ]
  ret i1 %14
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714ParseException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_76XMLUni21fgParseException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714ParseException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714ParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !57
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !57
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !140, !range !167, !noundef !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !113
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !85
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !169

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !112
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !113
  %28 = load ptr, ptr %25, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
          to label %31 unwind label %32

31:                                               ; preds = %23
  ret void

32:                                               ; preds = %23
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #15
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_10RegxParser17ReferencePositionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE12setElementAtEPS2_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !140, !range !167, !noundef !168
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !113
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !114
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #14
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !113
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !114
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %21, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !85
  ret void

11:                                               ; preds = %5, %21
  %12 = phi i64 [ 0, %5 ], [ %24, %21 ]
  %13 = load i8, ptr %6, align 8, !tbaa !140, !range !167, !noundef !168
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !113
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #14
  br label %21

21:                                               ; preds = %15, %20, %11
  %22 = load ptr, ptr %8, align 8, !tbaa !113
  %23 = getelementptr inbounds ptr, ptr %22, i64 %12
  store ptr null, ptr %23, align 8, !tbaa !114
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %2, align 4, !tbaa !85
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %11, label %9, !llvm.loop !170
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !140, !range !167, !noundef !168
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !113
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !114
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #14
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !85
  %27 = add i32 %26, -1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i32 %27, %1
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %33 = zext i32 %1 to i64
  %34 = zext i32 %27 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %33, %31 ], [ %38, %35 ]
  %37 = load ptr, ptr %32, align 8, !tbaa !113
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !114
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !114
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !171

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !113
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !114
  store i32 %27, ptr %3, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !85
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !140, !range !167, !noundef !168
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !113
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !140, !range !167, !noundef !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !113
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !85
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !172

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !112
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !113
  %28 = load ptr, ptr %25, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !49 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !141
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !112
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !57
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !85
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !114
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !113
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !114
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !114
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !173

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !112
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !113
  %52 = load ptr, ptr %49, align 8, !tbaa !57
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !113
  store i32 %12, ptr %6, align 8, !tbaa !141
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!48}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_ZN11xercesc_2_710RegxParser5parseEPKti, ptr @_ZN11xercesc_2_710RegxParser11processNextEv, i64 10}
!36 = !{ptr @_ZN11xercesc_2_710RegxParser5parseEPKti, ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb, i64 10}
!37 = !{ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb, ptr @_ZN11xercesc_2_710RegxParser9parseTermEb, i64 15}
!38 = !{ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb, ptr @_ZN11xercesc_2_710RegxParser11processNextEv, i64 3}
!39 = !{ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb, ptr @_ZN11xercesc_2_712TokenFactory11createUnionEb, i64 2}
!40 = !{ptr @_ZN11xercesc_2_710RegxParser9parseTermEb, ptr @_ZN11xercesc_2_710RegxParser11parseFactorEv, i64 90}
!41 = !{ptr @_ZN11xercesc_2_710RegxParser9parseTermEb, ptr @_ZN11xercesc_2_712TokenFactory11createUnionEb, i64 15}
!42 = !{ptr @_ZN11xercesc_2_710RegxParser11parseFactorEv, ptr @_ZN11xercesc_2_710RegxParser9parseAtomEv, i64 90}
!43 = !{ptr @_ZN11xercesc_2_710RegxParser11parseFactorEv, ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb, i64 8}
!44 = !{ptr @_ZN11xercesc_2_710RegxParser11parseFactorEv, ptr @_ZN11xercesc_2_710RegxParser11processNextEv, i64 8}
!45 = !{ptr @_ZN11xercesc_2_710RegxParser9parseAtomEv, ptr @_ZN11xercesc_2_710RegxParser11processNextEv, i64 80}
!46 = !{ptr @_ZN11xercesc_2_710RegxParser9parseAtomEv, ptr @_ZN11xercesc_2_712TokenFactory6getDotEv, i64 6}
!47 = !{ptr @_ZN11xercesc_2_710RegxParser9parseAtomEv, ptr @_ZN11xercesc_2_712TokenFactory10createCharEjb, i64 62}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSN11xercesc_2_710RegxParser17ReferencePositionE", !52, i64 0, !52, i64 4}
!52 = !{!"int", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!51, !52, i64 4}
!56 = !{!"function_entry_count", i64 10}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !54, i64 0}
!59 = !{!60, !61, i64 8}
!60 = !{!"_ZTSN11xercesc_2_710RegxParserE", !61, i64 8, !62, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !63, i64 32, !52, i64 36, !63, i64 40, !52, i64 44, !61, i64 48, !61, i64 56, !61, i64 64}
!61 = !{!"any pointer", !53, i64 0}
!62 = !{!"bool", !53, i64 0}
!63 = !{!"short", !53, i64 0}
!64 = !{!60, !62, i64 16}
!65 = !{!60, !52, i64 20}
!66 = !{!60, !52, i64 24}
!67 = !{!60, !52, i64 28}
!68 = !{!60, !63, i64 32}
!69 = !{!60, !52, i64 36}
!70 = !{!60, !63, i64 40}
!71 = !{!60, !61, i64 48}
!72 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!73 = !{!60, !61, i64 56}
!74 = !{!"branch_weights", i32 10, i32 0}
!75 = !{!60, !61, i64 64}
!76 = !{!"branch_weights", i32 0, i32 10}
!77 = !{!63, !63, i64 0}
!78 = !{!"branch_weights", i32 10, i32 172}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"VP", i32 0, i64 10, i64 8345045103670217670, i64 10}
!83 = !{!"VP", i32 1, i64 10, i64 17, i64 4, i64 33, i64 3, i64 16, i64 1, i64 65, i64 1}
!84 = !{!52, !52, i64 0}
!85 = !{!86, !52, i64 12}
!86 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_10RegxParser17ReferencePositionEEE", !62, i64 8, !52, i64 12, !52, i64 16, !61, i64 24, !61, i64 32}
!87 = distinct !{!87, !80, !81}
!88 = !{!"function_entry_count", i64 154}
!89 = !{!"branch_weights", i32 144, i32 10}
!90 = !{!60, !52, i64 44}
!91 = !{!"branch_weights", i32 29, i32 115}
!92 = !{!"branch_weights", i32 23, i32 1, i32 5, i32 0}
!93 = !{!"branch_weights", i32 1, i32 0}
!94 = !{!"branch_weights", i32 25, i32 0}
!95 = !{!"branch_weights", i32 0, i32 5}
!96 = !{!"branch_weights", i32 0, i32 23}
!97 = !{!98, !98, i64 0}
!98 = !{!"_ZTSN11xercesc_2_77XMLErrs5CodesE", !53, i64 0}
!99 = !{!"branch_weights", i32 67, i32 3, i32 0, i32 11, i32 1, i32 2, i32 6, i32 8, i32 0, i32 0, i32 2, i32 15}
!100 = !{!"branch_weights", i32 2, i32 0}
!101 = !{!"branch_weights", i32 0, i32 2}
!102 = distinct !{!102, !80, !81}
!103 = !{!"branch_weights", i32 15, i32 0}
!104 = !{!"branch_weights", i32 0, i32 67}
!105 = !{!"function_entry_count", i64 12}
!106 = !{!"branch_weights", i32 3, i32 9}
!107 = !{!"branch_weights", i32 2, i32 1}
!108 = !{!"VP", i32 0, i64 2, i64 2602431787464246842, i64 2}
!109 = !{!"VP", i32 0, i64 3, i64 2602431787464246842, i64 3}
!110 = !{!"branch_weights", i32 0, i32 3}
!111 = distinct !{!111, !80, !81}
!112 = !{!86, !61, i64 32}
!113 = !{!86, !61, i64 24}
!114 = !{!61, !61, i64 0}
!115 = !{!"function_entry_count", i64 15}
!116 = !{!"branch_weights", i32 0, i32 225}
!117 = !{!"branch_weights", i32 1, i32 239}
!118 = !{!"branch_weights", i32 15, i32 60}
!119 = !{!"VP", i32 0, i64 15, i64 2602431787464246842, i64 15}
!120 = !{!"VP", i32 0, i64 75, i64 2602431787464246842, i64 75}
!121 = !{!"branch_weights", i32 239, i32 961}
!122 = distinct !{!122, !80, !81}
!123 = !{!"function_entry_count", i64 90}
!124 = !{!"branch_weights", i32 75, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15}
!125 = !{!"branch_weights", i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!126 = !{!"branch_weights", i32 28, i32 0, i32 11, i32 1, i32 50}
!127 = !{!"VP", i32 0, i64 11, i64 -2037495159081346455, i64 11}
!128 = !{!"VP", i32 0, i64 1, i64 -1667829528908478654, i64 1}
!129 = !{!"branch_weights", i32 8, i32 42}
!130 = !{!"branch_weights", i32 8, i32 0}
!131 = !{!"branch_weights", i32 0, i32 1}
!132 = distinct !{!132, !80, !81}
!133 = !{!"branch_weights", i32 0, i32 8}
!134 = !{!"branch_weights", i32 3, i32 5}
!135 = !{!"branch_weights", i32 3, i32 0}
!136 = distinct !{!136, !80, !81}
!137 = !{!"VP", i32 0, i64 8, i64 5785079929268318821, i64 8}
!138 = !{!"VP", i32 0, i64 8, i64 -7182576131215733230, i64 8}
!139 = !{!"VP", i32 0, i64 8, i64 8376836099737305368, i64 8}
!140 = !{!86, !62, i64 8}
!141 = !{!86, !52, i64 16}
!142 = distinct !{!142, !80, !81}
!143 = !{!144, !63, i64 8}
!144 = !{!"_ZTSN11xercesc_2_75TokenE", !63, i64 8, !61, i64 16}
!145 = !{!"branch_weights", i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 6, i32 8, i32 0, i32 15, i32 59}
!146 = !{!"VP", i32 0, i64 2, i64 -2508738123279483153, i64 2}
!147 = !{!"VP", i32 0, i64 8, i64 -1626393037591134418, i64 8}
!148 = !{!"branch_weights", i32 3, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!149 = !{!"VP", i32 0, i64 12, i64 -3685832644116755483, i64 12}
!150 = !{!"VP", i32 0, i64 3, i64 -8937758928715584246, i64 3}
!151 = !{!152, !61, i64 0}
!152 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !61, i64 0, !61, i64 8}
!153 = !{!152, !61, i64 8}
!154 = !{!"branch_weights", i32 59, i32 0, i32 0, i32 0}
!155 = !{!"function_entry_count", i64 243874}
!156 = !{!"branch_weights", i32 191815, i32 52059}
!157 = !{!"branch_weights", i32 0, i32 52059}
!158 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!159 = distinct !{!159, !80, !81}
!160 = distinct !{!160, !80, !81}
!161 = distinct !{!161, !80, !81}
!162 = distinct !{!162, !80, !81}
!163 = distinct !{!163, !80, !81}
!164 = !{!165, !61, i64 40}
!165 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !166, i64 8, !61, i64 16, !52, i64 24, !61, i64 32, !61, i64 40}
!166 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !53, i64 0}
!167 = !{i8 0, i8 2}
!168 = !{}
!169 = distinct !{!169, !80, !81}
!170 = distinct !{!170, !80, !81}
!171 = distinct !{!171, !80, !81}
!172 = distinct !{!172, !80, !81}
!173 = distinct !{!173, !80, !81}
