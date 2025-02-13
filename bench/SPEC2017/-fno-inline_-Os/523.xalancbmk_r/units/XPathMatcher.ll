; ModuleID = 'XPathMatcher.cpp'
source_filename = "XPathMatcher.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XPathMatcher" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XercesXPath" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XercesLocationPath" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::XercesStep" = type { %"class.xercesc_2_7::XSerializable", i16, ptr }
%"class.xercesc_2_7::XercesNodeTest" = type { %"class.xercesc_2_7::XSerializable", i16, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::BaseRefVectorOf.5" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712XPathMatcher7cleanUpEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEED2Ev = comdat any

$_ZNK11xercesc_2_711XercesXPath16getLocationPathsEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE10addElementEPS2_ = comdat any

$_ZN11xercesc_2_712ValueStackOfIiEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE9elementAtEj = comdat any

$_ZN11xercesc_2_712ValueStackOfIiE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIiE4pushERKi = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj = comdat any

$_ZNK11xercesc_2_718XercesLocationPath11getStepSizeEv = comdat any

$_ZNK11xercesc_2_718XercesLocationPath7getStepEj = comdat any

$_ZNK11xercesc_2_710XercesStep11getAxisTypeEv = comdat any

$_ZNK11xercesc_2_710XercesStep11getNodeTestEv = comdat any

$_ZNK11xercesc_2_714XercesNodeTest7getTypeEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl14getElementNameEv = comdat any

$_ZNK11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_714XercesNodeTest7getNameEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZNK11xercesc_2_77XMLAttr10getAttNameEv = comdat any

$_ZNK11xercesc_2_77XMLAttr7getNameEv = comdat any

$_ZNK11xercesc_2_77XMLAttr8getURIIdEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_77XMLAttr8getValueEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIiE3popEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE12setElementAtEPS2_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED0Ev = comdat any

$_ZN11xercesc_2_712ValueStackOfIiED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE17removeAllElementsEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@_ZTVN11xercesc_2_712XPathMatcherE = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712XPathMatcherE, ptr @_ZN11xercesc_2_712XPathMatcherD2Ev, ptr @_ZN11xercesc_2_712XPathMatcherD0Ev, ptr @_ZNK11xercesc_2_712XPathMatcher15getInitialDepthEv, ptr @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv, ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_712XPathMatcher7matchedEPKtPNS_17DatatypeValidatorEb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [17 x i8] c"XPathMatcher.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_712XPathMatcherE = dso_local constant [30 x i8] c"N11xercesc_2_712XPathMatcherE\00", align 1
@_ZTIN11xercesc_2_712XPathMatcherE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XPathMatcherE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE12setElementAtEPS2_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE = linkonce_odr dso_local constant [52 x i8] c"N11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE12setElementAtEPS2_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE7cleanupEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1

@_ZN11xercesc_2_712XPathMatcherC1EPNS_11XercesXPathEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_13MemoryManagerE
@_ZN11xercesc_2_712XPathMatcherC1EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE
@_ZN11xercesc_2_712XPathMatcherD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712XPathMatcherD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !122 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #12
  %3 = load i32, ptr %1, align 4, !tbaa !123
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !131
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store i32 %3, ptr %9, align 4, !tbaa !123
  %10 = load i32, ptr %6, align 4, !tbaa !131
  %11 = add i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_712XPathMatcherE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  %5 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !135
  %6 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  store ptr %2, ptr %7, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_712XPathMatcher7cleanUpEv to i64), i64 0) #12
  invoke void @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) #12
          to label %18 unwind label %8

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %10 = extractvalue { ptr, i32 } %9, 1
  %11 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = extractvalue { ptr, i32 } %9, 0
  %15 = call ptr @__cxa_begin_catch(ptr %14) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  invoke void @__cxa_rethrow() #14
          to label %24 unwind label %16

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %19 unwind label %21

18:                                               ; preds = %3
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void

19:                                               ; preds = %16, %8
  %20 = phi { ptr, i32 } [ %9, %8 ], [ %17, %16 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  resume { ptr, i32 } %20

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #16
  unreachable

24:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !138 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XPathMatcher7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #0 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = load ptr, ptr %3, align 8, !tbaa !133
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
  %9 = load ptr, ptr %2, align 8, !tbaa !137
  %10 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = load ptr, ptr %9, align 8, !tbaa !133
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #12
  %15 = load ptr, ptr %2, align 8, !tbaa !137
  %16 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  %18 = load ptr, ptr %15, align 8, !tbaa !133
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17) #12
  %21 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !143
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load ptr, ptr %22, align 8, !tbaa !133
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(40) %22) #15
  br label %28

28:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #1 comdat align 2 !prof !139 {
  store ptr %1, ptr %0, align 8, !tbaa !144
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !146
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %65, label %4, !prof !147

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711XercesXPath16getLocationPathsEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #12
  %6 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 6
  store ptr %5, ptr %6, align 8, !tbaa !148
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %10, !prof !147

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !135
  br label %65

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #12
  %12 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  store i32 %11, ptr %12, align 8, !tbaa !135
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %65, label %14, !prof !149

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  %17 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %16) #12
  %18 = load i32, ptr %12, align 8, !tbaa !135
  %19 = load ptr, ptr %15, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef %18, i1 noundef zeroext true, ptr noundef %19) #12
          to label %20 unwind label %51

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  store ptr %17, ptr %21, align 8, !tbaa !143
  %22 = load ptr, ptr %15, align 8, !tbaa !137
  %23 = load i32, ptr %12, align 8, !tbaa !135
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = load ptr, ptr %22, align 8, !tbaa !133
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %25) #12
  %30 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !142
  %31 = load ptr, ptr %15, align 8, !tbaa !137
  %32 = load i32, ptr %12, align 8, !tbaa !135
  %33 = zext i32 %32 to i64
  %34 = shl nuw nsw i64 %33, 2
  %35 = load ptr, ptr %31, align 8, !tbaa !133
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef %34) #12
  %39 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  store ptr %38, ptr %39, align 8, !tbaa !141
  %40 = load ptr, ptr %15, align 8, !tbaa !137
  %41 = load i32, ptr %12, align 8, !tbaa !135
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 2
  %44 = load ptr, ptr %40, align 8, !tbaa !133
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %43) #12
  %48 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  store ptr %47, ptr %48, align 8, !tbaa !140
  %49 = load i32, ptr %12, align 8, !tbaa !135
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %65, label %53, !prof !150

51:                                               ; preds = %14
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %17, ptr noundef %16) #15
  br label %66

53:                                               ; preds = %20, %59
  %54 = phi i32 [ %60, %59 ], [ 0, %20 ]
  %55 = load ptr, ptr %21, align 8, !tbaa !143
  %56 = load ptr, ptr %15, align 8, !tbaa !137
  %57 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %56) #12
  %58 = load ptr, ptr %15, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_712ValueStackOfIiEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %57, i32 noundef 8, ptr noundef %58, i1 noundef zeroext false) #12
          to label %59 unwind label %63

59:                                               ; preds = %53
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE10addElementEPS2_(ptr noundef nonnull align 8 dereferenceable(40) %55, ptr noundef nonnull %57) #12
  %60 = add nuw i32 %54, 1
  %61 = load i32, ptr %12, align 8, !tbaa !135
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %53, label %65, !prof !150, !llvm.loop !151

63:                                               ; preds = %53
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %57, ptr noundef %56) #15
  br label %66

65:                                               ; preds = %59, %20, %8, %10, %2
  ret void

66:                                               ; preds = %63, %51
  %67 = phi { ptr, i32 } [ %64, %63 ], [ %52, %51 ]
  resume { ptr, i32 } %67
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !139 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %2 = load ptr, ptr %0, align 8, !tbaa !144
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !153

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !146
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !146
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !133
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !154
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(72) %11) #12
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_712XPathMatcherE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  %6 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !135
  %7 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  store ptr %2, ptr %8, align 8, !tbaa !155
  %9 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  store ptr %3, ptr %9, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_712XPathMatcher7cleanUpEv to i64), i64 0) #12
  invoke void @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) #12
          to label %20 unwind label %10

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %12 = extractvalue { ptr, i32 } %11, 1
  %13 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = extractvalue { ptr, i32 } %11, 0
  %17 = call ptr @__cxa_begin_catch(ptr %16) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  invoke void @__cxa_rethrow() #14
          to label %26 unwind label %18

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %23

20:                                               ; preds = %4
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void

21:                                               ; preds = %18, %10
  %22 = phi { ptr, i32 } [ %11, %10 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  resume { ptr, i32 } %22

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #16
  unreachable

26:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_712XPathMatcherE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  invoke void @_ZN11xercesc_2_712XPathMatcher7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711XercesXPath16getLocationPathsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !159 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !160
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !139 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE10addElementEPS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !139 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !164
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !165
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIiEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 !prof !166 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !135
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5, !prof !150

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  br label %11

10:                                               ; preds = %11, %1
  ret void

11:                                               ; preds = %5, %11
  %12 = phi i64 [ 0, %5 ], [ %22, %11 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !143
  %14 = trunc i64 %12 to i32
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %14) #12
  tail call void @_ZN11xercesc_2_712ValueStackOfIiE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #12
  %16 = load ptr, ptr %7, align 8, !tbaa !142
  %17 = getelementptr inbounds i32, ptr %16, i64 %12
  store i32 0, ptr %17, align 4, !tbaa !123
  %18 = load ptr, ptr %8, align 8, !tbaa !141
  %19 = getelementptr inbounds i32, ptr %18, i64 %12
  store i32 0, ptr %19, align 4, !tbaa !123
  %20 = load ptr, ptr %9, align 8, !tbaa !140
  %21 = getelementptr inbounds i32, ptr %20, i64 %12
  store i32 0, ptr %21, align 4, !tbaa !123
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %2, align 8, !tbaa !135
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %10, !prof !150, !llvm.loop !167
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !164
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !169

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !165
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIiE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %7 = alloca i32, align 4
  %8 = alloca %"class.xercesc_2_7::QName", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !135
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %17, !prof !172

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  br label %18

17:                                               ; preds = %227, %6
  ret void

18:                                               ; preds = %12, %227
  %19 = phi i64 [ 0, %12 ], [ %228, %227 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  %20 = load ptr, ptr %13, align 8, !tbaa !142
  %21 = getelementptr inbounds i32, ptr %20, i64 %19
  %22 = load i32, ptr %21, align 4, !tbaa !123
  store i32 %22, ptr %7, align 4, !tbaa !123
  %23 = load ptr, ptr %14, align 8, !tbaa !143
  %24 = trunc i64 %19 to i32
  %25 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef %24) #12
  call void @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 4 dereferenceable(4) %7) #12
  %26 = load ptr, ptr %15, align 8, !tbaa !140
  %27 = getelementptr inbounds i32, ptr %26, i64 %19
  %28 = load i32, ptr %27, align 4, !tbaa !123
  %29 = and i32 %28, 5
  %30 = icmp eq i32 %29, 1
  %31 = load ptr, ptr %16, align 8, !tbaa !141
  %32 = getelementptr inbounds i32, ptr %31, i64 %19
  %33 = load i32, ptr %32, align 4, !tbaa !123
  %34 = icmp sgt i32 %33, 0
  %35 = select i1 %30, i1 true, i1 %34
  br i1 %35, label %36, label %39, !prof !173

36:                                               ; preds = %18
  %37 = getelementptr inbounds i32, ptr %31, i64 %19
  %38 = add nsw i32 %33, 1
  store i32 %38, ptr %37, align 4, !tbaa !123
  br label %227

39:                                               ; preds = %18
  %40 = icmp eq i32 %29, 5
  br i1 %40, label %41, label %42, !prof !174

41:                                               ; preds = %39
  store i32 13, ptr %27, align 4, !tbaa !123
  br label %42

42:                                               ; preds = %41, %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !148
  %45 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %44, i32 noundef %24) #12
  %46 = call noundef i32 @_ZNK11xercesc_2_718XercesLocationPath11getStepSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %45) #12
  %47 = load ptr, ptr %13, align 8, !tbaa !142
  %48 = getelementptr inbounds i32, ptr %47, i64 %19
  %49 = load i32, ptr %48, align 4, !tbaa !123
  %50 = icmp slt i32 %49, %46
  br i1 %50, label %51, label %62, !prof !175

51:                                               ; preds = %42, %59
  %52 = phi i32 [ %60, %59 ], [ %49, %42 ]
  %53 = call noundef ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj(ptr noundef nonnull align 8 dereferenceable(16) %45, i32 noundef %52) #12
  %54 = call noundef zeroext i16 @_ZNK11xercesc_2_710XercesStep11getAxisTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %53) #12
  %55 = icmp eq i16 %54, 3
  %56 = load ptr, ptr %13, align 8, !tbaa !142
  %57 = getelementptr inbounds i32, ptr %56, i64 %19
  %58 = load i32, ptr %57, align 4, !tbaa !123
  br i1 %55, label %59, label %62, !prof !176

59:                                               ; preds = %51
  %60 = add nsw i32 %58, 1
  store i32 %60, ptr %57, align 4, !tbaa !123
  %61 = icmp slt i32 %60, %46
  br i1 %61, label %51, label %62, !prof !177, !llvm.loop !178

62:                                               ; preds = %59, %51, %42
  %63 = phi i32 [ %49, %42 ], [ %60, %59 ], [ %58, %51 ]
  %64 = phi ptr [ %47, %42 ], [ %56, %51 ], [ %56, %59 ]
  %65 = icmp eq i32 %63, %46
  br i1 %65, label %68, label %66, !prof !174

66:                                               ; preds = %62
  %67 = icmp slt i32 %63, %46
  br i1 %67, label %71, label %82, !prof !175

68:                                               ; preds = %62
  %69 = load ptr, ptr %15, align 8, !tbaa !140
  %70 = getelementptr inbounds i32, ptr %69, i64 %19
  store i32 1, ptr %70, align 4, !tbaa !123
  br label %227

71:                                               ; preds = %66, %79
  %72 = phi i32 [ %80, %79 ], [ %63, %66 ]
  %73 = call noundef ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj(ptr noundef nonnull align 8 dereferenceable(16) %45, i32 noundef %72) #12
  %74 = call noundef zeroext i16 @_ZNK11xercesc_2_710XercesStep11getAxisTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %73) #12
  %75 = icmp eq i16 %74, 4
  %76 = load ptr, ptr %13, align 8, !tbaa !142
  %77 = getelementptr inbounds i32, ptr %76, i64 %19
  %78 = load i32, ptr %77, align 4, !tbaa !123
  br i1 %75, label %79, label %82, !prof !174

79:                                               ; preds = %71
  %80 = add nsw i32 %78, 1
  store i32 %80, ptr %77, align 4, !tbaa !123
  %81 = icmp slt i32 %80, %46
  br i1 %81, label %71, label %82, !prof !179, !llvm.loop !180

82:                                               ; preds = %79, %71, %66
  %83 = phi i32 [ %63, %66 ], [ %80, %79 ], [ %78, %71 ]
  %84 = phi ptr [ %64, %66 ], [ %76, %71 ], [ %76, %79 ]
  %85 = icmp sgt i32 %83, %63
  %86 = icmp eq i32 %83, %46
  br i1 %86, label %87, label %92, !prof !174

87:                                               ; preds = %82
  %88 = load ptr, ptr %16, align 8, !tbaa !141
  %89 = getelementptr inbounds i32, ptr %88, i64 %19
  %90 = load i32, ptr %89, align 4, !tbaa !123
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %89, align 4, !tbaa !123
  br label %227

92:                                               ; preds = %82
  %93 = load i32, ptr %7, align 4, !tbaa !123
  %94 = icmp eq i32 %83, %93
  %95 = or i1 %85, %94
  br i1 %95, label %96, label %136, !prof !181

96:                                               ; preds = %92
  %97 = call noundef ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj(ptr noundef nonnull align 8 dereferenceable(16) %45, i32 noundef %83) #12
  %98 = call noundef zeroext i16 @_ZNK11xercesc_2_710XercesStep11getAxisTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %97) #12
  %99 = icmp eq i16 %98, 1
  %100 = load ptr, ptr %13, align 8, !tbaa !142
  %101 = getelementptr inbounds i32, ptr %100, i64 %19
  %102 = load i32, ptr %101, align 4, !tbaa !123
  br i1 %99, label %103, label %136, !prof !182

103:                                              ; preds = %96
  %104 = call noundef ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj(ptr noundef nonnull align 8 dereferenceable(16) %45, i32 noundef %102) #12
  %105 = call noundef ptr @_ZNK11xercesc_2_710XercesStep11getNodeTestEv(ptr noundef nonnull align 8 dereferenceable(24) %104) #12
  %106 = call noundef signext i16 @_ZNK11xercesc_2_714XercesNodeTest7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %105) #12
  %107 = icmp eq i16 %106, 1
  br i1 %107, label %108, label %130, !prof !183

108:                                              ; preds = %103
  %109 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #13
  %110 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #12
  %111 = call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %110) #12
  %112 = load ptr, ptr %109, align 8, !tbaa !137
  call void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef %3, ptr noundef %111, i32 noundef %2, ptr noundef %112) #12
  %113 = call noundef ptr @_ZNK11xercesc_2_714XercesNodeTest7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %105) #12
  %114 = invoke noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %113, ptr noundef nonnull align 8 dereferenceable(56) %8) #12
          to label %115 unwind label %122

115:                                              ; preds = %108
  br i1 %114, label %129, label %116, !prof !184

116:                                              ; preds = %115
  %117 = load ptr, ptr %13, align 8, !tbaa !142
  %118 = getelementptr inbounds i32, ptr %117, i64 %19
  %119 = load i32, ptr %118, align 4, !tbaa !123
  %120 = icmp sgt i32 %119, %63
  br i1 %120, label %121, label %124, !prof !185

121:                                              ; preds = %116
  store i32 %63, ptr %118, align 4, !tbaa !123
  br label %135

122:                                              ; preds = %108
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  resume { ptr, i32 } %123

124:                                              ; preds = %116
  %125 = load ptr, ptr %16, align 8, !tbaa !141
  %126 = getelementptr inbounds i32, ptr %125, i64 %19
  %127 = load i32, ptr %126, align 4, !tbaa !123
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %126, align 4, !tbaa !123
  br label %135

129:                                              ; preds = %115
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #13
  br label %130

130:                                              ; preds = %103, %129
  %131 = load ptr, ptr %13, align 8, !tbaa !142
  %132 = getelementptr inbounds i32, ptr %131, i64 %19
  %133 = load i32, ptr %132, align 4, !tbaa !123
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %132, align 4, !tbaa !123
  br label %136

135:                                              ; preds = %124, %121
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #13
  br label %227

136:                                              ; preds = %96, %130, %92
  %137 = phi i32 [ %134, %130 ], [ %83, %92 ], [ %102, %96 ]
  %138 = phi ptr [ %131, %130 ], [ %84, %92 ], [ %100, %96 ]
  %139 = getelementptr inbounds i32, ptr %138, i64 %19
  %140 = icmp eq i32 %137, %46
  br i1 %140, label %141, label %148, !prof !186

141:                                              ; preds = %136
  br i1 %85, label %142, label %145, !prof !187

142:                                              ; preds = %141
  store i32 %63, ptr %139, align 4, !tbaa !123
  %143 = load ptr, ptr %15, align 8, !tbaa !140
  %144 = getelementptr inbounds i32, ptr %143, i64 %19
  store i32 5, ptr %144, align 4, !tbaa !123
  br label %227

145:                                              ; preds = %141
  %146 = load ptr, ptr %15, align 8, !tbaa !140
  %147 = getelementptr inbounds i32, ptr %146, i64 %19
  store i32 1, ptr %147, align 4, !tbaa !123
  br label %227

148:                                              ; preds = %136
  %149 = icmp slt i32 %137, %46
  br i1 %149, label %150, label %227, !prof !188

150:                                              ; preds = %148
  %151 = call noundef ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj(ptr noundef nonnull align 8 dereferenceable(16) %45, i32 noundef %137) #12
  %152 = call noundef zeroext i16 @_ZNK11xercesc_2_710XercesStep11getAxisTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %151) #12
  %153 = icmp eq i16 %152, 2
  br i1 %153, label %154, label %227, !prof !189

154:                                              ; preds = %150
  %155 = icmp eq i32 %5, 0
  br i1 %155, label %210, label %156, !prof !187

156:                                              ; preds = %154
  %157 = load ptr, ptr %13, align 8, !tbaa !142
  %158 = getelementptr inbounds i32, ptr %157, i64 %19
  %159 = load i32, ptr %158, align 4, !tbaa !123
  %160 = call noundef ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj(ptr noundef nonnull align 8 dereferenceable(16) %45, i32 noundef %159) #12
  %161 = call noundef ptr @_ZNK11xercesc_2_710XercesStep11getNodeTestEv(ptr noundef nonnull align 8 dereferenceable(24) %160) #12
  br label %165

162:                                              ; preds = %170
  %163 = add nuw i32 %166, 1
  %164 = icmp eq i32 %163, %5
  br i1 %164, label %210, label %165, !prof !190, !llvm.loop !191

165:                                              ; preds = %156, %162
  %166 = phi i32 [ 0, %156 ], [ %163, %162 ]
  %167 = call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %166) #12
  %168 = call noundef signext i16 @_ZNK11xercesc_2_714XercesNodeTest7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %161) #12
  %169 = icmp eq i16 %168, 1
  br i1 %169, label %170, label %174, !prof !192

170:                                              ; preds = %165
  %171 = call noundef ptr @_ZNK11xercesc_2_714XercesNodeTest7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %161) #12
  %172 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(49) %167) #12
  %173 = call noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %171, ptr noundef nonnull align 8 dereferenceable(56) %172) #12
  br i1 %173, label %174, label %162, !prof !193

174:                                              ; preds = %170, %165
  %175 = load ptr, ptr %13, align 8, !tbaa !142
  %176 = getelementptr inbounds i32, ptr %175, i64 %19
  %177 = load i32, ptr %176, align 4, !tbaa !123
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %176, align 4, !tbaa !123
  %179 = icmp eq i32 %178, %46
  br i1 %179, label %180, label %210, !prof !194

180:                                              ; preds = %174
  %181 = load ptr, ptr %15, align 8, !tbaa !140
  %182 = getelementptr inbounds i32, ptr %181, i64 %19
  store i32 3, ptr %182, align 4, !tbaa !123
  %183 = icmp eq i64 %19, 0
  br i1 %183, label %193, label %184, !prof !195

184:                                              ; preds = %180, %190
  %185 = phi i64 [ %191, %190 ], [ 0, %180 ]
  %186 = getelementptr inbounds i32, ptr %181, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !123
  %188 = and i32 %187, 1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %193, !prof !187

190:                                              ; preds = %184
  %191 = add nuw nsw i64 %185, 1
  %192 = icmp eq i64 %191, %19
  br i1 %192, label %193, label %184, !prof !196, !llvm.loop !197

193:                                              ; preds = %184, %190, %180
  %194 = phi i64 [ 0, %180 ], [ %19, %190 ], [ %185, %184 ]
  %195 = and i64 %194, 4294967295
  %196 = icmp eq i64 %195, %19
  br i1 %196, label %197, label %210, !prof !194

197:                                              ; preds = %193
  %198 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %167) #12
  %199 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %167) #12
  %200 = call noundef ptr @_ZN11xercesc_2_717SchemaElementDecl9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(147) %1, ptr noundef %198, i32 noundef %199) #12
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202, !prof !187

202:                                              ; preds = %197
  %203 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %200) #12
  br label %204

204:                                              ; preds = %197, %202
  %205 = phi ptr [ %203, %202 ], [ null, %197 ]
  %206 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %167) #12
  %207 = load ptr, ptr %0, align 8, !tbaa !133
  %208 = getelementptr inbounds ptr, ptr %207, i64 6
  %209 = load ptr, ptr %208, align 8
  call void %209(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %206, ptr noundef %205, i1 noundef zeroext false) #12
  br label %210

210:                                              ; preds = %162, %174, %204, %193, %154
  %211 = load ptr, ptr %15, align 8, !tbaa !140
  %212 = getelementptr inbounds i32, ptr %211, i64 %19
  %213 = load i32, ptr %212, align 4, !tbaa !123
  %214 = and i32 %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %227, !prof !187

216:                                              ; preds = %210
  %217 = load ptr, ptr %13, align 8, !tbaa !142
  %218 = getelementptr inbounds i32, ptr %217, i64 %19
  %219 = load i32, ptr %218, align 4, !tbaa !123
  %220 = icmp sgt i32 %219, %63
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  store i32 %63, ptr %218, align 4, !tbaa !123
  br label %227

222:                                              ; preds = %216
  %223 = load ptr, ptr %16, align 8, !tbaa !141
  %224 = getelementptr inbounds i32, ptr %223, i64 %19
  %225 = load i32, ptr %224, align 4, !tbaa !123
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %224, align 4, !tbaa !123
  br label %227

227:                                              ; preds = %135, %68, %148, %150, %222, %210, %142, %145, %221, %87, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  %228 = add nuw nsw i64 %19, 1
  %229 = load i32, ptr %9, align 8, !tbaa !135
  %230 = sext i32 %229 to i64
  %231 = icmp slt i64 %228, %230
  br i1 %231, label %18, label %17, !prof !198, !llvm.loop !199
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !200 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !160
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !202

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !203
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !204
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !165
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718XercesLocationPath11getStepSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !201 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !205
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !207

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !208 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !205
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !209

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #12
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK11xercesc_2_710XercesStep11getAxisTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !211
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XercesStep11getNodeTestEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !214 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_714XercesNodeTest7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !216 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !217
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !219 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !220
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !223 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XercesNodeTest7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !226 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !227
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !228 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !229
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !231

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !233
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !165
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #1 comdat align 2 !prof !234 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717SchemaElementDecl9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !238 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !239 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 comdat align 2 !prof !240 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #1 comdat align 2 !prof !249 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !171 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !135
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %11, !prof !172

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %60, %3
  ret void

12:                                               ; preds = %7, %60
  %13 = phi i64 [ 0, %7 ], [ %61, %60 ]
  %14 = phi i32 [ -1, %7 ], [ %65, %60 ]
  %15 = add i32 %14, 1
  %16 = load ptr, ptr %8, align 8, !tbaa !143
  %17 = trunc i64 %13 to i32
  %18 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %17) #12
  %19 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %18) #12
  %20 = load ptr, ptr %9, align 8, !tbaa !142
  %21 = getelementptr inbounds i32, ptr %20, i64 %13
  store i32 %19, ptr %21, align 4, !tbaa !123
  %22 = load ptr, ptr %10, align 8, !tbaa !141
  %23 = getelementptr inbounds i32, ptr %22, i64 %13
  %24 = load i32, ptr %23, align 4, !tbaa !123
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %30, label %26, !prof !251

26:                                               ; preds = %12
  %27 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %28 = icmp eq i64 %13, 0
  %29 = load ptr, ptr %27, align 8, !tbaa !140
  br i1 %28, label %41, label %32, !prof !252

30:                                               ; preds = %12
  %31 = add nsw i32 %24, -1
  store i32 %31, ptr %23, align 4, !tbaa !123
  br label %60

32:                                               ; preds = %26, %38
  %33 = phi i64 [ %39, %38 ], [ 0, %26 ]
  %34 = getelementptr inbounds i32, ptr %29, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !123
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %60, !prof !253

38:                                               ; preds = %32
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %13
  br i1 %40, label %41, label %32, !prof !196, !llvm.loop !254

41:                                               ; preds = %38, %26
  %42 = phi i32 [ 0, %26 ], [ %15, %38 ]
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %29, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !123
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %45, 3
  %48 = icmp eq i32 %47, 3
  %49 = or i1 %46, %48
  br i1 %49, label %60, label %50, !prof !255

50:                                               ; preds = %41
  %51 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #12
  %52 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #12
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  %55 = load ptr, ptr %0, align 8, !tbaa !133
  %56 = getelementptr inbounds ptr, ptr %55, i64 6
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %2, ptr noundef %51, i1 noundef zeroext %54) #12
  %58 = load ptr, ptr %27, align 8, !tbaa !140
  %59 = getelementptr inbounds i32, ptr %58, i64 %13
  store i32 0, ptr %59, align 4, !tbaa !123
  br label %60

60:                                               ; preds = %32, %50, %41, %30
  %61 = add nuw nsw i64 %13, 1
  %62 = load i32, ptr %4, align 8, !tbaa !135
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  %65 = add nsw i32 %14, 1
  br i1 %64, label %12, label %11, !prof !198, !llvm.loop !256
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !200 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !257

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 70, i32 noundef 80, ptr noundef %7) #12
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #13
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #12
  %14 = load i32, ptr %13, align 4, !tbaa !123
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #12
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #1 comdat align 2 !prof !258 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #1 comdat align 2 !prof !262 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !263
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712XPathMatcher9isMatchedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #7 align 2 !prof !264 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !135
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %21, !prof !265

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  br label %12

8:                                                ; preds = %12
  %9 = zext nneg i32 %3 to i64
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %9
  br i1 %11, label %21, label %12, !prof !266, !llvm.loop !267

12:                                               ; preds = %5, %8
  %13 = phi i64 [ 0, %5 ], [ %10, %8 ]
  %14 = getelementptr inbounds i32, ptr %7, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !123
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %15, 13
  %19 = icmp eq i32 %18, 13
  %20 = or i1 %17, %19
  br i1 %20, label %8, label %21, !prof !268

21:                                               ; preds = %8, %12, %1
  %22 = phi i32 [ 0, %1 ], [ %15, %12 ], [ 0, %8 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcher7matchedEPKtPNS_17DatatypeValidatorEb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i1 zeroext %3) unnamed_addr #8 align 2 !prof !269 {
  ret void
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_712XPathMatcher15getInitialDepthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 294, ptr noundef %4) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #13
  resume { ptr, i32 } %7
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !270 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !271
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !271
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !273

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !275
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !165
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !132 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !279 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !280 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !281
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !132 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !131
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !282
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %41, !prof !283

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !284
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !133
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #12
  %22 = load i32, ptr %3, align 4, !tbaa !131
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !127
  br i1 %23, label %26, label %32, !prof !285

26:                                               ; preds = %32, %9
  %27 = load ptr, ptr %14, align 8, !tbaa !284
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %27, align 8, !tbaa !133
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %25) #12
  store ptr %21, ptr %28, align 8, !tbaa !127
  store i32 %13, ptr %6, align 8, !tbaa !282
  br label %41

32:                                               ; preds = %9, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %9 ]
  %34 = getelementptr inbounds i32, ptr %25, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !123
  %36 = getelementptr inbounds i32, ptr %21, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !123
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %3, align 4, !tbaa !131
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %26, !prof !286, !llvm.loop !287

41:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !139 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !288
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !164
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !289
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !162
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !170
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !133
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !162
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !150

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !162
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !165
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !290, !llvm.loop !291
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !288, !range !292, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !147

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !164
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9, !prof !150

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !162
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !165
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_712ValueStackOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #15
  %19 = load i32, ptr %6, align 4, !tbaa !164
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !prof !150, !llvm.loop !293

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !170
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !162
  %30 = load ptr, ptr %27, align 8, !tbaa !133
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #12
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE12setElementAtEPS2_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !164
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !170
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #12
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !288, !range !292, !noundef !154
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !162
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !165
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_712ValueStackOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %25) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #15
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !162
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !164
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !164
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !288, !range !292, !noundef !154
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !162
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !165
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_712ValueStackOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %17) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #15
  %20 = load ptr, ptr %7, align 8, !tbaa !162
  %21 = load i32, ptr %2, align 4, !tbaa !164
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !165
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !294
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !164
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !288, !range !292, !noundef !154
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !162
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !165
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_712ValueStackOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %22) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #15
  %25 = load i32, ptr %3, align 4, !tbaa !164
  br label %26

26:                                               ; preds = %17, %24, %13
  %27 = phi i32 [ %4, %17 ], [ %25, %24 ], [ %4, %13 ]
  %28 = add i32 %27, -1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = icmp ugt i32 %28, %1
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = zext i32 %28 to i64
  br label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !162
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !162
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !162
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !165
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !165
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !295

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !165
  store i32 %28, ptr %3, align 4, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !164
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !164
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !288, !range !292, !noundef !154
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !165
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_712ValueStackOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %15) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #15
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !288, !range !292, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !164
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !162
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !165
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_712ValueStackOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #15
  %19 = load i32, ptr %6, align 4, !tbaa !164
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !296

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !170
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !162
  %30 = load ptr, ptr %27, align 8, !tbaa !133
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !139 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !297 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = load ptr, ptr %3, align 8, !tbaa !133
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !164
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !289
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !147

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !170
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !133
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #12
  %21 = load i32, ptr %3, align 4, !tbaa !164
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !165
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !162
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !165
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !165
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !298

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !170
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !162
  %49 = load ptr, ptr %46, align 8, !tbaa !133
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #12
  store ptr %20, ptr %47, align 8, !tbaa !162
  store i32 %12, ptr %6, align 8, !tbaa !289
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 !prof !297 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store i8 %5, ptr %0, align 8, !tbaa !299
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !131
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !282
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !127
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !284
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = load ptr, ptr %2, align 8, !tbaa !133
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #12
  store ptr %15, ptr %8, align 8, !tbaa !127
  %16 = load i32, ptr %7, align 8, !tbaa !282
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !300 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !131
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !301 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !302 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !131
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !303

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !284
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 206, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !127
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !200 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !131
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !304

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !284
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 156, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %32, label %16, !prof !304

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  %21 = zext i32 %1 to i64
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %24 = add nuw nsw i64 %23, 1
  %25 = getelementptr inbounds i32, ptr %20, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !123
  %27 = getelementptr inbounds i32, ptr %20, i64 %23
  store i32 %26, ptr %27, align 4, !tbaa !123
  %28 = load i32, ptr %3, align 4, !tbaa !131
  %29 = add i32 %28, -1
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %24, %30
  br i1 %31, label %22, label %32, !llvm.loop !305

32:                                               ; preds = %22, %16, %13
  %33 = phi i32 [ %14, %16 ], [ %14, %13 ], [ %29, %22 ]
  store i32 %33, ptr %3, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !132 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !133
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nosync nounwind memory(none) }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!121}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!35 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi, ptr @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj, i64 15025150}
!36 = !{ptr @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE, ptr @_ZNK11xercesc_2_711XercesXPath16getLocationPathsEv, i64 158608}
!37 = !{ptr @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv, i64 158607}
!38 = !{ptr @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 317214}
!39 = !{ptr @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE, ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEC2EjbPNS_13MemoryManagerE, i64 158607}
!40 = !{ptr @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE, ptr @_ZN11xercesc_2_712ValueStackOfIiEC2EjPNS_13MemoryManagerEb, i64 158607}
!41 = !{ptr @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE10addElementEPS2_, i64 158607}
!42 = !{ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 158609}
!43 = !{ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEEC2EPS1_MS1_FvvE, i64 158609}
!44 = !{ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE, i64 158609}
!45 = !{ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEE7releaseEv, i64 158609}
!46 = !{ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEED2Ev, i64 158609}
!47 = !{ptr @_ZN11xercesc_2_712XPathMatcherD2Ev, ptr @_ZN11xercesc_2_712XPathMatcher7cleanUpEv, i64 158609}
!48 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEC2EjbPNS_13MemoryManagerE, i64 158609}
!49 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE10addElementEPS2_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE19ensureExtraCapacityEj, i64 158609}
!50 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 158612}
!51 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_713ValueVectorOfIiEC2EjPNS_13MemoryManagerEb, i64 158612}
!52 = !{ptr @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE9elementAtEj, i64 158609}
!53 = !{ptr @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv, ptr @_ZN11xercesc_2_712ValueStackOfIiE17removeAllElementsEv, i64 158609}
!54 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!55 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!56 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE17removeAllElementsEv, ptr @_ZN11xercesc_2_713ValueVectorOfIiE17removeAllElementsEv, i64 158612}
!57 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE9elementAtEj, i64 14191939}
!58 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi, i64 14191939}
!59 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, i64 1104810}
!60 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_718XercesLocationPath11getStepSizeEv, i64 1104810}
!61 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj, i64 4673361}
!62 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_710XercesStep11getAxisTypeEv, i64 3568572}
!63 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_710XercesStep11getNodeTestEv, i64 1104789}
!64 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_714XercesNodeTest7getTypeEv, i64 1105290}
!65 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_714XMLElementDecl14getElementNameEv, i64 946185}
!66 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_75QName12getLocalPartEv, i64 946185}
!67 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 946185}
!68 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_714XercesNodeTest7getNameEv, i64 1105276}
!69 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_75QNameeqERKS0_, i64 1105276}
!70 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_75QNameD1Ev, i64 946185}
!71 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 159092}
!72 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_77XMLAttr10getAttNameEv, i64 159091}
!73 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, i64 158589}
!74 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, i64 158589}
!75 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_717SchemaElementDecl9getAttDefEPKti, i64 158589}
!76 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv, i64 158588}
!77 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv, i64 158589}
!78 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi, ptr @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi, i64 15024850}
!79 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!80 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!81 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, ptr @__cxa_throw, i64 1}
!82 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!83 = !{ptr @_ZNK11xercesc_2_718XercesLocationPath11getStepSizeEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv, i64 1104824}
!84 = !{ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, i64 4691882}
!85 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!86 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!87 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_throw, i64 1}
!88 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!89 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!90 = !{ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 360316}
!91 = !{ptr @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE9elementAtEj, i64 14191939}
!92 = !{ptr @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, i64 14191939}
!93 = !{ptr @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv, i64 158593}
!94 = !{ptr @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv, i64 158593}
!95 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv, i64 15024850}
!96 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @__cxa_allocate_exception, i64 1}
!97 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv, i64 1}
!98 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!99 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @__cxa_throw, i64 1}
!100 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @__cxa_free_exception, i64 1}
!101 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, i64 15024849}
!102 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, i64 15024849}
!103 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!104 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!105 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, ptr @__cxa_throw, i64 1}
!106 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!107 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 158609}
!108 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev, ptr @_ZN11xercesc_2_712ValueStackOfIiED2Ev, i64 99130}
!109 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 99130}
!110 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED2Ev, i64 158609}
!111 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiED2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIiED2Ev, i64 158612}
!112 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 158644}
!113 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!114 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!115 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_throw, i64 1}
!116 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!117 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!118 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!119 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @__cxa_throw, i64 1}
!120 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @__cxa_free_exception, i64 1}
!121 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!122 = !{!"function_entry_count", i64 15025150}
!123 = !{!124, !124, i64 0}
!124 = !{!"int", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C++ TBAA"}
!127 = !{!128, !130, i64 16}
!128 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIiEE", !129, i64 0, !124, i64 4, !124, i64 8, !130, i64 16, !130, i64 24}
!129 = !{!"bool", !125, i64 0}
!130 = !{!"any pointer", !125, i64 0}
!131 = !{!128, !124, i64 4}
!132 = !{!"function_entry_count", i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"vtable pointer", !126, i64 0}
!135 = !{!136, !124, i64 8}
!136 = !{!"_ZTSN11xercesc_2_712XPathMatcherE", !124, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48, !130, i64 56, !130, i64 64}
!137 = !{!136, !130, i64 64}
!138 = !{!"function_entry_count", i64 5836268}
!139 = !{!"function_entry_count", i64 158609}
!140 = !{!136, !130, i64 16}
!141 = !{!136, !130, i64 24}
!142 = !{!136, !130, i64 32}
!143 = !{!136, !130, i64 40}
!144 = !{!145, !130, i64 0}
!145 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_12XPathMatcherEEE", !130, i64 0, !125, i64 8}
!146 = !{!145, !125, i64 8}
!147 = !{!"branch_weights", i32 1, i32 158610}
!148 = !{!136, !130, i64 48}
!149 = !{!"branch_weights", i32 0, i32 -2147483648}
!150 = !{!"branch_weights", i32 1, i32 158609}
!151 = distinct !{!151, !152}
!152 = !{!"llvm.loop.mustprogress"}
!153 = !{!"branch_weights", i32 158610, i32 1}
!154 = !{}
!155 = !{!136, !130, i64 56}
!156 = !{!157, !130, i64 24}
!157 = !{!"_ZTSN11xercesc_2_711XercesXPathE", !158, i64 0, !124, i64 8, !130, i64 16, !130, i64 24, !130, i64 32}
!158 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!159 = !{!"function_entry_count", i64 158625}
!160 = !{!161, !124, i64 12}
!161 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE", !129, i64 8, !124, i64 12, !124, i64 16, !130, i64 24, !130, i64 32}
!162 = !{!163, !130, i64 24}
!163 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE", !129, i64 8, !124, i64 12, !124, i64 16, !130, i64 24, !130, i64 32}
!164 = !{!163, !124, i64 12}
!165 = !{!130, !130, i64 0}
!166 = !{!"function_entry_count", i64 158612}
!167 = distinct !{!167, !152}
!168 = !{!"function_entry_count", i64 28542487}
!169 = !{!"branch_weights", i32 28542488, i32 1}
!170 = !{!163, !130, i64 32}
!171 = !{!"function_entry_count", i64 14191939}
!172 = !{!"branch_weights", i32 14191939, i32 1}
!173 = !{!"branch_weights", i32 -1743200192, i32 215419068}
!174 = !{!"branch_weights", i32 1, i32 1104810}
!175 = !{!"branch_weights", i32 127, i32 1}
!176 = !{!"branch_weights", i32 158610, i32 1104810}
!177 = !{!"branch_weights", i32 161717505, i32 127}
!178 = distinct !{!178, !152}
!179 = !{!"branch_weights", i32 141415553, i32 127}
!180 = distinct !{!180, !152}
!181 = !{!"branch_weights", i32 -1949997837, i32 393080189}
!182 = !{!"branch_weights", i32 946201, i32 1}
!183 = !{!"branch_weights", i32 946189, i32 13}
!184 = !{!"branch_weights", i32 272620, i32 673570}
!185 = !{!"branch_weights", i32 1, i32 673570}
!186 = !{!"branch_weights", i32 158594, i32 272648}
!187 = !{!"branch_weights", i32 1, i32 158594}
!188 = !{!"branch_weights", i32 272648, i32 1}
!189 = !{!"branch_weights", i32 158594, i32 114055}
!190 = !{!"branch_weights", i32 1, i32 159093}
!191 = distinct !{!191, !152}
!192 = !{!"branch_weights", i32 159094, i32 1}
!193 = !{!"branch_weights", i32 158594, i32 501}
!194 = !{!"branch_weights", i32 158594, i32 1}
!195 = !{!"branch_weights", i32 158593, i32 1}
!196 = !{!"branch_weights", i32 1, i32 0}
!197 = distinct !{!197, !152}
!198 = !{!"branch_weights", i32 1, i32 14191939}
!199 = distinct !{!199, !152}
!200 = !{!"function_entry_count", i64 15024850}
!201 = !{!"function_entry_count", i64 1104825}
!202 = !{!"branch_weights", i32 1104826, i32 1}
!203 = !{!161, !130, i64 32}
!204 = !{!161, !130, i64 24}
!205 = !{!206, !130, i64 8}
!206 = !{!"_ZTSN11xercesc_2_718XercesLocationPathE", !158, i64 0, !130, i64 8}
!207 = !{!"branch_weights", i32 1, i32 1104826}
!208 = !{!"function_entry_count", i64 4691883}
!209 = !{!"branch_weights", i32 1, i32 4691884}
!210 = !{!"function_entry_count", i64 3587090}
!211 = !{!212, !213, i64 8}
!212 = !{!"_ZTSN11xercesc_2_710XercesStepE", !158, i64 0, !213, i64 8, !130, i64 16}
!213 = !{!"short", !125, i64 0}
!214 = !{!"function_entry_count", i64 1104793}
!215 = !{!212, !130, i64 16}
!216 = !{!"function_entry_count", i64 1105293}
!217 = !{!218, !213, i64 8}
!218 = !{!"_ZTSN11xercesc_2_714XercesNodeTestE", !158, i64 0, !213, i64 8, !130, i64 16}
!219 = !{!"function_entry_count", i64 946188}
!220 = !{!221, !130, i64 16}
!221 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !158, i64 0, !130, i64 8, !130, i64 16, !222, i64 24, !124, i64 28, !129, i64 32}
!222 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !125, i64 0}
!223 = !{!"function_entry_count", i64 6668307}
!224 = !{!225, !130, i64 32}
!225 = !{!"_ZTSN11xercesc_2_75QNameE", !158, i64 0, !124, i64 8, !124, i64 12, !124, i64 16, !124, i64 20, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48}
!226 = !{!"function_entry_count", i64 1105281}
!227 = !{!218, !130, i64 16}
!228 = !{!"function_entry_count", i64 1366334}
!229 = !{!230, !124, i64 12}
!230 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !129, i64 8, !124, i64 12, !124, i64 16, !130, i64 24, !130, i64 32}
!231 = !{!"branch_weights", i32 1366335, i32 1}
!232 = !{!230, !130, i64 32}
!233 = !{!230, !130, i64 24}
!234 = !{!"function_entry_count", i64 159093}
!235 = !{!236, !130, i64 24}
!236 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !129, i64 0, !237, i64 4, !124, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !129, i64 48}
!237 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !125, i64 0}
!238 = !{!"function_entry_count", i64 159625}
!239 = !{!"function_entry_count", i64 360316}
!240 = !{!"function_entry_count", i64 550665}
!241 = !{!242, !130, i64 80}
!242 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !243, i64 0, !124, i64 56, !246, i64 60, !247, i64 64, !248, i64 68, !130, i64 72, !130, i64 80, !130, i64 88, !130, i64 96, !130, i64 104, !130, i64 112}
!243 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !158, i64 0, !244, i64 8, !237, i64 12, !245, i64 16, !129, i64 20, !129, i64 21, !124, i64 24, !130, i64 32, !130, i64 40, !130, i64 48}
!244 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !125, i64 0}
!245 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !125, i64 0}
!246 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !125, i64 0}
!247 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !125, i64 0}
!248 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !125, i64 0}
!249 = !{!"function_entry_count", i64 360600}
!250 = !{!236, !130, i64 16}
!251 = !{!"branch_weights", i32 13760700, i32 431241}
!252 = !{!"branch_weights", i32 431240, i32 1}
!253 = !{!"branch_weights", i32 1, i32 431241}
!254 = distinct !{!254, !152}
!255 = !{!"branch_weights", i32 -1592441283, i32 1571998596}
!256 = distinct !{!256, !152}
!257 = !{!"branch_weights", i32 1, i32 15024851}
!258 = !{!"function_entry_count", i64 495341}
!259 = !{!260, !130, i64 136}
!260 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !221, i64 0, !261, i64 36, !248, i64 40, !246, i64 44, !247, i64 48, !124, i64 52, !124, i64 56, !124, i64 60, !124, i64 64, !130, i64 72, !130, i64 80, !130, i64 88, !130, i64 96, !130, i64 104, !130, i64 112, !130, i64 120, !130, i64 128, !130, i64 136, !129, i64 144, !129, i64 145, !129, i64 146}
!261 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !125, i64 0}
!262 = !{!"function_entry_count", i64 992866}
!263 = !{!260, !124, i64 64}
!264 = !{!"function_entry_count", i64 13326576}
!265 = !{!"branch_weights", i32 12461213, i32 1}
!266 = !{!"branch_weights", i32 12461213, i32 865364}
!267 = distinct !{!267, !152}
!268 = !{!"branch_weights", i32 -1662277033, i32 182825891}
!269 = !{!"function_entry_count", i64 158593}
!270 = !{!"function_entry_count", i64 1104857}
!271 = !{!272, !124, i64 12}
!272 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE", !129, i64 8, !124, i64 12, !124, i64 16, !130, i64 24, !130, i64 32}
!273 = !{!"branch_weights", i32 4691884, i32 1}
!274 = !{!272, !130, i64 32}
!275 = !{!272, !130, i64 24}
!276 = !{!277, !130, i64 40}
!277 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !278, i64 8, !130, i64 16, !124, i64 24, !130, i64 32, !130, i64 40}
!278 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !125, i64 0}
!279 = !{!"function_entry_count", i64 2192223}
!280 = !{!"function_entry_count", i64 6553673}
!281 = !{!225, !124, i64 20}
!282 = !{!128, !124, i64 8}
!283 = !{!"branch_weights", i32 1581, i32 15023571}
!284 = !{!128, !130, i64 24}
!285 = !{!"branch_weights", i32 1, i32 1580}
!286 = !{!"branch_weights", i32 11127, i32 1580}
!287 = distinct !{!287, !152}
!288 = !{!163, !129, i64 8}
!289 = !{!163, !124, i64 16}
!290 = !{!"branch_weights", i32 158609, i32 1}
!291 = distinct !{!291, !152}
!292 = !{i8 0, i8 2}
!293 = distinct !{!293, !152}
!294 = distinct !{!294, !152}
!295 = distinct !{!295, !152}
!296 = distinct !{!296, !152}
!297 = !{!"function_entry_count", i64 158644}
!298 = distinct !{!298, !152}
!299 = !{!128, !129, i64 0}
!300 = !{!"function_entry_count", i64 15857793}
!301 = !{!"function_entry_count", i64 32}
!302 = !{!"function_entry_count", i64 15025182}
!303 = !{!"branch_weights", i32 15025183, i32 1}
!304 = !{!"branch_weights", i32 15024851, i32 1}
!305 = distinct !{!305, !152}
