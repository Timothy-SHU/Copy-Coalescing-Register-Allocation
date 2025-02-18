; ModuleID = 'ParserForXMLSchema.cpp'
source_filename = "ParserForXMLSchema.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RegxParser" = type { ptr, ptr, i8, i32, i32, i32, i16, i32, i16, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714ParseExceptionD0Ev = comdat any

$_ZNK11xercesc_2_714ParseException7getTypeEv = comdat any

$_ZNK11xercesc_2_714ParseException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZTSN11xercesc_2_714ParseExceptionE = comdat any

$_ZTIN11xercesc_2_714ParseExceptionE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_714ParseExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZTVN11xercesc_2_718ParserForXMLSchemaE = dso_local unnamed_addr constant { [35 x ptr] } { [35 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718ParserForXMLSchemaE, ptr @_ZN11xercesc_2_718ParserForXMLSchemaD2Ev, ptr @_ZN11xercesc_2_718ParserForXMLSchemaD0Ev, ptr @_ZN11xercesc_2_718ParserForXMLSchema13checkQuestionEi, ptr @_ZN11xercesc_2_718ParserForXMLSchema13decodeEscapedEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema12processCaretEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema13processDollarEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema11processLookEt, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_AEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_zEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_ZEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_bEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_BEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema21processBacksolidus_ltEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema21processBacksolidus_gtEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_cEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_CEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_iEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_IEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_gEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_XEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBackReferenceEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema11processStarEPNS_5TokenE, ptr @_ZN11xercesc_2_718ParserForXMLSchema11processPlusEPNS_5TokenE, ptr @_ZN11xercesc_2_718ParserForXMLSchema15processQuestionEPNS_5TokenE, ptr @_ZN11xercesc_2_718ParserForXMLSchema12processParenEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema13processParen2Ev, ptr @_ZN11xercesc_2_718ParserForXMLSchema16processConditionEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema16processModifiersEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema18processIndependentEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema19parseCharacterClassEb, ptr @_ZN11xercesc_2_718ParserForXMLSchema18parseSetOperationsEv, ptr @_ZN11xercesc_2_718ParserForXMLSchema24processCInCharacterClassEPNS_10RangeTokenEi, ptr @_ZN11xercesc_2_718ParserForXMLSchema20getTokenForShorthandEi] }, align 8
@.str = private unnamed_addr constant [23 x i8] c"ParserForXMLSchema.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714ParseExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714ParseExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_710RegxParser12S_INBRACKETSE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_75Token9UTF16_MAXE = external local_unnamed_addr constant i32, align 4
@_ZZN11xercesc_2_718ParserForXMLSchema19parseCharacterClassEbE7dashStr = internal constant [2 x i16] [i16 45, i16 0], align 2
@_ZN11xercesc_2_710RegxParser8S_NORMALE = external local_unnamed_addr constant i16, align 2
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L10fgXMLDigitE = internal constant [12 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 68, i16 105, i16 103, i16 105, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L9fgXMLWordE = internal constant [11 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 16
@_ZN11xercesc_2_7L10fgXMLSpaceE = internal constant [12 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 83, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xercesc_2_7L13fgXMLNameCharE = internal constant [15 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 78, i16 97, i16 109, i16 101, i16 67, i16 104, i16 97, i16 114, i16 0], align 16
@_ZN11xercesc_2_7L20fgXMLInitialNameCharE = internal constant [22 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 73, i16 110, i16 105, i16 116, i16 105, i16 97, i16 108, i16 78, i16 97, i16 109, i16 101, i16 67, i16 104, i16 97, i16 114, i16 0], align 16
@_ZTSN11xercesc_2_718ParserForXMLSchemaE = dso_local constant [36 x i8] c"N11xercesc_2_718ParserForXMLSchemaE\00", align 1
@_ZTIN11xercesc_2_710RegxParserE = external constant ptr
@_ZTIN11xercesc_2_718ParserForXMLSchemaE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718ParserForXMLSchemaE, ptr @_ZTIN11xercesc_2_710RegxParserE }, align 8
@_ZTVN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714ParseExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_714ParseExceptionD0Ev, ptr @_ZNK11xercesc_2_714ParseException7getTypeEv, ptr @_ZNK11xercesc_2_714ParseException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni21fgParseException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_718ParserForXMLSchemaC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_718ParserForXMLSchemaC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_718ParserForXMLSchemaD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718ParserForXMLSchemaD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718ParserForXMLSchemaC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xercesc_2_710RegxParserC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xercesc_2_718ParserForXMLSchemaE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  ret void
}

declare void @_ZN11xercesc_2_710RegxParserC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_710RegxParserD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718ParserForXMLSchemaD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_710RegxParserD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718ParserForXMLSchemaD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 !prof !52 {
  tail call void @_ZN11xercesc_2_710RegxParserD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema12processCaretEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory10createCharEjb(ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef 94, i1 noundef zeroext false)
  ret ptr %4
}

declare void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_712TokenFactory10createCharEjb(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema13processDollarEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory10createCharEjb(ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef 36, i1 noundef zeroext false)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema11processPlusEPNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !64 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %1, i1 noundef zeroext false)
  %6 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory12createConcatEPNS_5TokenES2_(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %1, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory12createConcatEPNS_5TokenES2_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema11processStarEPNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %1, i1 noundef zeroext false)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema15processQuestionEPNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createUnionEb(ptr noundef nonnull align 8 dereferenceable(128) %4, i1 noundef zeroext false)
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = getelementptr inbounds ptr, ptr %6, i64 18
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %1, ptr noundef nonnull %4), !prof !66
  %9 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createTokenEt(ptr noundef nonnull align 8 dereferenceable(128) %4, i16 noundef zeroext 7)
  %10 = load ptr, ptr %5, align 8, !tbaa !53
  %11 = getelementptr inbounds ptr, ptr %10, i64 18
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %9, ptr noundef nonnull %4), !prof !66
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createUnionEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createTokenEt(ptr noundef nonnull align 8 dereferenceable(128), i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema12processParenEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
  %5 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory17createParenthesisEPNS_5TokenEi(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4, i32 noundef 0)
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !68
  %8 = icmp eq i16 %7, 7
  br i1 %8, label %16, label %9, !prof !69

9:                                                ; preds = %1
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 126, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #7
  resume { ptr, i32 } %15

16:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory17createParenthesisEPNS_5TokenEi(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714ParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema19parseCharacterClassEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = alloca [2 x i16], align 2
  %4 = alloca [2 x i16], align 2
  %5 = alloca [2 x i16], align 2
  %6 = alloca [2 x i16], align 2
  %7 = load i16, ptr @_ZN11xercesc_2_710RegxParser12S_INBRACKETSE, align 2, !tbaa !72
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 6
  store i16 %7, ptr %8, align 8, !tbaa !73
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %10 = load i16, ptr %9, align 8, !tbaa !68
  %11 = icmp eq i16 %10, 0
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 94
  %15 = select i1 %11, i1 %14, i1 false, !prof !74
  br i1 %15, label %16, label %24, !prof !75

16:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %17 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %18, i1 noundef zeroext false)
  %20 = load i32, ptr @_ZN11xercesc_2_75Token9UTF16_MAXE, align 4, !tbaa !76
  %21 = load ptr, ptr %19, align 8, !tbaa !53
  %22 = getelementptr inbounds ptr, ptr %21, i64 12
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(72) %19, i32 noundef 0, i32 noundef %20)
  br label %26

24:                                               ; preds = %2
  %25 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  br label %26

26:                                               ; preds = %24, %16
  %27 = phi ptr [ %25, %24 ], [ %17, %16 ]
  %28 = phi ptr [ null, %24 ], [ %19, %16 ]
  %29 = load ptr, ptr %27, align 8, !tbaa !57
  %30 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %29, i1 noundef zeroext false)
  br label %31

31:                                               ; preds = %231, %26
  %32 = phi i8 [ 1, %26 ], [ %232, %231 ]
  %33 = phi ptr [ %30, %26 ], [ %233, %231 ]
  %34 = load i16, ptr %9, align 8, !tbaa !68
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %235, label %36, !prof !77

36:                                               ; preds = %31
  %37 = icmp eq i16 %34, 0
  br i1 %37, label %38, label %49, !prof !78

38:                                               ; preds = %36
  %39 = load i32, ptr %12, align 4, !tbaa !79
  %40 = icmp eq i32 %39, 93
  %41 = and i8 %32, 1
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %40, i1 %42, i1 false, !prof !80
  br i1 %43, label %44, label %49, !prof !80

44:                                               ; preds = %38
  br i1 %15, label %45, label %235, !prof !75

45:                                               ; preds = %44
  %46 = load ptr, ptr %28, align 8, !tbaa !53
  %47 = getelementptr inbounds ptr, ptr %46, i64 16
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef %33)
  br label %235

49:                                               ; preds = %38, %36
  %50 = load i32, ptr %12, align 4, !tbaa !79
  switch i16 %34, label %116 [
    i16 10, label %51
    i16 24, label %87
  ], !prof !81

51:                                               ; preds = %49
  switch i32 %50, label %81 [
    i32 100, label %52
    i32 68, label %52
    i32 119, label %52
    i32 87, label %52
    i32 115, label %52
    i32 83, label %52
    i32 105, label %60
    i32 73, label %60
    i32 99, label %60
    i32 67, label %60
    i32 112, label %66
    i32 80, label %66
    i32 45, label %80
  ], !prof !82

52:                                               ; preds = %51, %51, %51, %51, %51, %51
  %53 = load ptr, ptr %0, align 8, !tbaa !53
  %54 = getelementptr inbounds ptr, ptr %53, i64 32
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %50)
  %57 = load ptr, ptr %33, align 8, !tbaa !53
  %58 = getelementptr inbounds ptr, ptr %57, i64 13
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(72) %33, ptr noundef %56)
  br label %116

60:                                               ; preds = %51, %51, %51, %51
  %61 = load ptr, ptr %0, align 8, !tbaa !53
  %62 = getelementptr inbounds ptr, ptr %61, i64 31
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef i32 %63(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %33, i32 noundef %50)
  %65 = icmp slt i32 %64, 0
  br label %116

66:                                               ; preds = %51, %51
  %67 = tail call noundef ptr @_ZN11xercesc_2_710RegxParser21processBacksolidus_pPEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %50)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %71 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %70, ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 136, ptr noundef %72)
          to label %73 unwind label %74

73:                                               ; preds = %69
  tail call void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

74:                                               ; preds = %69
  %75 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %70) #7
  br label %254

76:                                               ; preds = %66
  %77 = load ptr, ptr %33, align 8, !tbaa !53
  %78 = getelementptr inbounds ptr, ptr %77, i64 13
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(72) %33, ptr noundef nonnull %67)
  br label %116

80:                                               ; preds = %51
  br label %81

81:                                               ; preds = %51, %80
  %82 = phi i1 [ false, %51 ], [ true, %80 ]
  %83 = load ptr, ptr %0, align 8, !tbaa !53
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef i32 %85(ptr noundef nonnull align 8 dereferenceable(72) %0), !prof !83
  br label %116

87:                                               ; preds = %49
  %88 = and i8 %32, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  br i1 %15, label %91, label %95

91:                                               ; preds = %90
  %92 = load ptr, ptr %28, align 8, !tbaa !53
  %93 = getelementptr inbounds ptr, ptr %92, i64 16
  %94 = load ptr, ptr %93, align 8
  tail call void %94(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef %33)
  br label %95

95:                                               ; preds = %91, %90
  %96 = phi ptr [ %28, %91 ], [ %33, %90 ]
  %97 = load ptr, ptr %0, align 8, !tbaa !53
  %98 = getelementptr inbounds ptr, ptr %97, i64 29
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  %101 = load ptr, ptr %96, align 8, !tbaa !53
  %102 = getelementptr inbounds ptr, ptr %101, i64 16
  %103 = load ptr, ptr %102, align 8
  tail call void %103(ptr noundef nonnull align 8 dereferenceable(72) %96, ptr noundef %100)
  %104 = load i16, ptr %9, align 8, !tbaa !68
  %105 = icmp eq i16 %104, 0
  %106 = load i32, ptr %12, align 4
  %107 = icmp eq i32 %106, 93
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %231, label %109

109:                                              ; preds = %95
  %110 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %111 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %110, ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 141, ptr noundef %112)
          to label %113 unwind label %114

113:                                              ; preds = %109
  tail call void @__cxa_throw(ptr nonnull %110, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

114:                                              ; preds = %109
  %115 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %110) #7
  br label %254

116:                                              ; preds = %60, %49, %87, %52, %76, %81
  %117 = phi i1 [ %82, %81 ], [ false, %76 ], [ false, %52 ], [ false, %87 ], [ false, %60 ], [ false, %49 ]
  %118 = phi i32 [ %86, %81 ], [ %50, %76 ], [ %50, %52 ], [ %50, %87 ], [ %64, %60 ], [ %50, %49 ]
  %119 = phi i1 [ false, %81 ], [ true, %76 ], [ true, %52 ], [ false, %87 ], [ %65, %60 ], [ false, %49 ]
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br i1 %119, label %231, label %120, !prof !84

120:                                              ; preds = %116
  br i1 %37, label %121, label %137, !prof !85

121:                                              ; preds = %120
  switch i32 %118, label %154 [
    i32 93, label %128
    i32 91, label %128
    i32 45, label %122
  ], !prof !86

122:                                              ; preds = %121
  %123 = load i32, ptr %12, align 4, !tbaa !79
  %124 = icmp ne i32 %123, 93
  %125 = and i8 %32, 1
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %124, i1 true, i1 %126
  br i1 %127, label %137, label %128

128:                                              ; preds = %122, %121, %121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %129 = trunc i32 %118 to i16
  store i16 %129, ptr %3, align 2, !tbaa !72
  %130 = getelementptr inbounds i16, ptr %3, i64 1
  store i16 0, ptr %130, align 2, !tbaa !72
  %131 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %132 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %131, ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 142, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %133)
          to label %134 unwind label %135

134:                                              ; preds = %128
  call void @__cxa_throw(ptr nonnull %131, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

135:                                              ; preds = %128
  %136 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %131) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %254

137:                                              ; preds = %122, %120
  %138 = icmp eq i32 %118, 45
  %139 = load i32, ptr %12, align 4
  %140 = icmp eq i32 %139, 45
  %141 = select i1 %138, i1 %140, i1 false, !prof !87
  br i1 %141, label %142, label %154, !prof !88

142:                                              ; preds = %137
  %143 = load i16, ptr %9, align 8, !tbaa !68
  %144 = icmp eq i16 %143, 10
  %145 = or i1 %117, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i16 45, ptr %4, align 2, !tbaa !72
  %147 = getelementptr inbounds i16, ptr %4, i64 1
  store i16 0, ptr %147, align 2, !tbaa !72
  %148 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %149 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %148, ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 142, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %150)
          to label %151 unwind label %152

151:                                              ; preds = %146
  call void @__cxa_throw(ptr nonnull %148, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

152:                                              ; preds = %146
  %153 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %148) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %254

154:                                              ; preds = %142, %121, %137
  %155 = load i16, ptr %9, align 8, !tbaa !68
  %156 = icmp eq i16 %155, 0
  %157 = load i32, ptr %12, align 4
  %158 = icmp eq i32 %157, 45
  %159 = select i1 %156, i1 %158, i1 false, !prof !85
  br i1 %159, label %164, label %160, !prof !89

160:                                              ; preds = %154
  %161 = load ptr, ptr %33, align 8, !tbaa !53
  %162 = getelementptr inbounds ptr, ptr %161, i64 12
  %163 = load ptr, ptr %162, align 8
  tail call void %163(ptr noundef nonnull align 8 dereferenceable(72) %33, i32 noundef %118, i32 noundef %118), !prof !90
  br label %231

164:                                              ; preds = %154
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %165 = load i16, ptr %9, align 8, !tbaa !68
  %166 = icmp eq i16 %165, 1
  br i1 %166, label %167, label %174, !prof !91

167:                                              ; preds = %164
  %168 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %169 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %168, ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 138, ptr noundef %170)
          to label %171 unwind label %172

171:                                              ; preds = %167
  tail call void @__cxa_throw(ptr nonnull %168, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

172:                                              ; preds = %167
  %173 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %168) #7
  br label %254

174:                                              ; preds = %164
  %175 = icmp eq i16 %165, 0
  %176 = load i32, ptr %12, align 4
  %177 = icmp eq i32 %176, 93
  %178 = select i1 %175, i1 %177, i1 false, !prof !92
  br i1 %178, label %179, label %186, !prof !91

179:                                              ; preds = %174
  %180 = load ptr, ptr %33, align 8, !tbaa !53
  %181 = getelementptr inbounds ptr, ptr %180, i64 12
  %182 = load ptr, ptr %181, align 8
  tail call void %182(ptr noundef nonnull align 8 dereferenceable(72) %33, i32 noundef %118, i32 noundef %118)
  %183 = load ptr, ptr %33, align 8, !tbaa !53
  %184 = getelementptr inbounds ptr, ptr %183, i64 12
  %185 = load ptr, ptr %184, align 8
  tail call void %185(ptr noundef nonnull align 8 dereferenceable(72) %33, i32 noundef 45, i32 noundef 45)
  br label %231

186:                                              ; preds = %174
  %187 = icmp eq i16 %165, 24
  br i1 %187, label %188, label %195, !prof !91

188:                                              ; preds = %186
  %189 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %190 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %189, ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 142, ptr noundef nonnull @_ZZN11xercesc_2_718ParserForXMLSchema19parseCharacterClassEbE7dashStr, ptr noundef nonnull @_ZZN11xercesc_2_718ParserForXMLSchema19parseCharacterClassEbE7dashStr, ptr noundef null, ptr noundef null, ptr noundef %191)
          to label %192 unwind label %193

192:                                              ; preds = %188
  tail call void @__cxa_throw(ptr nonnull %189, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

193:                                              ; preds = %188
  %194 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %189) #7
  br label %254

195:                                              ; preds = %186
  %196 = getelementptr inbounds i16, ptr %5, i64 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %197 = trunc i32 %176 to i16
  store i16 %197, ptr %5, align 2, !tbaa !72
  store i16 0, ptr %196, align 2, !tbaa !72
  br i1 %175, label %198, label %206, !prof !92

198:                                              ; preds = %195
  switch i32 %176, label %213 [
    i32 93, label %199
    i32 91, label %199
    i32 45, label %199
  ], !prof !93

199:                                              ; preds = %198, %198, %198
  %200 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %201 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %200, ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 142, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef %202)
          to label %203 unwind label %204

203:                                              ; preds = %199
  call void @__cxa_throw(ptr nonnull %200, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

204:                                              ; preds = %199
  %205 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %200) #7
  br label %229

206:                                              ; preds = %195
  %207 = icmp eq i16 %165, 10
  br i1 %207, label %208, label %213

208:                                              ; preds = %206
  %209 = load ptr, ptr %0, align 8, !tbaa !53
  %210 = getelementptr inbounds ptr, ptr %209, i64 3
  %211 = load ptr, ptr %210, align 8
  %212 = tail call noundef i32 %211(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %213

213:                                              ; preds = %198, %206, %208
  %214 = phi i32 [ %176, %198 ], [ %212, %208 ], [ %176, %206 ]
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %215 = icmp sgt i32 %118, %214
  br i1 %215, label %216, label %225, !prof !91

216:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %217 = trunc i32 %118 to i16
  store i16 %217, ptr %6, align 2, !tbaa !72
  %218 = getelementptr inbounds i16, ptr %6, i64 1
  store i16 0, ptr %218, align 2, !tbaa !72
  %219 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %220 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %219, ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 145, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef %221)
          to label %222 unwind label %223

222:                                              ; preds = %216
  call void @__cxa_throw(ptr nonnull %219, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

223:                                              ; preds = %216
  %224 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %219) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %229

225:                                              ; preds = %213
  %226 = load ptr, ptr %33, align 8, !tbaa !53
  %227 = getelementptr inbounds ptr, ptr %226, i64 12
  %228 = load ptr, ptr %227, align 8
  tail call void %228(ptr noundef nonnull align 8 dereferenceable(72) %33, i32 noundef %118, i32 noundef %214), !prof !94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %231

229:                                              ; preds = %223, %204
  %230 = phi { ptr, i32 } [ %205, %204 ], [ %224, %223 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %254

231:                                              ; preds = %95, %116, %179, %225, %160
  %232 = phi i8 [ 0, %160 ], [ 0, %225 ], [ 0, %179 ], [ 0, %116 ], [ %32, %95 ]
  %233 = phi ptr [ %33, %160 ], [ %33, %225 ], [ %33, %179 ], [ %33, %116 ], [ %96, %95 ]
  %234 = phi i1 [ true, %160 ], [ true, %225 ], [ true, %179 ], [ true, %116 ], [ false, %95 ]
  br i1 %234, label %31, label %235, !prof !95

235:                                              ; preds = %231, %31, %44, %45
  %236 = phi ptr [ %28, %45 ], [ %33, %44 ], [ %33, %31 ], [ %233, %231 ]
  %237 = load i16, ptr %9, align 8, !tbaa !68
  %238 = icmp eq i16 %237, 1
  br i1 %238, label %239, label %246, !prof !75

239:                                              ; preds = %235
  %240 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %241 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %240, ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 138, ptr noundef %242)
          to label %243 unwind label %244

243:                                              ; preds = %239
  tail call void @__cxa_throw(ptr nonnull %240, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

244:                                              ; preds = %239
  %245 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %240) #7
  br label %254

246:                                              ; preds = %235
  %247 = load ptr, ptr %236, align 8, !tbaa !53
  %248 = getelementptr inbounds ptr, ptr %247, i64 14
  %249 = load ptr, ptr %248, align 8
  tail call void %249(ptr noundef nonnull align 8 dereferenceable(72) %236), !prof !96
  %250 = load ptr, ptr %236, align 8, !tbaa !53
  %251 = getelementptr inbounds ptr, ptr %250, i64 15
  %252 = load ptr, ptr %251, align 8
  tail call void %252(ptr noundef nonnull align 8 dereferenceable(72) %236), !prof !97
  %253 = load i16, ptr @_ZN11xercesc_2_710RegxParser8S_NORMALE, align 2, !tbaa !72
  store i16 %253, ptr %8, align 8, !tbaa !73
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret ptr %236

254:                                              ; preds = %74, %114, %135, %152, %172, %193, %229, %244
  %255 = phi { ptr, i32 } [ %245, %244 ], [ %136, %135 ], [ %173, %172 ], [ %194, %193 ], [ %230, %229 ], [ %153, %152 ], [ %75, %74 ], [ %115, %114 ]
  resume { ptr, i32 } %255
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710RegxParser21processBacksolidus_pPEi(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714ParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718ParserForXMLSchema24processCInCharacterClassEPNS_10RangeTokenEi(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !56 {
  %4 = load ptr, ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds ptr, ptr %4, i64 32
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %2)
  %8 = load ptr, ptr %1, align 8, !tbaa !53
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %7)
  ret i32 -1
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema11processLookEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, i16 zeroext %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 292, i32 noundef 294, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #7
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_AEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_BEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_bEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 310, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_CEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds ptr, ptr %2, i64 32
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 67)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_cEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds ptr, ptr %2, i64 32
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 99)
  ret ptr %5
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_gEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 328, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema21processBacksolidus_gtEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 334, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_IEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds ptr, ptr %2, i64 32
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 73)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_iEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_710RegxParser11processNextEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds ptr, ptr %2, i64 32
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 105)
  ret ptr %5
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema21processBacksolidus_ltEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_XEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 358, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_ZEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBacksolidus_zEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 370, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema20processBackReferenceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 376, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema16processConditionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 382, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema18processIndependentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 388, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema16processModifiersEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 394, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema13processParen2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 400, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_718ParserForXMLSchema18parseSetOperationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 406, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #7
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718ParserForXMLSchema20getTokenForShorthandEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !98 {
  switch i32 %1, label %23 [
    i32 100, label %3
    i32 68, label %5
    i32 119, label %7
    i32 87, label %9
    i32 115, label %11
    i32 83, label %13
    i32 99, label %15
    i32 67, label %17
    i32 105, label %19
    i32 73, label %21
  ], !prof !99

3:                                                ; preds = %2
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLDigitE, i1 noundef zeroext false)
  br label %23

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLDigitE, i1 noundef zeroext true)
  br label %23

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L9fgXMLWordE, i1 noundef zeroext false)
  br label %23

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L9fgXMLWordE, i1 noundef zeroext true)
  br label %23

11:                                               ; preds = %2
  %12 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLSpaceE, i1 noundef zeroext false)
  br label %23

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLSpaceE, i1 noundef zeroext true)
  br label %23

15:                                               ; preds = %2
  %16 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLNameCharE, i1 noundef zeroext false)
  br label %23

17:                                               ; preds = %2
  %18 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLNameCharE, i1 noundef zeroext true)
  br label %23

19:                                               ; preds = %2
  %20 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L20fgXMLInitialNameCharE, i1 noundef zeroext false)
  br label %23

21:                                               ; preds = %2
  %22 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L20fgXMLInitialNameCharE, i1 noundef zeroext true)
  br label %23

23:                                               ; preds = %2, %21, %19, %17, %15, %13, %11, %9, %7, %5, %3
  %24 = phi ptr [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ null, %2 ]
  ret ptr %24
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_718ParserForXMLSchema13checkQuestionEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #6 align 2 !prof !71 {
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718ParserForXMLSchema13decodeEscapedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !100 {
  %2 = alloca [3 x i16], align 2
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 8, !tbaa !68
  %5 = icmp eq i16 %4, 10
  br i1 %5, label %13, label %6, !prof !101

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 453, i32 noundef 122, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #7
  br label %31

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !79
  switch i32 %15, label %19 [
    i32 110, label %16
    i32 114, label %17
    i32 116, label %18
    i32 92, label %29
    i32 124, label %29
    i32 46, label %29
    i32 94, label %29
    i32 45, label %29
    i32 63, label %29
    i32 42, label %29
    i32 43, label %29
    i32 123, label %29
    i32 125, label %29
    i32 40, label %29
    i32 41, label %29
    i32 91, label %29
    i32 93, label %29
  ], !prof !102

16:                                               ; preds = %13
  br label %29

17:                                               ; preds = %13
  br label %29

18:                                               ; preds = %13
  br label %29

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #7
  store i16 92, ptr %2, align 2, !tbaa !72
  %20 = getelementptr inbounds i16, ptr %2, i64 1
  %21 = trunc i32 %15 to i16
  store i16 %21, ptr %20, align 2, !tbaa !72
  %22 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 0, ptr %22, align 2, !tbaa !72
  %23 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %24 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str, i32 noundef 485, i32 noundef 152, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %19
  call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

27:                                               ; preds = %19
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %23) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #7
  br label %31

29:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %18, %17, %16
  %30 = phi i32 [ %15, %13 ], [ 9, %18 ], [ 13, %17 ], [ 10, %16 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ]
  ret i32 %30

31:                                               ; preds = %27, %11
  %32 = phi { ptr, i32 } [ %12, %11 ], [ %28, %27 ]
  resume { ptr, i32 } %32
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714ParseException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !56 {
  ret ptr @_ZN11xercesc_2_76XMLUni21fgParseException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714ParseException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714ParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !53
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !56 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !53
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchemaC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710RegxParserC2EPNS_13MemoryManagerE, i64 10}
!36 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchemaD0Ev, ptr @_ZN11xercesc_2_710RegxParserD2Ev, i64 10}
!37 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchemaD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 10}
!38 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema11processPlusEPNS_5TokenE, ptr @_ZN11xercesc_2_710RegxParser11processNextEv, i64 11}
!39 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema11processPlusEPNS_5TokenE, ptr @_ZN11xercesc_2_712TokenFactory13createClosureEPNS_5TokenEb, i64 11}
!40 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema11processPlusEPNS_5TokenE, ptr @_ZN11xercesc_2_712TokenFactory12createConcatEPNS_5TokenES2_, i64 11}
!41 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema15processQuestionEPNS_5TokenE, ptr @_ZN11xercesc_2_710RegxParser11processNextEv, i64 1}
!42 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema15processQuestionEPNS_5TokenE, ptr @_ZN11xercesc_2_712TokenFactory11createUnionEb, i64 1}
!43 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema15processQuestionEPNS_5TokenE, ptr @_ZN11xercesc_2_712TokenFactory11createTokenEt, i64 1}
!44 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema12processParenEv, ptr @_ZN11xercesc_2_710RegxParser11processNextEv, i64 4}
!45 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema12processParenEv, ptr @_ZN11xercesc_2_710RegxParser9parseRegxEb, i64 2}
!46 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema12processParenEv, ptr @_ZN11xercesc_2_712TokenFactory17createParenthesisEPNS_5TokenEi, i64 2}
!47 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema19parseCharacterClassEb, ptr @_ZN11xercesc_2_710RegxParser11processNextEv, i64 37}
!48 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema19parseCharacterClassEb, ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb, i64 8}
!49 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema19parseCharacterClassEb, ptr @_ZN11xercesc_2_718ParserForXMLSchema13decodeEscapedEv, i64 1}
!50 = !{ptr @_ZN11xercesc_2_718ParserForXMLSchema20getTokenForShorthandEi, ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb, i64 12}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 10}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !55, i64 0}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!58, !59, i64 64}
!58 = !{!"_ZTSN11xercesc_2_710RegxParserE", !59, i64 8, !61, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !63, i64 32, !62, i64 36, !63, i64 40, !62, i64 44, !59, i64 48, !59, i64 56, !59, i64 64}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !55, i64 0}
!61 = !{!"bool", !60, i64 0}
!62 = !{!"int", !60, i64 0}
!63 = !{!"short", !60, i64 0}
!64 = !{!"function_entry_count", i64 11}
!65 = !{!"function_entry_count", i64 1}
!66 = !{!"VP", i32 0, i64 1, i64 2602431787464246842, i64 1}
!67 = !{!"function_entry_count", i64 2}
!68 = !{!58, !63, i64 40}
!69 = !{!"branch_weights", i32 2, i32 0}
!70 = !{!58, !59, i64 8}
!71 = !{!"function_entry_count", i64 8}
!72 = !{!63, !63, i64 0}
!73 = !{!58, !63, i64 32}
!74 = !{!"branch_weights", i32 8, i32 0}
!75 = !{!"branch_weights", i32 0, i32 8}
!76 = !{!62, !62, i64 0}
!77 = !{!"branch_weights", i32 0, i32 19}
!78 = !{!"branch_weights", i32 18, i32 1}
!79 = !{!58, !62, i64 44}
!80 = !{!"branch_weights", i32 8, i32 10}
!81 = !{!"branch_weights", i32 10, i32 1, i32 0}
!82 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!83 = !{!"VP", i32 0, i64 1, i64 -8937758928715584246, i64 1}
!84 = !{!"branch_weights", i32 0, i32 11}
!85 = !{!"branch_weights", i32 10, i32 1}
!86 = !{!"branch_weights", i32 10, i32 0, i32 0, i32 0}
!87 = !{!"branch_weights", i32 1, i32 0}
!88 = !{!"branch_weights", i32 0, i32 1}
!89 = !{!"branch_weights", i32 5, i32 6}
!90 = !{!"VP", i32 0, i64 6, i64 -1846495658448105693, i64 6}
!91 = !{!"branch_weights", i32 0, i32 5}
!92 = !{!"branch_weights", i32 5, i32 0}
!93 = !{!"branch_weights", i32 5, i32 0, i32 0, i32 0}
!94 = !{!"VP", i32 0, i64 5, i64 -1846495658448105693, i64 5}
!95 = !{!"branch_weights", i32 11, i32 0}
!96 = !{!"VP", i32 0, i64 8, i64 -5250907211680155883, i64 8}
!97 = !{!"VP", i32 0, i64 8, i64 -467017113302997031, i64 8}
!98 = !{!"function_entry_count", i64 12}
!99 = !{!"branch_weights", i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!100 = !{!"function_entry_count", i64 4}
!101 = !{!"branch_weights", i32 4, i32 0}
!102 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0}
!103 = !{!104, !59, i64 40}
!104 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !105, i64 8, !59, i64 16, !62, i64 24, !59, i64 32, !59, i64 40}
!105 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !60, i64 0}
