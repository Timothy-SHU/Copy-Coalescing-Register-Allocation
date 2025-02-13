; ModuleID = 'IdentityConstraintHandler.cpp'
source_filename = "IdentityConstraintHandler.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::IdentityConstraintHandler" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueStoreCache" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XPathMatcherStack" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XPathMatcher" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_715ValueStoreCache10setScannerEPNS_10XMLScannerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEED2Ev = comdat any

$_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv = comdat any

$_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj = comdat any

$_ZNK11xercesc_2_717XPathMatcherStack4sizeEv = comdat any

$_ZN11xercesc_2_717XPathMatcherStack10popContextEv = comdat any

$_ZNK11xercesc_2_712XPathMatcher21getIdentityConstraintEv = comdat any

$_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_712ValueStackOfIiE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIiE3popEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_717XPathMatcherStack11pushContextEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj = comdat any

$_ZN11xercesc_2_712ValueStackOfIiE4pushERKi = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj = comdat any

$_ZNK11xercesc_2_718IdentityConstraint11getSelectorEv = comdat any

$_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_725IdentityConstraintHandlerE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_725IdentityConstraintHandlerE, ptr @_ZN11xercesc_2_725IdentityConstraintHandlerD2Ev, ptr @_ZN11xercesc_2_725IdentityConstraintHandlerD0Ev] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_725IdentityConstraintHandlerE = dso_local constant [43 x i8] c"N11xercesc_2_725IdentityConstraintHandlerE\00", align 1
@_ZTIN11xercesc_2_725IdentityConstraintHandlerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_725IdentityConstraintHandlerE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1

@_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE
@_ZN11xercesc_2_725IdentityConstraintHandlerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_725IdentityConstraintHandlerD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_725IdentityConstraintHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  %5 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !112
  %6 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !116
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv to i64), i64 0) #10
  %9 = load ptr, ptr %6, align 8, !tbaa !116
  %10 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %9) #10
          to label %11 unwind label %28

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_717XPathMatcherStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %12) #10
          to label %13 unwind label %30

13:                                               ; preds = %11
  store ptr %10, ptr %7, align 8, !tbaa !117
  %14 = load ptr, ptr %6, align 8, !tbaa !116
  %15 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %14) #10
          to label %16 unwind label %28

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_715ValueStoreCacheC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %17) #10
          to label %18 unwind label %32

18:                                               ; preds = %16
  store ptr %15, ptr %8, align 8, !tbaa !118
  %19 = load ptr, ptr %6, align 8, !tbaa !116
  %20 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %19) #10
          to label %21 unwind label %28

21:                                               ; preds = %18
  %22 = load ptr, ptr %8, align 8, !tbaa !118
  %23 = load ptr, ptr %7, align 8, !tbaa !117
  %24 = load ptr, ptr %6, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_714FieldActivatorC1EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %22, ptr noundef %23, ptr noundef %24) #10
          to label %25 unwind label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 5
  store ptr %20, ptr %26, align 8, !tbaa !119
  %27 = load ptr, ptr %8, align 8, !tbaa !118
  call void @_ZN11xercesc_2_715ValueStoreCache10setScannerEPNS_10XMLScannerE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef %1) #10
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void

28:                                               ; preds = %18, %13, %3
  %29 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %36

30:                                               ; preds = %11
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #9
  br label %36

32:                                               ; preds = %16
  %33 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #9
  br label %36

34:                                               ; preds = %21
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %19) #9
  br label %36

36:                                               ; preds = %34, %32, %30, %28
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %29, %28 ], [ %33, %32 ], [ %31, %30 ]
  %38 = extractvalue { ptr, i32 } %37, 1
  %39 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = extractvalue { ptr, i32 } %37, 0
  %43 = call ptr @__cxa_begin_catch(ptr %42) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  invoke void @__cxa_rethrow() #12
          to label %51 unwind label %44

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %46 unwind label %48

46:                                               ; preds = %44, %36
  %47 = phi { ptr, i32 } [ %37, %36 ], [ %45, %44 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  resume { ptr, i32 } %47

48:                                               ; preds = %44
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #13
  unreachable

51:                                               ; preds = %41
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !120 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) #0 align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !121

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_717XPathMatcherStackD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #9
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !118
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !121

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_715ValueStoreCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #9
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !121

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_714FieldActivatorD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #9
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 !prof !108 {
  store ptr %1, ptr %0, align 8, !tbaa !122
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !124
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717XPathMatcherStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCacheC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714FieldActivatorC1EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ValueStoreCache10setScannerEPNS_10XMLScannerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !108 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !125
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !108 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !122
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !127

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !124
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !109
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !128
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(48) %11) #10
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandlerD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_725IdentityConstraintHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !129 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11, !prof !130

8:                                                ; preds = %3
  %9 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %86, label %14

11:                                               ; preds = %3
  %12 = add nsw i32 %6, -1
  %13 = icmp sgt i32 %6, 0
  br i1 %13, label %19, label %14, !prof !131

14:                                               ; preds = %19, %8, %11
  %15 = phi i32 [ %12, %11 ], [ -1, %8 ], [ %12, %19 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !117
  %17 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %28, !prof !130

19:                                               ; preds = %11, %19
  %20 = phi i32 [ %26, %19 ], [ %12, %11 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !117
  %22 = tail call noundef ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj(ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef %20) #10
  %23 = load ptr, ptr %22, align 8, !tbaa !109
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef %2) #10
  %26 = add nsw i32 %20, -1
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %14, label %19, !prof !132, !llvm.loop !133

28:                                               ; preds = %14
  %29 = load ptr, ptr %4, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_717XPathMatcherStack10popContextEv(ptr noundef nonnull align 8 dereferenceable(24) %29) #10
  br label %30

30:                                               ; preds = %28, %14
  %31 = load ptr, ptr %4, align 8, !tbaa !117
  %32 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %31) #10
  %33 = icmp sgt i32 %6, %32
  br i1 %33, label %35, label %57, !prof !135

34:                                               ; preds = %54
  br i1 %33, label %60, label %57, !prof !136

35:                                               ; preds = %30, %54
  %36 = phi i32 [ %55, %54 ], [ %15, %30 ]
  %37 = load ptr, ptr %4, align 8, !tbaa !117
  %38 = tail call noundef ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj(ptr noundef nonnull align 8 dereferenceable(24) %37, i32 noundef %36) #10
  %39 = tail call noundef ptr @_ZNK11xercesc_2_712XPathMatcher21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(72) %38) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41, !prof !137

41:                                               ; preds = %35
  %42 = load ptr, ptr %39, align 8, !tbaa !109
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef signext i16 %44(ptr noundef nonnull align 8 dereferenceable(52) %39) #10
  %46 = icmp eq i16 %45, 2
  br i1 %46, label %54, label %47, !prof !138

47:                                               ; preds = %41
  %48 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !118
  %50 = load ptr, ptr %38, align 8, !tbaa !109
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef i32 %52(ptr noundef nonnull align 8 dereferenceable(72) %38) #10
  tail call void @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull %39, i32 noundef %53) #10
  br label %54

54:                                               ; preds = %47, %41, %35
  %55 = add nsw i32 %36, -1
  %56 = icmp sgt i32 %36, %32
  br i1 %56, label %35, label %34, !prof !139, !llvm.loop !140

57:                                               ; preds = %83, %30, %34
  %58 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_715ValueStoreCache10endElementEv(ptr noundef nonnull align 8 dereferenceable(48) %59) #10
  br label %86

60:                                               ; preds = %34, %83
  %61 = phi i32 [ %84, %83 ], [ %15, %34 ]
  %62 = load ptr, ptr %4, align 8, !tbaa !117
  %63 = tail call noundef ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj(ptr noundef nonnull align 8 dereferenceable(24) %62, i32 noundef %61) #10
  %64 = tail call noundef ptr @_ZNK11xercesc_2_712XPathMatcher21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(72) %63) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %83, label %66, !prof !137

66:                                               ; preds = %60
  %67 = load ptr, ptr %64, align 8, !tbaa !109
  %68 = getelementptr inbounds ptr, ptr %67, i64 5
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef signext i16 %69(ptr noundef nonnull align 8 dereferenceable(52) %64) #10
  %71 = icmp eq i16 %70, 2
  br i1 %71, label %72, label %83, !prof !138

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !118
  %75 = load ptr, ptr %63, align 8, !tbaa !109
  %76 = getelementptr inbounds ptr, ptr %75, i64 2
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef i32 %77(ptr noundef nonnull align 8 dereferenceable(72) %63) #10
  %79 = tail call noundef ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %74, ptr noundef nonnull %64, i32 noundef %78) #10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !141

81:                                               ; preds = %72
  %82 = load ptr, ptr %73, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE(ptr noundef nonnull align 8 dereferenceable(80) %79, ptr noundef %82) #10
  br label %83

83:                                               ; preds = %72, %81, %66, %60
  %84 = add nsw i32 %61, -1
  %85 = icmp sgt i32 %61, %32
  br i1 %85, label %60, label %57, !prof !139, !llvm.loop !142

86:                                               ; preds = %57, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !143 {
  %2 = load i32, ptr %0, align 8, !tbaa !144
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #1 comdat align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !158

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #10
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !159 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #10
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717XPathMatcherStack10popContextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #10
  store i32 %4, ptr %0, align 8, !tbaa !144
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XPathMatcher21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !165 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1, i32 noundef %2) #10
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCache10endElementEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !168
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !170
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !172

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !173
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #10
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !174
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !175
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !180 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !181
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !183 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !184

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 80, ptr noundef %7) #10
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #11
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #10
  %14 = load i32, ptr %13, align 4, !tbaa !185
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #10
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !186 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !188 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !181
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !189

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9) #10
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !190
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !183 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !181
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !191

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 156, i32 noundef 116, ptr noundef %9) #10
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %32, label %16, !prof !191

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !190
  %21 = zext i32 %1 to i64
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %24 = add nuw nsw i64 %23, 1
  %25 = getelementptr inbounds i32, ptr %20, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !185
  %27 = getelementptr inbounds i32, ptr %20, i64 %23
  store i32 %26, ptr %27, align 4, !tbaa !185
  %28 = load i32, ptr %3, align 4, !tbaa !181
  %29 = add i32 %28, -1
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %24, %30
  br i1 %31, label %22, label %32, !llvm.loop !192

32:                                               ; preds = %22, %16, %13
  %33 = phi i32 [ %14, %16 ], [ %14, %13 ], [ %29, %22 ]
  store i32 %33, ptr %3, align 4, !tbaa !181
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !193 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !194

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !195
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 !prof !197 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !198
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !200
  %9 = load ptr, ptr %0, align 8, !tbaa !201
  %10 = load ptr, ptr %6, align 8, !tbaa !109
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #10
  store i32 %12, ptr %3, align 4, !tbaa !185
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !202
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !175
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !203

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !204
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !205

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !198
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !206
  %28 = load ptr, ptr %25, align 8, !tbaa !109
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #10
  br i1 %31, label %36, label %32, !prof !207

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !175
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !208, !llvm.loop !209

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 1 %5, i32 noundef %6) local_unnamed_addr #1 align 2 !prof !129 {
  %8 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !210

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15, !prof !211

15:                                               ; preds = %10, %7
  %16 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_715ValueStoreCache12startElementEv(ptr noundef nonnull align 8 dereferenceable(48) %17) #10
  %18 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_717XPathMatcherStack11pushContextEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #10
  %20 = load ptr, ptr %16, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull %1, i32 noundef %2) #10
  br i1 %9, label %21, label %25, !prof !212

21:                                               ; preds = %25, %15
  %22 = load ptr, ptr %18, align 8, !tbaa !117
  %23 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %22) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %30, !prof !211

25:                                               ; preds = %15, %25
  %26 = phi i32 [ %28, %25 ], [ 0, %15 ]
  %27 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %1, i32 noundef %26) #10
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %27, i32 noundef %2) #10
  %28 = add nuw i32 %26, 1
  %29 = icmp eq i32 %28, %8
  br i1 %29, label %21, label %25, !prof !213, !llvm.loop !214

30:                                               ; preds = %21, %30
  %31 = phi i32 [ %37, %30 ], [ 0, %21 ]
  %32 = load ptr, ptr %18, align 8, !tbaa !117
  %33 = tail call noundef ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj(ptr noundef nonnull align 8 dereferenceable(24) %32, i32 noundef %31) #10
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(72) %33, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 1 %5, i32 noundef %6) #10
  %37 = add nuw i32 %31, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %30, !prof !215, !llvm.loop !216

39:                                               ; preds = %30, %21, %10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCache12startElementEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717XPathMatcherStack11pushContextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !129 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %5 = load i32, ptr %0, align 8, !tbaa !144
  store i32 %5, ptr %2, align 4, !tbaa !185
  call void @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(4) %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !217 {
  %4 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint11getSelectorEv(ptr noundef nonnull align 8 dereferenceable(52) %1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6, !prof !218

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = tail call noundef ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %8, i32 noundef %2, ptr noundef %10) #10
  %12 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %11) #10
  %14 = load ptr, ptr %11, align 8, !tbaa !109
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(72) %11) #10
  br label %17

17:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !219

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #10
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 !prof !183 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 !prof !220 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #10
  %3 = load i32, ptr %1, align 4, !tbaa !185
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !181
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store i32 %3, ptr %9, align 4, !tbaa !185
  %10 = load i32, ptr %6, align 4, !tbaa !181
  %11 = add i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !181
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !220 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !181
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !221
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %41, !prof !222

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !187
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !109
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #10
  %22 = load i32, ptr %3, align 4, !tbaa !181
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !190
  br i1 %23, label %26, label %32, !prof !223

26:                                               ; preds = %32, %9
  %27 = load ptr, ptr %14, align 8, !tbaa !187
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %27, align 8, !tbaa !109
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %25) #10
  store ptr %21, ptr %28, align 8, !tbaa !190
  store i32 %13, ptr %6, align 8, !tbaa !221
  br label %41

32:                                               ; preds = %9, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %9 ]
  %34 = getelementptr inbounds i32, ptr %25, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !185
  %36 = getelementptr inbounds i32, ptr %21, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !185
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %3, align 4, !tbaa !181
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %26, !prof !224, !llvm.loop !225

41:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !168
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !226

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #10
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !228
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !175
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_718IdentityConstraint11getSelectorEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 comdat align 2 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !229
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !231 {
  %3 = load i32, ptr %0, align 8, !tbaa !144
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #10
  %7 = icmp eq i32 %3, %6
  %8 = load ptr, ptr %4, align 8, !tbaa !160
  br i1 %7, label %9, label %12, !prof !232

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %1) #10
  %10 = load i32, ptr %0, align 8, !tbaa !144
  %11 = add i32 %10, 1
  store i32 %11, ptr %0, align 8, !tbaa !144
  br label %18

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8, !tbaa !144
  %14 = add i32 %13, 1
  store i32 %14, ptr %0, align 8, !tbaa !144
  %15 = load ptr, ptr %8, align 8, !tbaa !109
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %1, i32 noundef %13) #10
  br label %18

18:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !170
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !233 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !174
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !170
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !175
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !170
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !233 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !170
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !234
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !235

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !173
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !109
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #10
  %21 = load i32, ptr %3, align 4, !tbaa !170
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !236

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !237

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !175
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !174
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !175
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !175
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !238, !llvm.loop !239

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !173
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !174
  %49 = load ptr, ptr %46, align 8, !tbaa !109
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #10
  store ptr %20, ptr %47, align 8, !tbaa !174
  store i32 %12, ptr %6, align 8, !tbaa !234
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717XPathMatcherStackD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715ValueStoreCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714FieldActivatorD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_717XPathMatcherStack5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717XPathMatcherStack5clearEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!107}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!36 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!37 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEEC2EPS1_MS1_FvvE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 9}
!39 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717XPathMatcherStackC1EPNS_13MemoryManagerE, i64 3}
!40 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715ValueStoreCacheC1EPNS_13MemoryManagerE, i64 3}
!41 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714FieldActivatorC1EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE, i64 3}
!42 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715ValueStoreCache10setScannerEPNS_10XMLScannerE, i64 3}
!43 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEE7releaseEv, i64 3}
!44 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEED2Ev, i64 3}
!45 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_717XPathMatcherStackD1Ev, i64 2}
!46 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 6}
!47 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_715ValueStoreCacheD1Ev, i64 2}
!48 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_714FieldActivatorD1Ev, i64 2}
!49 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerD2Ev, ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, i64 3}
!50 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv, i64 1665822}
!51 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, i64 1}
!52 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZNK11xercesc_2_717XPathMatcherStack4sizeEv, i64 832911}
!53 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj, i64 14509137}
!54 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_717XPathMatcherStack10popContextEv, i64 832910}
!55 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZNK11xercesc_2_712XPathMatcher21getIdentityConstraintEv, i64 317220}
!56 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, i64 5}
!57 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, i64 832911}
!58 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi, i64 12}
!59 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE, i64 11}
!60 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv, i64 3}
!61 = !{ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj, i64 28542503}
!62 = !{ptr @_ZNK11xercesc_2_717XPathMatcherStack4sizeEv, ptr @_ZN11xercesc_2_712ValueStackOfIiE4sizeEv, i64 832911}
!63 = !{ptr @_ZN11xercesc_2_717XPathMatcherStack10popContextEv, ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, i64 832911}
!64 = !{ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi, i64 158605}
!65 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!66 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!67 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE4sizeEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv, i64 832911}
!68 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv, i64 15024850}
!69 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @__cxa_allocate_exception, i64 1}
!70 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv, i64 1}
!71 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!72 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @__cxa_throw, i64 1}
!73 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @__cxa_free_exception, i64 1}
!74 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, i64 15024849}
!75 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, i64 15024849}
!76 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!77 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!78 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_throw, i64 1}
!79 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!80 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!81 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!82 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @__cxa_throw, i64 1}
!83 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @__cxa_free_exception, i64 1}
!84 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj, i64 475795}
!85 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, i64 832911}
!86 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv, i64 1665819}
!87 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, i64 832910}
!88 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_717XPathMatcherStack11pushContextEv, i64 832910}
!89 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, i64 832910}
!90 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj, i64 17}
!91 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, i64 17}
!92 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj, i64 14033313}
!93 = !{ptr @_ZN11xercesc_2_717XPathMatcherStack11pushContextEv, ptr @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi, i64 832911}
!94 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, ptr @_ZNK11xercesc_2_718IdentityConstraint11getSelectorEv, i64 16}
!95 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE, i64 15}
!96 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE, i64 15}
!97 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, i64 31}
!98 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi, ptr @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi, i64 15024850}
!99 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi, ptr @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj, i64 15025150}
!100 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!101 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!102 = !{ptr @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv, i64 158609}
!103 = !{ptr @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_, i64 19}
!104 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj, i64 18}
!105 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv, ptr @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv, i64 3}
!106 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv, ptr @_ZN11xercesc_2_717XPathMatcherStack5clearEv, i64 3}
!107 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!108 = !{!"function_entry_count", i64 3}
!109 = !{!110, !110, i64 0}
!110 = !{!"vtable pointer", !111, i64 0}
!111 = !{!"Simple C++ TBAA"}
!112 = !{!113, !114, i64 8}
!113 = !{!"_ZTSN11xercesc_2_725IdentityConstraintHandlerE", !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40}
!114 = !{!"any pointer", !115, i64 0}
!115 = !{!"omnipotent char", !111, i64 0}
!116 = !{!113, !114, i64 16}
!117 = !{!113, !114, i64 24}
!118 = !{!113, !114, i64 32}
!119 = !{!113, !114, i64 40}
!120 = !{!"function_entry_count", i64 5836268}
!121 = !{!"branch_weights", i32 1, i32 4}
!122 = !{!123, !114, i64 0}
!123 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEEE", !114, i64 0, !115, i64 8}
!124 = !{!123, !115, i64 8}
!125 = !{!126, !114, i64 32}
!126 = !{!"_ZTSN11xercesc_2_715ValueStoreCacheE", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40}
!127 = !{!"branch_weights", i32 4, i32 1}
!128 = !{}
!129 = !{!"function_entry_count", i64 832911}
!130 = !{!"branch_weights", i32 1, i32 832912}
!131 = !{!"branch_weights", i32 2147482682, i32 966}
!132 = !{!"branch_weights", i32 832911, i32 13359029}
!133 = distinct !{!133, !134}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !{!"branch_weights", i32 158610, i32 674302}
!136 = !{!"branch_weights", i32 -2147483648, i32 0}
!137 = !{!"branch_weights", i32 158594, i32 17}
!138 = !{!"branch_weights", i32 13, i32 5}
!139 = !{!"branch_weights", i32 0, i32 158610}
!140 = distinct !{!140, !134}
!141 = !{!"branch_weights", i32 1, i32 13}
!142 = distinct !{!142, !134}
!143 = !{!"function_entry_count", i64 3930443}
!144 = !{!145, !146, i64 0}
!145 = !{!"_ZTSN11xercesc_2_717XPathMatcherStackE", !146, i64 0, !114, i64 8, !114, i64 16}
!146 = !{!"int", !115, i64 0}
!147 = !{!"function_entry_count", i64 1665822}
!148 = !{!149, !114, i64 112}
!149 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !150, i64 0, !154, i64 36, !155, i64 40, !156, i64 44, !157, i64 48, !146, i64 52, !146, i64 56, !146, i64 60, !146, i64 64, !114, i64 72, !114, i64 80, !114, i64 88, !114, i64 96, !114, i64 104, !114, i64 112, !114, i64 120, !114, i64 128, !114, i64 136, !153, i64 144, !153, i64 145, !153, i64 146}
!150 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !151, i64 0, !114, i64 8, !114, i64 16, !152, i64 24, !146, i64 28, !153, i64 32}
!151 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!152 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !115, i64 0}
!153 = !{!"bool", !115, i64 0}
!154 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !115, i64 0}
!155 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !115, i64 0}
!156 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !115, i64 0}
!157 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !115, i64 0}
!158 = !{!"branch_weights", i32 1665821, i32 3}
!159 = !{!"function_entry_count", i64 28542503}
!160 = !{!145, !114, i64 16}
!161 = !{!145, !114, i64 8}
!162 = !{!"function_entry_count", i64 317218}
!163 = !{!164, !114, i64 56}
!164 = !{!"_ZTSN11xercesc_2_712XPathMatcherE", !146, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40, !114, i64 48, !114, i64 56, !114, i64 64}
!165 = !{!"function_entry_count", i64 158605}
!166 = !{!126, !114, i64 16}
!167 = !{!"function_entry_count", i64 2}
!168 = !{!169, !146, i64 12}
!169 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEEE", !153, i64 8, !146, i64 12, !146, i64 16, !114, i64 24, !114, i64 32}
!170 = !{!171, !146, i64 12}
!171 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEEE", !153, i64 8, !146, i64 12, !146, i64 16, !114, i64 24, !114, i64 32}
!172 = !{!"branch_weights", i32 28542504, i32 1}
!173 = !{!171, !114, i64 32}
!174 = !{!171, !114, i64 24}
!175 = !{!114, !114, i64 0}
!176 = !{!"function_entry_count", i64 0}
!177 = !{!178, !114, i64 40}
!178 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !179, i64 8, !114, i64 16, !146, i64 24, !114, i64 32, !114, i64 40}
!179 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !115, i64 0}
!180 = !{!"function_entry_count", i64 15857793}
!181 = !{!182, !146, i64 4}
!182 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIiEE", !153, i64 0, !146, i64 4, !146, i64 8, !114, i64 16, !114, i64 24}
!183 = !{!"function_entry_count", i64 15024850}
!184 = !{!"branch_weights", i32 1, i32 15024851}
!185 = !{!146, !146, i64 0}
!186 = !{!"function_entry_count", i64 32}
!187 = !{!182, !114, i64 24}
!188 = !{!"function_entry_count", i64 15025182}
!189 = !{!"branch_weights", i32 15025183, i32 1}
!190 = !{!182, !114, i64 16}
!191 = !{!"branch_weights", i32 15024851, i32 1}
!192 = distinct !{!192, !134}
!193 = !{!"function_entry_count", i64 475795}
!194 = !{!"branch_weights", i32 1, i32 475796}
!195 = !{!196, !114, i64 0}
!196 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEE", !114, i64 0, !114, i64 8, !114, i64 16, !146, i64 24}
!197 = !{!"function_entry_count", i64 475811}
!198 = !{!199, !114, i64 32}
!199 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEE", !114, i64 0, !153, i64 8, !114, i64 16, !146, i64 24, !146, i64 28, !114, i64 32}
!200 = !{!199, !146, i64 24}
!201 = !{!199, !114, i64 0}
!202 = !{!199, !114, i64 16}
!203 = !{!"branch_weights", i32 1, i32 135}
!204 = !{!196, !146, i64 24}
!205 = !{!"branch_weights", i32 947746, i32 1}
!206 = !{!196, !114, i64 16}
!207 = !{!"branch_weights", i32 475796, i32 471951}
!208 = !{!"branch_weights", i32 135, i32 7581833}
!209 = distinct !{!209, !134}
!210 = !{!"branch_weights", i32 832911, i32 2}
!211 = !{!"branch_weights", i32 1, i32 832911}
!212 = !{!"branch_weights", i32 832895, i32 17}
!213 = !{!"branch_weights", i32 17, i32 0}
!214 = distinct !{!214, !134}
!215 = !{!"branch_weights", i32 832911, i32 13200436}
!216 = distinct !{!216, !134}
!217 = !{!"function_entry_count", i64 16}
!218 = !{!"branch_weights", i32 1, i32 17}
!219 = !{!"branch_weights", i32 1, i32 33}
!220 = !{!"function_entry_count", i64 15025150}
!221 = !{!182, !146, i64 8}
!222 = !{!"branch_weights", i32 1581, i32 15023571}
!223 = !{!"branch_weights", i32 1, i32 1580}
!224 = !{!"branch_weights", i32 11127, i32 1580}
!225 = distinct !{!225, !134}
!226 = !{!"branch_weights", i32 33, i32 1}
!227 = !{!169, !114, i64 32}
!228 = !{!169, !114, i64 24}
!229 = !{!230, !114, i64 24}
!230 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !151, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40, !146, i64 48}
!231 = !{!"function_entry_count", i64 158609}
!232 = !{!"branch_weights", i32 19, i32 158592}
!233 = !{!"function_entry_count", i64 18}
!234 = !{!171, !146, i64 16}
!235 = !{!"branch_weights", i32 3, i32 17}
!236 = !{!"branch_weights", i32 1, i32 191}
!237 = !{!"branch_weights", i32 191, i32 1}
!238 = !{!"branch_weights", i32 191, i32 1153}
!239 = distinct !{!239, !134}
