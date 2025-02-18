; ModuleID = 'XPathMatcher.cpp'
source_filename = "XPathMatcher.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XPathMatcher" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XercesXPath" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XercesLocationPath" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::BaseRefVectorOf.5" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XercesStep" = type { %"class.xercesc_2_7::XSerializable", i16, ptr }
%"class.xercesc_2_7::XercesNodeTest" = type { %"class.xercesc_2_7::XSerializable", i16, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_712XPathMatcher7cleanUpEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712ValueStackOfIiE3popEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE12setElementAtEPS2_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED0Ev = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_712XPathMatcherE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
          to label %17 unwind label %7

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %9 = extractvalue { ptr, i32 } %8, 1
  %10 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = extractvalue { ptr, i32 } %8, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #15
  invoke void @__cxa_rethrow() #16
          to label %32 unwind label %15

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %18 unwind label %29

17:                                               ; preds = %3
  ret void

18:                                               ; preds = %15, %7
  %19 = phi ptr [ null, %15 ], [ @_ZN11xercesc_2_712XPathMatcher7cleanUpEv, %7 ]
  %20 = phi ptr [ null, %15 ], [ %0, %7 ]
  %21 = phi { ptr, i32 } [ %16, %15 ], [ %8, %7 ]
  %22 = icmp eq ptr %20, null
  %23 = or i1 %11, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(72) %20)
          to label %28 unwind label %25

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #17
  unreachable

28:                                               ; preds = %18, %24
  resume { ptr, i32 } %21

29:                                               ; preds = %15
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #17
  unreachable

32:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XPathMatcher7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #2 comdat align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = load ptr, ptr %3, align 8, !tbaa !50
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
  %9 = load ptr, ptr %2, align 8, !tbaa !58
  %10 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = load ptr, ptr %9, align 8, !tbaa !50
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11)
  %15 = load ptr, ptr %2, align 8, !tbaa !58
  %16 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = load ptr, ptr %15, align 8, !tbaa !50
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17)
  %21 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load ptr, ptr %22, align 8, !tbaa !50
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(40) %22) #15
  br label %28

28:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef readonly %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %159, label %4, !prof !64

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !68
  %8 = icmp eq ptr %6, null
  br i1 %8, label %12, label %9, !prof !64

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %6, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !69
  br label %12

12:                                               ; preds = %4, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !53
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %159, label %16, !prof !64

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %18)
  %20 = load i32, ptr %14, align 8, !tbaa !53
  %21 = load ptr, ptr %17, align 8, !tbaa !58
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE, i64 0, inrange i32 0, i64 2), ptr %19, align 8, !tbaa !50
  %22 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %19, i64 0, i32 1
  store i8 1, ptr %22, align 8, !tbaa !72
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %19, i64 0, i32 2
  store i32 0, ptr %23, align 4, !tbaa !74
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %19, i64 0, i32 3
  store i32 %20, ptr %24, align 8, !tbaa !75
  %25 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %19, i64 0, i32 4
  store ptr null, ptr %25, align 8, !tbaa !76
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %19, i64 0, i32 5
  store ptr %21, ptr %26, align 8, !tbaa !77
  %27 = zext i32 %20 to i64
  %28 = shl nuw nsw i64 %27, 3
  %29 = load ptr, ptr %21, align 8, !tbaa !50
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %28)
          to label %33 unwind label %74, !prof !78

33:                                               ; preds = %16
  store ptr %32, ptr %25, align 8, !tbaa !76
  %34 = icmp eq i32 %20, 0
  br i1 %34, label %43, label %35, !prof !79

35:                                               ; preds = %33
  %36 = zext i32 %20 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 0, %35 ], [ %41, %37 ]
  %39 = load ptr, ptr %25, align 8, !tbaa !76
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  store ptr null, ptr %40, align 8, !tbaa !80
  %41 = add nuw nsw i64 %38, 1
  %42 = icmp eq i64 %41, %36
  br i1 %42, label %43, label %37, !prof !81, !llvm.loop !82

43:                                               ; preds = %37, %33
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE, i64 0, inrange i32 0, i64 2), ptr %19, align 8, !tbaa !50
  %44 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  store ptr %19, ptr %44, align 8, !tbaa !62
  %45 = load ptr, ptr %17, align 8, !tbaa !58
  %46 = load i32, ptr %14, align 8, !tbaa !53
  %47 = zext i32 %46 to i64
  %48 = shl nuw nsw i64 %47, 2
  %49 = load ptr, ptr %45, align 8, !tbaa !50
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef %48), !prof !78
  %53 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  store ptr %52, ptr %53, align 8, !tbaa !61
  %54 = load ptr, ptr %17, align 8, !tbaa !58
  %55 = load i32, ptr %14, align 8, !tbaa !53
  %56 = zext i32 %55 to i64
  %57 = shl nuw nsw i64 %56, 2
  %58 = load ptr, ptr %54, align 8, !tbaa !50
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %57), !prof !78
  %62 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  store ptr %61, ptr %62, align 8, !tbaa !60
  %63 = load ptr, ptr %17, align 8, !tbaa !58
  %64 = load i32, ptr %14, align 8, !tbaa !53
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i64 %65, 2
  %67 = load ptr, ptr %63, align 8, !tbaa !50
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %63, i64 noundef %66), !prof !78
  %71 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  store ptr %70, ptr %71, align 8, !tbaa !59
  %72 = load i32, ptr %14, align 8, !tbaa !53
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %159, label %76, !prof !79

74:                                               ; preds = %16
  %75 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %19, ptr noundef %18) #15
  br label %160

76:                                               ; preds = %43, %147
  %77 = phi i32 [ %154, %147 ], [ 0, %43 ]
  %78 = load ptr, ptr %44, align 8, !tbaa !62
  %79 = load ptr, ptr %17, align 8, !tbaa !58
  %80 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %79)
  %81 = load ptr, ptr %17, align 8, !tbaa !58
  %82 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %80, i64 0, i32 1
  store i8 0, ptr %82, align 8, !tbaa !85
  %83 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %80, i64 0, i32 1, i32 1
  store i32 0, ptr %83, align 4, !tbaa !87
  %84 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %80, i64 0, i32 1, i32 2
  store i32 8, ptr %84, align 8, !tbaa !88
  %85 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %80, i64 0, i32 1, i32 3
  store ptr null, ptr %85, align 8, !tbaa !89
  %86 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %80, i64 0, i32 1, i32 4
  store ptr %81, ptr %86, align 8, !tbaa !90
  %87 = load ptr, ptr %81, align 8, !tbaa !50
  %88 = getelementptr inbounds ptr, ptr %87, i64 2
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %81, i64 noundef 32)
          to label %91 unwind label %157, !prof !78

91:                                               ; preds = %76
  store ptr %90, ptr %85, align 8, !tbaa !89
  %92 = load i32, ptr %84, align 8, !tbaa !88
  %93 = zext i32 %92 to i64
  %94 = shl nuw nsw i64 %93, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %90, i8 0, i64 %94, i1 false), !prof !91
  %95 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %78, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !74
  %97 = add i32 %96, 1
  %98 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %78, i64 0, i32 3
  %99 = load i32, ptr %98, align 8, !tbaa !75
  %100 = icmp ugt i32 %97, %99
  br i1 %100, label %101, label %147, !prof !64

101:                                              ; preds = %91
  %102 = lshr i32 %99, 1
  %103 = add i32 %102, %99
  %104 = tail call i32 @llvm.umax.i32(i32 %97, i32 %103)
  %105 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %78, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !77
  %107 = zext i32 %104 to i64
  %108 = shl nuw nsw i64 %107, 3
  %109 = load ptr, ptr %106, align 8, !tbaa !50
  %110 = getelementptr inbounds ptr, ptr %109, i64 2
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(8) %106, i64 noundef %108)
  %113 = load i32, ptr %95, align 4, !tbaa !74
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %101
  %116 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %78, i64 0, i32 4
  %117 = zext i32 %113 to i64
  br label %132

118:                                              ; preds = %132
  %119 = trunc i64 %138 to i32
  br label %120

120:                                              ; preds = %118, %101
  %121 = phi i32 [ 0, %101 ], [ %119, %118 ]
  %122 = icmp ult i32 %121, %104
  br i1 %122, label %123, label %140

123:                                              ; preds = %120
  %124 = zext i32 %121 to i64
  %125 = shl nuw nsw i64 %124, 3
  %126 = getelementptr i8, ptr %112, i64 %125
  %127 = xor i32 %121, -1
  %128 = add i32 %104, %127
  %129 = zext i32 %128 to i64
  %130 = shl nuw nsw i64 %129, 3
  %131 = add nuw nsw i64 %130, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %126, i8 0, i64 %131, i1 false), !tbaa !80
  br label %140

132:                                              ; preds = %132, %115
  %133 = phi i64 [ 0, %115 ], [ %138, %132 ]
  %134 = load ptr, ptr %116, align 8, !tbaa !76
  %135 = getelementptr inbounds ptr, ptr %134, i64 %133
  %136 = load ptr, ptr %135, align 8, !tbaa !80
  %137 = getelementptr inbounds ptr, ptr %112, i64 %133
  store ptr %136, ptr %137, align 8, !tbaa !80
  %138 = add nuw nsw i64 %133, 1
  %139 = icmp eq i64 %138, %117
  br i1 %139, label %118, label %132, !llvm.loop !92

140:                                              ; preds = %123, %120
  %141 = load ptr, ptr %105, align 8, !tbaa !77
  %142 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %78, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !76
  %144 = load ptr, ptr %141, align 8, !tbaa !50
  %145 = getelementptr inbounds ptr, ptr %144, i64 3
  %146 = load ptr, ptr %145, align 8
  tail call void %146(ptr noundef nonnull align 8 dereferenceable(8) %141, ptr noundef %143)
  store ptr %112, ptr %142, align 8, !tbaa !76
  store i32 %104, ptr %98, align 8, !tbaa !75
  br label %147

147:                                              ; preds = %91, %140
  %148 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %78, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !76
  %150 = load i32, ptr %95, align 4, !tbaa !74
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %149, i64 %151
  store ptr %80, ptr %152, align 8, !tbaa !80
  %153 = add i32 %150, 1
  store i32 %153, ptr %95, align 4, !tbaa !74
  %154 = add nuw i32 %77, 1
  %155 = load i32, ptr %14, align 8, !tbaa !53
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %76, label %159, !prof !79, !llvm.loop !93

157:                                              ; preds = %76
  %158 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %80, ptr noundef %79) #15
  br label %160

159:                                              ; preds = %147, %43, %12, %2
  ret void

160:                                              ; preds = %157, %74
  %161 = phi { ptr, i32 } [ %158, %157 ], [ %75, %74 ]
  resume { ptr, i32 } %161
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !49 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_712XPathMatcherE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  store ptr %2, ptr %7, align 8, !tbaa !94
  %8 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  store ptr %3, ptr %8, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
          to label %19 unwind label %9, !prof !95

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = extractvalue { ptr, i32 } %10, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #15
  invoke void @__cxa_rethrow() #16
          to label %34 unwind label %17

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %31

19:                                               ; preds = %4
  ret void

20:                                               ; preds = %17, %9
  %21 = phi ptr [ null, %17 ], [ @_ZN11xercesc_2_712XPathMatcher7cleanUpEv, %9 ]
  %22 = phi ptr [ null, %17 ], [ %0, %9 ]
  %23 = phi { ptr, i32 } [ %18, %17 ], [ %10, %9 ]
  %24 = icmp eq ptr %22, null
  %25 = or i1 %13, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(72) %22)
          to label %30 unwind label %27

27:                                               ; preds = %26
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #17
  unreachable

30:                                               ; preds = %20, %26
  resume { ptr, i32 } %23

31:                                               ; preds = %17
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #17
  unreachable

34:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_712XPathMatcherE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = load ptr, ptr %3, align 8, !tbaa !50
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %32, !prof !96

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !58
  %11 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %32, !prof !96

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !58
  %18 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = load ptr, ptr %17, align 8, !tbaa !50
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19)
          to label %23 unwind label %32, !prof !96

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27, !prof !64

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !50
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(40) %25) #15, !prof !97
  br label %31

31:                                               ; preds = %27, %23
  ret void

32:                                               ; preds = %16, %9, %1
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !53
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5, !prof !79

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %7, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8
  br label %17

16:                                               ; preds = %29, %1
  ret void

17:                                               ; preds = %5, %29
  %18 = phi i64 [ 0, %5 ], [ %37, %29 ]
  %19 = load i32, ptr %8, align 4, !tbaa !74
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %29, label %22, !prof !98

22:                                               ; preds = %17
  %23 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %7, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %23) #15
  resume { ptr, i32 } %28

29:                                               ; preds = %17
  %30 = load ptr, ptr %9, align 8, !tbaa !76
  %31 = getelementptr inbounds ptr, ptr %30, i64 %18
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %32, i64 0, i32 1, i32 1
  store i32 0, ptr %33, align 4, !tbaa !87
  %34 = getelementptr inbounds i32, ptr %11, i64 %18
  store i32 0, ptr %34, align 4, !tbaa !99
  %35 = getelementptr inbounds i32, ptr %13, i64 %18
  store i32 0, ptr %35, align 4, !tbaa !99
  %36 = getelementptr inbounds i32, ptr %15, i64 %18
  store i32 0, ptr %36, align 4, !tbaa !99
  %37 = add nuw nsw i64 %18, 1
  %38 = load i32, ptr %2, align 8, !tbaa !53
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %17, label %16, !prof !79, !llvm.loop !100
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %4, i32 noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %7 = alloca %"class.xercesc_2_7::QName", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !53
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15, !prof !102

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  br label %16

15:                                               ; preds = %397, %6
  ret void

16:                                               ; preds = %11, %397
  %17 = phi i64 [ 0, %11 ], [ %398, %397 ]
  %18 = load ptr, ptr %12, align 8, !tbaa !61
  %19 = getelementptr inbounds i32, ptr %18, i64 %17
  %20 = load i32, ptr %19, align 4, !tbaa !99
  %21 = load ptr, ptr %13, align 8, !tbaa !62
  %22 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %17, %24
  br i1 %25, label %35, label %26, !prof !98

26:                                               ; preds = %16
  %27 = call ptr @__cxa_allocate_exception(i64 48) #15
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %21, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %29)
          to label %30 unwind label %33

30:                                               ; preds = %26
  call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

31:                                               ; preds = %325, %291, %250, %216, %183, %152, %121, %33
  %32 = phi { ptr, i32 } [ %34, %33 ], [ %122, %121 ], [ %153, %152 ], [ %184, %183 ], [ %217, %216 ], [ %251, %250 ], [ %292, %291 ], [ %326, %325 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %27) #15
  br label %31

35:                                               ; preds = %16
  %36 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %21, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = getelementptr inbounds ptr, ptr %37, i64 %17
  %39 = load ptr, ptr %38, align 8, !tbaa !80
  %40 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !87
  %42 = add i32 %41, 1
  %43 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !88
  %45 = icmp ugt i32 %42, %44
  br i1 %45, label %46, label %80, !prof !103

46:                                               ; preds = %35
  %47 = uitofp i32 %41 to double
  %48 = fmul double %47, 1.250000e+00
  %49 = fptoui double %48 to i32
  %50 = call i32 @llvm.umax.i32(i32 %42, i32 %49)
  %51 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !90
  %53 = zext i32 %50 to i64
  %54 = shl nuw nsw i64 %53, 2
  %55 = load ptr, ptr %52, align 8, !tbaa !50
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %52, i64 noundef %54), !prof !104
  %59 = load i32, ptr %40, align 4, !tbaa !87
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61, !prof !105

61:                                               ; preds = %46
  %62 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !89
  br label %71

64:                                               ; preds = %71, %46
  %65 = load ptr, ptr %51, align 8, !tbaa !90
  %66 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !89
  %68 = load ptr, ptr %65, align 8, !tbaa !50
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %67), !prof !106
  store ptr %58, ptr %66, align 8, !tbaa !89
  store i32 %50, ptr %43, align 8, !tbaa !88
  br label %80

71:                                               ; preds = %71, %61
  %72 = phi i64 [ 0, %61 ], [ %76, %71 ]
  %73 = getelementptr inbounds i32, ptr %63, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !99
  %75 = getelementptr inbounds i32, ptr %58, i64 %72
  store i32 %74, ptr %75, align 4, !tbaa !99
  %76 = add nuw nsw i64 %72, 1
  %77 = load i32, ptr %40, align 4, !tbaa !87
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %71, label %64, !prof !107, !llvm.loop !108

80:                                               ; preds = %35, %64
  %81 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !89
  %83 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !87
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %82, i64 %85
  store i32 %20, ptr %86, align 4, !tbaa !99
  %87 = load i32, ptr %83, align 4, !tbaa !87
  %88 = add i32 %87, 1
  store i32 %88, ptr %83, align 4, !tbaa !87
  %89 = load ptr, ptr %14, align 8, !tbaa !59
  %90 = getelementptr inbounds i32, ptr %89, i64 %17
  %91 = load i32, ptr %90, align 4, !tbaa !99
  %92 = and i32 %91, 5
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %100, label %94, !prof !109

94:                                               ; preds = %80
  %95 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !60
  %97 = getelementptr inbounds i32, ptr %96, i64 %17
  %98 = load i32, ptr %97, align 4, !tbaa !99
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %106, !prof !110

100:                                              ; preds = %94, %80
  %101 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !60
  %103 = getelementptr inbounds i32, ptr %102, i64 %17
  %104 = load i32, ptr %103, align 4, !tbaa !99
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %103, align 4, !tbaa !99
  br label %397

106:                                              ; preds = %94
  %107 = icmp eq i32 %92, 5
  br i1 %107, label %108, label %109, !prof !111

108:                                              ; preds = %106
  store i32 13, ptr %90, align 4, !tbaa !99
  br label %109

109:                                              ; preds = %108, %106
  %110 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !68
  %112 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !69
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %17, %114
  br i1 %115, label %123, label %116, !prof !112

116:                                              ; preds = %109
  %117 = call ptr @__cxa_allocate_exception(i64 48) #15
  %118 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %111, i64 0, i32 5
  %119 = load ptr, ptr %118, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %117, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %119)
          to label %120 unwind label %121

120:                                              ; preds = %116
  call void @__cxa_throw(ptr nonnull %117, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

121:                                              ; preds = %116
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %117) #15
  br label %31

123:                                              ; preds = %109
  %124 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %111, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !114
  %126 = getelementptr inbounds ptr, ptr %125, i64 %17
  %127 = load ptr, ptr %126, align 8, !tbaa !80
  %128 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !115
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131, !prof !111

131:                                              ; preds = %123
  %132 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %129, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !117
  br label %134

134:                                              ; preds = %123, %131
  %135 = phi i32 [ %133, %131 ], [ 0, %123 ]
  %136 = load ptr, ptr %12, align 8, !tbaa !61
  %137 = getelementptr inbounds i32, ptr %136, i64 %17
  %138 = load i32, ptr %137, align 4, !tbaa !99
  %139 = icmp slt i32 %138, %135
  br i1 %139, label %140, label %165, !prof !119

140:                                              ; preds = %134
  %141 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %129, i64 0, i32 2
  %142 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %129, i64 0, i32 4
  br label %143

143:                                              ; preds = %140, %162
  %144 = phi i32 [ %138, %140 ], [ %163, %162 ]
  %145 = load i32, ptr %141, align 4, !tbaa !117
  %146 = icmp ugt i32 %145, %144
  br i1 %146, label %154, label %147, !prof !120

147:                                              ; preds = %143
  %148 = call ptr @__cxa_allocate_exception(i64 48) #15
  %149 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %129, i64 0, i32 5
  %150 = load ptr, ptr %149, align 8, !tbaa !121
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %148, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %150)
          to label %151 unwind label %152

151:                                              ; preds = %147
  call void @__cxa_throw(ptr nonnull %148, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

152:                                              ; preds = %147
  %153 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %148) #15
  br label %31

154:                                              ; preds = %143
  %155 = load ptr, ptr %142, align 8, !tbaa !122
  %156 = zext i32 %144 to i64
  %157 = getelementptr inbounds ptr, ptr %155, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !80
  %159 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %158, i64 0, i32 1
  %160 = load i16, ptr %159, align 8, !tbaa !123
  %161 = icmp eq i16 %160, 3
  br i1 %161, label %162, label %165, !prof !126

162:                                              ; preds = %154
  %163 = add i32 %144, 1
  store i32 %163, ptr %137, align 4, !tbaa !99
  %164 = icmp eq i32 %163, %135
  br i1 %164, label %165, label %143, !prof !127, !llvm.loop !128

165:                                              ; preds = %154, %162, %134
  %166 = phi i32 [ %138, %134 ], [ %144, %154 ], [ %135, %162 ]
  %167 = icmp eq i32 %166, %135
  br i1 %167, label %173, label %168, !prof !111

168:                                              ; preds = %165
  %169 = load i32, ptr %137, align 4, !tbaa !99
  %170 = icmp slt i32 %169, %135
  br i1 %170, label %171, label %197, !prof !119

171:                                              ; preds = %168
  %172 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %129, i64 0, i32 2
  br label %174

173:                                              ; preds = %165
  store i32 1, ptr %90, align 4, !tbaa !99
  br label %397

174:                                              ; preds = %171, %194
  %175 = phi i32 [ %169, %171 ], [ %195, %194 ]
  %176 = load i32, ptr %172, align 4, !tbaa !117
  %177 = icmp ugt i32 %176, %175
  br i1 %177, label %185, label %178, !prof !120

178:                                              ; preds = %174
  %179 = call ptr @__cxa_allocate_exception(i64 48) #15
  %180 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %129, i64 0, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !121
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %179, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %181)
          to label %182 unwind label %183

182:                                              ; preds = %178
  call void @__cxa_throw(ptr nonnull %179, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

183:                                              ; preds = %178
  %184 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %179) #15
  br label %31

185:                                              ; preds = %174
  %186 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %129, i64 0, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !122
  %188 = zext i32 %175 to i64
  %189 = getelementptr inbounds ptr, ptr %187, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !80
  %191 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %190, i64 0, i32 1
  %192 = load i16, ptr %191, align 8, !tbaa !123
  %193 = icmp eq i16 %192, 4
  br i1 %193, label %194, label %197, !prof !111

194:                                              ; preds = %185
  %195 = add i32 %175, 1
  store i32 %195, ptr %137, align 4, !tbaa !99
  %196 = icmp eq i32 %195, %135
  br i1 %196, label %197, label %174, !prof !111, !llvm.loop !129

197:                                              ; preds = %185, %194, %168
  %198 = phi i32 [ %169, %168 ], [ %175, %185 ], [ %135, %194 ]
  %199 = icmp sgt i32 %198, %166
  %200 = icmp eq i32 %198, %135
  br i1 %200, label %201, label %204, !prof !111

201:                                              ; preds = %197
  %202 = load i32, ptr %97, align 4, !tbaa !99
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %97, align 4, !tbaa !99
  br label %397

204:                                              ; preds = %197
  %205 = icmp eq i32 %198, %20
  %206 = or i1 %205, %199
  br i1 %206, label %207, label %267, !prof !130

207:                                              ; preds = %204
  %208 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %129, i64 0, i32 2
  %209 = load i32, ptr %208, align 4, !tbaa !117
  %210 = icmp ugt i32 %209, %198
  br i1 %210, label %218, label %211, !prof !120

211:                                              ; preds = %207
  %212 = call ptr @__cxa_allocate_exception(i64 48) #15
  %213 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %129, i64 0, i32 5
  %214 = load ptr, ptr %213, align 8, !tbaa !121
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %212, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %214)
          to label %215 unwind label %216

215:                                              ; preds = %211
  call void @__cxa_throw(ptr nonnull %212, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

216:                                              ; preds = %211
  %217 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %212) #15
  br label %31

218:                                              ; preds = %207
  %219 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %129, i64 0, i32 4
  %220 = load ptr, ptr %219, align 8, !tbaa !122
  %221 = zext i32 %198 to i64
  %222 = getelementptr inbounds ptr, ptr %220, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !80
  %224 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %223, i64 0, i32 1
  %225 = load i16, ptr %224, align 8, !tbaa !123
  %226 = icmp eq i16 %225, 1
  br i1 %226, label %227, label %267, !prof !131

227:                                              ; preds = %218
  %228 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %223, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !132
  %230 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %229, i64 0, i32 1
  %231 = load i16, ptr %230, align 8, !tbaa !133
  %232 = icmp eq i16 %231, 1
  br i1 %232, label %233, label %259, !prof !135

233:                                              ; preds = %227
  %234 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %235 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #15
  %236 = load ptr, ptr %234, align 8, !tbaa !136
  %237 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %236, i64 0, i32 6
  %238 = load ptr, ptr %237, align 8, !tbaa !139
  %239 = load ptr, ptr %235, align 8, !tbaa !58
  call void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %3, ptr noundef %238, i32 noundef %2, ptr noundef %239)
  %240 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %229, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !141
  %242 = invoke noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %241, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %243 unwind label %250, !prof !142

243:                                              ; preds = %233
  br i1 %242, label %257, label %244, !prof !143

244:                                              ; preds = %243
  %245 = load ptr, ptr %12, align 8, !tbaa !61
  %246 = getelementptr inbounds i32, ptr %245, i64 %17
  %247 = load i32, ptr %246, align 4, !tbaa !99
  %248 = icmp sgt i32 %247, %166
  br i1 %248, label %249, label %252, !prof !144

249:                                              ; preds = %244
  store i32 %166, ptr %246, align 4, !tbaa !99
  br label %257

250:                                              ; preds = %233
  %251 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  br label %31

252:                                              ; preds = %244
  %253 = load ptr, ptr %95, align 8, !tbaa !60
  %254 = getelementptr inbounds i32, ptr %253, i64 %17
  %255 = load i32, ptr %254, align 4, !tbaa !99
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %254, align 4, !tbaa !99
  br label %257

257:                                              ; preds = %243, %252, %249
  %258 = phi i32 [ 4, %249 ], [ 4, %252 ], [ 0, %243 ]
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  br i1 %242, label %259, label %264, !prof !143

259:                                              ; preds = %257, %227
  %260 = load ptr, ptr %12, align 8, !tbaa !61
  %261 = getelementptr inbounds i32, ptr %260, i64 %17
  %262 = load i32, ptr %261, align 4, !tbaa !99
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr %261, align 4, !tbaa !99
  br label %264

264:                                              ; preds = %257, %259
  %265 = phi i32 [ 0, %259 ], [ %258, %257 ]
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %397, !prof !145

267:                                              ; preds = %204, %264, %218
  %268 = load ptr, ptr %12, align 8, !tbaa !61
  %269 = getelementptr inbounds i32, ptr %268, i64 %17
  %270 = load i32, ptr %269, align 4, !tbaa !99
  %271 = icmp eq i32 %270, %135
  br i1 %271, label %272, label %279, !prof !146

272:                                              ; preds = %267
  br i1 %199, label %273, label %276, !prof !147

273:                                              ; preds = %272
  store i32 %166, ptr %269, align 4, !tbaa !99
  %274 = load ptr, ptr %14, align 8, !tbaa !59
  %275 = getelementptr inbounds i32, ptr %274, i64 %17
  store i32 5, ptr %275, align 4, !tbaa !99
  br label %397

276:                                              ; preds = %272
  %277 = load ptr, ptr %14, align 8, !tbaa !59
  %278 = getelementptr inbounds i32, ptr %277, i64 %17
  store i32 1, ptr %278, align 4, !tbaa !99
  br label %397

279:                                              ; preds = %267
  %280 = icmp slt i32 %270, %135
  br i1 %280, label %281, label %397, !prof !148

281:                                              ; preds = %279
  %282 = load ptr, ptr %128, align 8, !tbaa !115, !nonnull !149, !noundef !149
  %283 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %282, i64 0, i32 2
  %284 = load i32, ptr %283, align 4, !tbaa !117
  %285 = icmp ugt i32 %284, %270
  br i1 %285, label %293, label %286, !prof !120

286:                                              ; preds = %281
  %287 = call ptr @__cxa_allocate_exception(i64 48) #15
  %288 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %282, i64 0, i32 5
  %289 = load ptr, ptr %288, align 8, !tbaa !121
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %287, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %289)
          to label %290 unwind label %291

290:                                              ; preds = %286
  call void @__cxa_throw(ptr nonnull %287, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

291:                                              ; preds = %286
  %292 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %287) #15
  br label %31

293:                                              ; preds = %281
  %294 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %282, i64 0, i32 4
  %295 = load ptr, ptr %294, align 8, !tbaa !122
  %296 = zext i32 %270 to i64
  %297 = getelementptr inbounds ptr, ptr %295, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !80
  %299 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %298, i64 0, i32 1
  %300 = load i16, ptr %299, align 8, !tbaa !123
  %301 = icmp eq i16 %300, 2
  br i1 %301, label %302, label %397, !prof !150

302:                                              ; preds = %293
  %303 = icmp eq i32 %5, 0
  br i1 %303, label %380, label %304, !prof !147

304:                                              ; preds = %302
  %305 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %4, i64 0, i32 2
  %306 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %4, i64 0, i32 4
  %307 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %298, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !132
  %309 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %308, i64 0, i32 1
  %310 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %308, i64 0, i32 2
  br label %315

311:                                              ; preds = %333
  %312 = zext i32 %5 to i64
  %313 = add nuw nsw i64 %316, 1
  %314 = icmp eq i64 %313, %312
  br i1 %314, label %380, label %315, !prof !151, !llvm.loop !152

315:                                              ; preds = %304, %311
  %316 = phi i64 [ 0, %304 ], [ %313, %311 ]
  %317 = load i32, ptr %305, align 4, !tbaa !153
  %318 = zext i32 %317 to i64
  %319 = icmp ult i64 %316, %318
  br i1 %319, label %327, label %320, !prof !155

320:                                              ; preds = %315
  %321 = call ptr @__cxa_allocate_exception(i64 48) #15
  %322 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %4, i64 0, i32 5
  %323 = load ptr, ptr %322, align 8, !tbaa !156
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %321, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %323)
          to label %324 unwind label %325

324:                                              ; preds = %320
  call void @__cxa_throw(ptr nonnull %321, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

325:                                              ; preds = %320
  %326 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %321) #15
  br label %31

327:                                              ; preds = %315
  %328 = load ptr, ptr %306, align 8, !tbaa !157
  %329 = getelementptr inbounds ptr, ptr %328, i64 %316
  %330 = load ptr, ptr %329, align 8, !tbaa !80
  %331 = load i16, ptr %309, align 8, !tbaa !133
  %332 = icmp eq i16 %331, 1
  br i1 %332, label %333, label %338, !prof !158

333:                                              ; preds = %327
  %334 = load ptr, ptr %310, align 8, !tbaa !141
  %335 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %330, i64 0, i32 6
  %336 = load ptr, ptr %335, align 8, !tbaa !159
  %337 = call noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %334, ptr noundef nonnull align 8 dereferenceable(56) %336)
  br i1 %337, label %338, label %311, !prof !162

338:                                              ; preds = %333, %327
  %339 = load ptr, ptr %12, align 8, !tbaa !61
  %340 = getelementptr inbounds i32, ptr %339, i64 %17
  %341 = load i32, ptr %340, align 4, !tbaa !99
  %342 = add nsw i32 %341, 1
  store i32 %342, ptr %340, align 4, !tbaa !99
  %343 = icmp eq i32 %342, %135
  br i1 %343, label %344, label %380, !prof !163

344:                                              ; preds = %338
  %345 = load ptr, ptr %14, align 8, !tbaa !59
  %346 = getelementptr inbounds i32, ptr %345, i64 %17
  store i32 3, ptr %346, align 4, !tbaa !99
  %347 = icmp eq i64 %17, 0
  br i1 %347, label %357, label %348, !prof !119

348:                                              ; preds = %344, %354
  %349 = phi i64 [ %355, %354 ], [ 0, %344 ]
  %350 = getelementptr inbounds i32, ptr %345, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !99
  %352 = and i32 %351, 1
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %348
  %355 = add nuw nsw i64 %349, 1
  %356 = icmp eq i64 %355, %17
  br i1 %356, label %357, label %348, !prof !119, !llvm.loop !164

357:                                              ; preds = %348, %354, %344
  %358 = phi i64 [ 0, %344 ], [ %349, %348 ], [ %17, %354 ]
  %359 = and i64 %358, 4294967295
  %360 = icmp eq i64 %359, %17
  br i1 %360, label %361, label %380, !prof !163

361:                                              ; preds = %357
  %362 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %330, i64 0, i32 6
  %363 = load ptr, ptr %362, align 8, !tbaa !159
  %364 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %363, i64 0, i32 6
  %365 = load ptr, ptr %364, align 8, !tbaa !139
  %366 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %363, i64 0, i32 4
  %367 = load i32, ptr %366, align 4, !tbaa !165
  %368 = call noundef ptr @_ZN11xercesc_2_717SchemaElementDecl9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(147) %1, ptr noundef %365, i32 noundef %367)
  %369 = icmp eq ptr %368, null
  br i1 %369, label %373, label %370, !prof !147

370:                                              ; preds = %361
  %371 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %368, i64 0, i32 6
  %372 = load ptr, ptr %371, align 8, !tbaa !166
  br label %373

373:                                              ; preds = %361, %370
  %374 = phi ptr [ %372, %370 ], [ null, %361 ]
  %375 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %330, i64 0, i32 5
  %376 = load ptr, ptr %375, align 8, !tbaa !174
  %377 = load ptr, ptr %0, align 8, !tbaa !50
  %378 = getelementptr inbounds ptr, ptr %377, i64 6
  %379 = load ptr, ptr %378, align 8
  call void %379(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %376, ptr noundef %374, i1 noundef zeroext false), !prof !175
  br label %380

380:                                              ; preds = %311, %338, %373, %357, %302
  %381 = load ptr, ptr %14, align 8, !tbaa !59
  %382 = getelementptr inbounds i32, ptr %381, i64 %17
  %383 = load i32, ptr %382, align 4, !tbaa !99
  %384 = and i32 %383, 1
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %397, !prof !147

386:                                              ; preds = %380
  %387 = load ptr, ptr %12, align 8, !tbaa !61
  %388 = getelementptr inbounds i32, ptr %387, i64 %17
  %389 = load i32, ptr %388, align 4, !tbaa !99
  %390 = icmp sgt i32 %389, %166
  br i1 %390, label %391, label %392

391:                                              ; preds = %386
  store i32 %166, ptr %388, align 4, !tbaa !99
  br label %397

392:                                              ; preds = %386
  %393 = load ptr, ptr %95, align 8, !tbaa !60
  %394 = getelementptr inbounds i32, ptr %393, i64 %17
  %395 = load i32, ptr %394, align 4, !tbaa !99
  %396 = add nsw i32 %395, 1
  store i32 %396, ptr %394, align 4, !tbaa !99
  br label %397

397:                                              ; preds = %173, %279, %293, %392, %380, %273, %276, %264, %391, %201, %100
  %398 = add nuw nsw i64 %17, 1
  %399 = load i32, ptr %8, align 8, !tbaa !53
  %400 = sext i32 %399 to i64
  %401 = icmp slt i64 %398, %400
  br i1 %401, label %16, label %15, !prof !176, !llvm.loop !177
}

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #9

declare noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #8

declare noundef ptr @_ZN11xercesc_2_717SchemaElementDecl9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %11, !prof !102

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %78, %3
  ret void

12:                                               ; preds = %7, %78
  %13 = phi i64 [ 0, %7 ], [ %79, %78 ]
  %14 = phi i32 [ -1, %7 ], [ %83, %78 ]
  %15 = add i32 %14, 1
  %16 = load ptr, ptr %8, align 8, !tbaa !62
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !74
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %13, %19
  br i1 %20, label %28, label %21, !prof !98

21:                                               ; preds = %12
  %22 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %16, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #15
  resume { ptr, i32 } %27

28:                                               ; preds = %12
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %16, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = getelementptr inbounds ptr, ptr %30, i64 %13
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %32)
  %34 = load ptr, ptr %9, align 8, !tbaa !61
  %35 = getelementptr inbounds i32, ptr %34, i64 %13
  store i32 %33, ptr %35, align 4, !tbaa !99
  %36 = load ptr, ptr %10, align 8, !tbaa !60
  %37 = getelementptr inbounds i32, ptr %36, i64 %13
  %38 = load i32, ptr %37, align 4, !tbaa !99
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %42, label %40, !prof !178

40:                                               ; preds = %28
  %41 = icmp eq i64 %13, 0
  br i1 %41, label %55, label %44, !prof !119

42:                                               ; preds = %28
  %43 = add nsw i32 %38, -1
  store i32 %43, ptr %37, align 4, !tbaa !99
  br label %78

44:                                               ; preds = %40, %52
  %45 = phi i64 [ %53, %52 ], [ 0, %40 ]
  %46 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = getelementptr inbounds i32, ptr %47, i64 %45
  %49 = load i32, ptr %48, align 4, !tbaa !99
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %44
  %53 = add nuw nsw i64 %45, 1
  %54 = icmp eq i64 %53, %13
  br i1 %54, label %55, label %44, !prof !119, !llvm.loop !179

55:                                               ; preds = %52, %40
  %56 = phi i32 [ 0, %40 ], [ %15, %52 ]
  %57 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds i32, ptr %58, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !99
  %62 = icmp eq i32 %61, 0
  %63 = and i32 %61, 3
  %64 = icmp eq i32 %63, 3
  %65 = or i1 %62, %64
  br i1 %65, label %78, label %66, !prof !180

66:                                               ; preds = %55
  %67 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 19
  %68 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 9
  %69 = load ptr, ptr %67, align 8, !tbaa !181
  %70 = load i32, ptr %68, align 8, !tbaa !184
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  %73 = load ptr, ptr %0, align 8, !tbaa !50
  %74 = getelementptr inbounds ptr, ptr %73, i64 6
  %75 = load ptr, ptr %74, align 8
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %2, ptr noundef %69, i1 noundef zeroext %72), !prof !185
  %76 = load ptr, ptr %57, align 8, !tbaa !59
  %77 = getelementptr inbounds i32, ptr %76, i64 %13
  store i32 0, ptr %77, align 4, !tbaa !99
  br label %78

78:                                               ; preds = %44, %66, %55, %42
  %79 = add nuw nsw i64 %13, 1
  %80 = load i32, ptr %4, align 8, !tbaa !53
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %79, %81
  %83 = add nsw i32 %14, 1
  br i1 %82, label %12, label %11, !prof !176, !llvm.loop !186
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !188

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 70, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !87
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !189

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.3, i32 noundef 206, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !89
  %31 = zext i32 %16 to i64
  %32 = getelementptr inbounds i32, ptr %30, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !99
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef %16)
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712XPathMatcher9isMatchedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #10 align 2 !prof !190 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !53
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %21, !prof !191

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  br label %12

8:                                                ; preds = %12
  %9 = zext nneg i32 %3 to i64
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %9
  br i1 %11, label %21, label %12, !prof !192, !llvm.loop !193

12:                                               ; preds = %5, %8
  %13 = phi i64 [ 0, %5 ], [ %10, %8 ]
  %14 = getelementptr inbounds i32, ptr %7, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !99
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %15, 13
  %19 = icmp eq i32 %18, 13
  %20 = or i1 %17, %19
  br i1 %20, label %8, label %21, !prof !194

21:                                               ; preds = %8, %12, %1
  %22 = phi i32 [ 0, %1 ], [ 0, %8 ], [ %15, %12 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712XPathMatcher7matchedEPKtPNS_17DatatypeValidatorEb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i1 zeroext %3) unnamed_addr #11 align 2 !prof !195 {
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_712XPathMatcher15getInitialDepthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %3 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #15
  resume { ptr, i32 } %7
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #9

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !50
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #9

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !50
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !72, !range !199, !noundef !149
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %34, label %5, !prof !64

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9, !prof !79

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi i64 [ 0, %9 ], [ %30, %29 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17, !prof !64

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %15, i64 0, i32 1, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %15, i64 0, i32 1, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  %22 = load ptr, ptr %19, align 8, !tbaa !50
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %21)
          to label %28 unwind label %25, !prof !200

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #17
  unreachable

28:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #15
  br label %29

29:                                               ; preds = %11, %28
  %30 = add nuw nsw i64 %12, 1
  %31 = load i32, ptr %6, align 4, !tbaa !74
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %11, label %34, !prof !79, !llvm.loop !201

34:                                               ; preds = %29, %5, %1
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = load ptr, ptr %36, align 8, !tbaa !50
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %38)
          to label %42 unwind label %43, !prof !96

42:                                               ; preds = %34
  ret void

43:                                               ; preds = %34
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !63 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE12setElementAtEPS2_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !72, !range !199, !noundef !149
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !90
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !89
  %30 = load ptr, ptr %27, align 8, !tbaa !50
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
          to label %36 unwind label %33, !prof !200

33:                                               ; preds = %25
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #17
  unreachable

36:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #15
  br label %37

37:                                               ; preds = %18, %36, %14
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  %40 = zext i32 %2 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  store ptr %1, ptr %41, align 8, !tbaa !80
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %32, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !74
  ret void

11:                                               ; preds = %5, %32
  %12 = phi i64 [ 0, %5 ], [ %35, %32 ]
  %13 = load i8, ptr %6, align 8, !tbaa !72, !range !199, !noundef !149
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !80
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %18, i64 0, i32 1, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !90
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %18, i64 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = load ptr, ptr %22, align 8, !tbaa !50
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %24)
          to label %31 unwind label %28, !prof !200

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #17
  unreachable

31:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #15
  br label %32

32:                                               ; preds = %15, %31, %11
  %33 = load ptr, ptr %8, align 8, !tbaa !76
  %34 = getelementptr inbounds ptr, ptr %33, i64 %12
  store ptr null, ptr %34, align 8, !tbaa !80
  %35 = add nuw nsw i64 %12, 1
  %36 = load i32, ptr %2, align 4, !tbaa !74
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %11, label %9, !llvm.loop !202
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !72, !range !199, !noundef !149
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %22, i64 0, i32 1, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !90
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %22, i64 0, i32 1, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = load ptr, ptr %26, align 8, !tbaa !50
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %28)
          to label %35 unwind label %32, !prof !200

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #17
  unreachable

35:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #15
  br label %36

36:                                               ; preds = %17, %35, %13
  %37 = load i32, ptr %3, align 4, !tbaa !74
  %38 = add i32 %37, -1
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = icmp ugt i32 %38, %1
  br i1 %41, label %42, label %54

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %44 = zext i32 %1 to i64
  %45 = zext i32 %38 to i64
  br label %46

46:                                               ; preds = %42, %46
  %47 = phi i64 [ %44, %42 ], [ %49, %46 ]
  %48 = load ptr, ptr %43, align 8, !tbaa !76
  %49 = add nuw nsw i64 %47, 1
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !80
  %52 = getelementptr inbounds ptr, ptr %48, i64 %47
  store ptr %51, ptr %52, align 8, !tbaa !80
  %53 = icmp eq i64 %49, %45
  br i1 %53, label %54, label %46, !llvm.loop !203

54:                                               ; preds = %46, %40, %36
  %55 = phi i32 [ %1, %36 ], [ %38, %40 ], [ %38, %46 ]
  %56 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  %58 = zext i32 %55 to i64
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  store ptr null, ptr %59, align 8, !tbaa !80
  store i32 %38, ptr %3, align 4, !tbaa !74
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !74
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !72, !range !199, !noundef !149
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %15, i64 0, i32 1, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %15, i64 0, i32 1, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  %22 = load ptr, ptr %19, align 8, !tbaa !50
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %21)
          to label %28 unwind label %25, !prof !200

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #17
  unreachable

28:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #15
  br label %29

29:                                               ; preds = %10, %28, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !72, !range !199, !noundef !149
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi i64 [ 0, %9 ], [ %30, %29 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %15, i64 0, i32 1, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %15, i64 0, i32 1, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  %22 = load ptr, ptr %19, align 8, !tbaa !50
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %21)
          to label %28 unwind label %25, !prof !200

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #17
  unreachable

28:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #15
  br label %29

29:                                               ; preds = %11, %28
  %30 = add nuw nsw i64 %12, 1
  %31 = load i32, ptr %6, align 4, !tbaa !74
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %11, label %34, !llvm.loop !204

34:                                               ; preds = %29, %5, %1
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = load ptr, ptr %36, align 8, !tbaa !50
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %38)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !49 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !87
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !205

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 156, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %34, label %16, !prof !205

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4, !tbaa !87
  %18 = add i32 %17, -1
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !89
  %23 = zext i32 %1 to i64
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi i64 [ %23, %20 ], [ %26, %24 ]
  %26 = add nuw nsw i64 %25, 1
  %27 = getelementptr inbounds i32, ptr %22, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !99
  %29 = getelementptr inbounds i32, ptr %22, i64 %25
  store i32 %28, ptr %29, align 4, !tbaa !99
  %30 = load i32, ptr %3, align 4, !tbaa !87
  %31 = add i32 %30, -1
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %26, %32
  br i1 %33, label %24, label %34, !llvm.loop !206

34:                                               ; preds = %24, %16, %13
  %35 = phi i32 [ %4, %13 ], [ %17, %16 ], [ %30, %24 ]
  %36 = add i32 %35, -1
  store i32 %36, ptr %3, align 4, !tbaa !87
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !50
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 317218}
!36 = !{ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712XPathMatcher4initEPNS_11XercesXPathE, i64 158609}
!37 = !{ptr @_ZN11xercesc_2_712XPathMatcherD2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED0Ev, i64 158609}
!38 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 946188}
!39 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_75QNameeqERKS0_, i64 1105281}
!40 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_75QNameD1Ev, i64 946188}
!41 = !{ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_717SchemaElementDecl9getAttDefEPKti, i64 158593}
!42 = !{ptr @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, i64 14191939}
!43 = !{ptr @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_712XPathMatcher7matchedEPKtPNS_17DatatypeValidatorEb, i64 158593}
!44 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, i64 15024850}
!45 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 158609}
!46 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED2Ev, i64 158609}
!47 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12ValueStackOfIiEEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 158609}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !52, i64 0}
!52 = !{!"Simple C++ TBAA"}
!53 = !{!54, !55, i64 8}
!54 = !{!"_ZTSN11xercesc_2_712XPathMatcherE", !55, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !52, i64 0}
!57 = !{!"any pointer", !56, i64 0}
!58 = !{!54, !57, i64 64}
!59 = !{!54, !57, i64 16}
!60 = !{!54, !57, i64 24}
!61 = !{!54, !57, i64 32}
!62 = !{!54, !57, i64 40}
!63 = !{!"function_entry_count", i64 158609}
!64 = !{!"branch_weights", i32 0, i32 158609}
!65 = !{!66, !57, i64 24}
!66 = !{!"_ZTSN11xercesc_2_711XercesXPathE", !67, i64 0, !55, i64 8, !57, i64 16, !57, i64 24, !57, i64 32}
!67 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!68 = !{!54, !57, i64 48}
!69 = !{!70, !55, i64 12}
!70 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE", !71, i64 8, !55, i64 12, !55, i64 16, !57, i64 24, !57, i64 32}
!71 = !{!"bool", !56, i64 0}
!72 = !{!73, !71, i64 8}
!73 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12ValueStackOfIiEEEE", !71, i64 8, !55, i64 12, !55, i64 16, !57, i64 24, !57, i64 32}
!74 = !{!73, !55, i64 12}
!75 = !{!73, !55, i64 16}
!76 = !{!73, !57, i64 24}
!77 = !{!73, !57, i64 32}
!78 = !{!"VP", i32 0, i64 158609, i64 8345045103670217670, i64 158609}
!79 = !{!"branch_weights", i32 1, i32 158608}
!80 = !{!57, !57, i64 0}
!81 = !{!"branch_weights", i32 158608, i32 1}
!82 = distinct !{!82, !83, !84}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !{!86, !71, i64 0}
!86 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIiEE", !71, i64 0, !55, i64 4, !55, i64 8, !57, i64 16, !57, i64 24}
!87 = !{!86, !55, i64 4}
!88 = !{!86, !55, i64 8}
!89 = !{!86, !57, i64 16}
!90 = !{!86, !57, i64 24}
!91 = !{!"VP", i32 1, i64 158609, i64 32, i64 158609}
!92 = distinct !{!92, !83, !84}
!93 = distinct !{!93, !83, !84}
!94 = !{!54, !57, i64 56}
!95 = !{!"branch_weights", i32 158609, i32 0}
!96 = !{!"VP", i32 0, i64 158609, i64 -7405368087501025645, i64 158609}
!97 = !{!"VP", i32 0, i64 158609, i64 -8551753537430183326, i64 158609}
!98 = !{!"branch_weights", i32 28542487, i32 0}
!99 = !{!55, !55, i64 0}
!100 = distinct !{!100, !83, !84}
!101 = !{!"function_entry_count", i64 14191939}
!102 = !{!"branch_weights", i32 14191938, i32 1}
!103 = !{!"branch_weights", i32 1580, i32 15023570}
!104 = !{!"VP", i32 0, i64 1492, i64 8345045103670217670, i64 1492}
!105 = !{!"branch_weights", i32 1, i32 1579}
!106 = !{!"VP", i32 0, i64 1492, i64 -7405368087501025645, i64 1492}
!107 = !{!"branch_weights", i32 11127, i32 1579}
!108 = distinct !{!108, !83, !84}
!109 = !{!"branch_weights", i32 1413540, i32 12778399}
!110 = !{!"branch_weights", i32 11673590, i32 1104809}
!111 = !{!"branch_weights", i32 0, i32 1104809}
!112 = !{!"branch_weights", i32 1104825, i32 0}
!113 = !{!70, !57, i64 32}
!114 = !{!70, !57, i64 24}
!115 = !{!116, !57, i64 8}
!116 = !{!"_ZTSN11xercesc_2_718XercesLocationPathE", !67, i64 0, !57, i64 8}
!117 = !{!118, !55, i64 12}
!118 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE", !71, i64 8, !55, i64 12, !55, i64 16, !57, i64 24, !57, i64 32}
!119 = !{!"branch_weights", i32 1, i32 0}
!120 = !{!"branch_weights", i32 4691883, i32 0}
!121 = !{!118, !57, i64 32}
!122 = !{!118, !57, i64 24}
!123 = !{!124, !125, i64 8}
!124 = !{!"_ZTSN11xercesc_2_710XercesStepE", !67, i64 0, !125, i64 8, !57, i64 16}
!125 = !{!"short", !56, i64 0}
!126 = !{!"branch_weights", i32 158609, i32 1104809}
!127 = !{!"branch_weights", i32 0, i32 1263418}
!128 = distinct !{!128, !83, !84}
!129 = distinct !{!129, !83, !84}
!130 = !{!"branch_weights", i32 946200, i32 158609}
!131 = !{!"branch_weights", i32 946200, i32 0}
!132 = !{!124, !57, i64 16}
!133 = !{!134, !125, i64 8}
!134 = !{!"_ZTSN11xercesc_2_714XercesNodeTestE", !67, i64 0, !125, i64 8, !57, i64 16}
!135 = !{!"branch_weights", i32 946188, i32 12}
!136 = !{!137, !57, i64 16}
!137 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !67, i64 0, !57, i64 8, !57, i64 16, !138, i64 24, !55, i64 28, !71, i64 32}
!138 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !56, i64 0}
!139 = !{!140, !57, i64 32}
!140 = !{!"_ZTSN11xercesc_2_75QNameE", !67, i64 0, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48}
!141 = !{!134, !57, i64 16}
!142 = !{!"branch_weights", i32 946188, i32 0}
!143 = !{!"branch_weights", i32 272619, i32 673569}
!144 = !{!"branch_weights", i32 0, i32 673569}
!145 = !{!"branch_weights", i32 272631, i32 673569}
!146 = !{!"branch_weights", i32 158593, i32 272647}
!147 = !{!"branch_weights", i32 0, i32 158593}
!148 = !{!"branch_weights", i32 272647, i32 0}
!149 = !{}
!150 = !{!"branch_weights", i32 158593, i32 114054}
!151 = !{!"branch_weights", i32 0, i32 159093}
!152 = distinct !{!152, !83, !84}
!153 = !{!154, !55, i64 12}
!154 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !71, i64 8, !55, i64 12, !55, i64 16, !57, i64 24, !57, i64 32}
!155 = !{!"branch_weights", i32 1366334, i32 0}
!156 = !{!154, !57, i64 32}
!157 = !{!154, !57, i64 24}
!158 = !{!"branch_weights", i32 159093, i32 0}
!159 = !{!160, !57, i64 24}
!160 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !71, i64 0, !161, i64 4, !55, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !71, i64 48}
!161 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !56, i64 0}
!162 = !{!"branch_weights", i32 158593, i32 500}
!163 = !{!"branch_weights", i32 158593, i32 0}
!164 = distinct !{!164, !83, !84}
!165 = !{!140, !55, i64 20}
!166 = !{!167, !57, i64 80}
!167 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !168, i64 0, !55, i64 56, !171, i64 60, !172, i64 64, !173, i64 68, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !57, i64 112}
!168 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !67, i64 0, !169, i64 8, !161, i64 12, !170, i64 16, !71, i64 20, !71, i64 21, !55, i64 24, !57, i64 32, !57, i64 40, !57, i64 48}
!169 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !56, i64 0}
!170 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !56, i64 0}
!171 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !56, i64 0}
!172 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !56, i64 0}
!173 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !56, i64 0}
!174 = !{!160, !57, i64 16}
!175 = !{!"VP", i32 0, i64 158593, i64 -7692639006806371222, i64 158593}
!176 = !{!"branch_weights", i32 1, i32 14191938}
!177 = distinct !{!177, !83, !84}
!178 = !{!"branch_weights", i32 13760699, i32 431240}
!179 = distinct !{!179, !83, !84}
!180 = !{!"branch_weights", i32 272647, i32 158593}
!181 = !{!182, !57, i64 136}
!182 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !137, i64 0, !183, i64 36, !173, i64 40, !171, i64 44, !172, i64 48, !55, i64 52, !55, i64 56, !55, i64 60, !55, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !57, i64 112, !57, i64 120, !57, i64 128, !57, i64 136, !71, i64 144, !71, i64 145, !71, i64 146}
!183 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !56, i64 0}
!184 = !{!182, !55, i64 64}
!185 = !{!"VP", i32 0, i64 158593, i64 -5870977258506867452, i64 158593}
!186 = distinct !{!186, !83, !84}
!187 = !{!"function_entry_count", i64 15024850}
!188 = !{!"branch_weights", i32 0, i32 15024850}
!189 = !{!"branch_weights", i32 15025182, i32 0}
!190 = !{!"function_entry_count", i64 13326576}
!191 = !{!"branch_weights", i32 12461212, i32 1}
!192 = !{!"branch_weights", i32 12461212, i32 865364}
!193 = distinct !{!193, !83, !84}
!194 = !{!"branch_weights", i32 12461213, i32 865363}
!195 = !{!"function_entry_count", i64 158593}
!196 = !{!197, !57, i64 40}
!197 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !198, i64 8, !57, i64 16, !55, i64 24, !57, i64 32, !57, i64 40}
!198 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !56, i64 0}
!199 = !{i8 0, i8 2}
!200 = !{!"VP", i32 0, i64 158612, i64 -7405368087501025645, i64 158612}
!201 = distinct !{!201, !83, !84}
!202 = distinct !{!202, !83, !84}
!203 = distinct !{!203, !83, !84}
!204 = distinct !{!204, !83, !84}
!205 = !{!"branch_weights", i32 15024850, i32 0}
!206 = distinct !{!206, !83, !84}
