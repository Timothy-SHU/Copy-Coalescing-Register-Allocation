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
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.2" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>

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

$_ZN11xercesc_2_717XPathMatcherStack11pushContextEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj = comdat any

$_ZNK11xercesc_2_718IdentityConstraint11getSelectorEv = comdat any

$_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE = comdat any

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

$_ZN11xercesc_2_712ValueStackOfIiE4pushERKi = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@_ZTVN11xercesc_2_725IdentityConstraintHandlerE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_725IdentityConstraintHandlerE, ptr @_ZN11xercesc_2_725IdentityConstraintHandlerD2Ev, ptr @_ZN11xercesc_2_725IdentityConstraintHandlerD0Ev] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_725IdentityConstraintHandlerE = dso_local constant [43 x i8] c"N11xercesc_2_725IdentityConstraintHandlerE\00", align 1
@_ZTIN11xercesc_2_725IdentityConstraintHandlerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_725IdentityConstraintHandlerE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_725IdentityConstraintHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  %5 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !115
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv to i64), i64 0) #9
  %9 = load ptr, ptr %6, align 8, !tbaa !115
  %10 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %9) #9
          to label %11 unwind label %28

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_717XPathMatcherStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %12) #9
          to label %13 unwind label %30

13:                                               ; preds = %11
  store ptr %10, ptr %7, align 8, !tbaa !116
  %14 = load ptr, ptr %6, align 8, !tbaa !115
  %15 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %14) #9
          to label %16 unwind label %28

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_715ValueStoreCacheC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %17) #9
          to label %18 unwind label %32

18:                                               ; preds = %16
  store ptr %15, ptr %8, align 8, !tbaa !117
  %19 = load ptr, ptr %6, align 8, !tbaa !115
  %20 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %19) #9
          to label %21 unwind label %28

21:                                               ; preds = %18
  %22 = load ptr, ptr %8, align 8, !tbaa !117
  %23 = load ptr, ptr %7, align 8, !tbaa !116
  %24 = load ptr, ptr %6, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_714FieldActivatorC1EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %22, ptr noundef %23, ptr noundef %24) #9
          to label %25 unwind label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 5
  store ptr %20, ptr %26, align 8, !tbaa !118
  %27 = load ptr, ptr %8, align 8, !tbaa !117
  call void @_ZN11xercesc_2_715ValueStoreCache10setScannerEPNS_10XMLScannerE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef %1) #9
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #9
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
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
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #11
  br label %36

32:                                               ; preds = %16
  %33 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #11
  br label %36

34:                                               ; preds = %21
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %19) #11
  br label %36

36:                                               ; preds = %34, %32, %30, %28
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %29, %28 ], [ %33, %32 ], [ %31, %30 ]
  %38 = extractvalue { ptr, i32 } %37, 1
  %39 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = extractvalue { ptr, i32 } %37, 0
  %43 = call ptr @__cxa_begin_catch(ptr %42) #10
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #9
  invoke void @__cxa_rethrow() #12
          to label %51 unwind label %44

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %46 unwind label %48

46:                                               ; preds = %44, %36
  %47 = phi { ptr, i32 } [ %37, %36 ], [ %45, %44 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
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
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) #1 align 2 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !120

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_717XPathMatcherStackD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #11
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !120

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_715ValueStoreCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #11
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !118
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !120

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_714FieldActivatorD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #11
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #1 comdat align 2 !prof !107 {
  store ptr %1, ptr %0, align 8, !tbaa !121
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !123
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !123
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
define linkonce_odr dso_local void @_ZN11xercesc_2_715ValueStoreCache10setScannerEPNS_10XMLScannerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !107 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !124
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !107 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !126

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !123
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !123
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !108
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !127
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(48) %11) #9
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
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandlerD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_725IdentityConstraintHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !128 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11, !prof !129

8:                                                ; preds = %3
  %9 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %86, label %14

11:                                               ; preds = %3
  %12 = add nsw i32 %6, -1
  %13 = icmp sgt i32 %6, 0
  br i1 %13, label %19, label %14, !prof !130

14:                                               ; preds = %19, %8, %11
  %15 = phi i32 [ %12, %11 ], [ -1, %8 ], [ %12, %19 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !116
  %17 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %28, !prof !129

19:                                               ; preds = %11, %19
  %20 = phi i32 [ %26, %19 ], [ %12, %11 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !116
  %22 = tail call noundef ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj(ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef %20) #9
  %23 = load ptr, ptr %22, align 8, !tbaa !108
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef %2) #9
  %26 = add nsw i32 %20, -1
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %14, label %19, !prof !131, !llvm.loop !132

28:                                               ; preds = %14
  %29 = load ptr, ptr %4, align 8, !tbaa !116
  tail call void @_ZN11xercesc_2_717XPathMatcherStack10popContextEv(ptr noundef nonnull align 8 dereferenceable(24) %29) #9
  br label %30

30:                                               ; preds = %28, %14
  %31 = load ptr, ptr %4, align 8, !tbaa !116
  %32 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %31) #9
  %33 = icmp sgt i32 %6, %32
  br i1 %33, label %35, label %57, !prof !134

34:                                               ; preds = %54
  br i1 %33, label %60, label %57, !prof !135

35:                                               ; preds = %30, %54
  %36 = phi i32 [ %55, %54 ], [ %15, %30 ]
  %37 = load ptr, ptr %4, align 8, !tbaa !116
  %38 = tail call noundef ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj(ptr noundef nonnull align 8 dereferenceable(24) %37, i32 noundef %36) #9
  %39 = tail call noundef ptr @_ZNK11xercesc_2_712XPathMatcher21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(72) %38) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41, !prof !136

41:                                               ; preds = %35
  %42 = load ptr, ptr %39, align 8, !tbaa !108
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef signext i16 %44(ptr noundef nonnull align 8 dereferenceable(52) %39) #9
  %46 = icmp eq i16 %45, 2
  br i1 %46, label %54, label %47, !prof !137

47:                                               ; preds = %41
  %48 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !117
  %50 = load ptr, ptr %38, align 8, !tbaa !108
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef i32 %52(ptr noundef nonnull align 8 dereferenceable(72) %38) #9
  tail call void @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull %39, i32 noundef %53) #9
  br label %54

54:                                               ; preds = %47, %41, %35
  %55 = add nsw i32 %36, -1
  %56 = icmp sgt i32 %36, %32
  br i1 %56, label %35, label %34, !prof !138, !llvm.loop !139

57:                                               ; preds = %83, %30, %34
  %58 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_715ValueStoreCache10endElementEv(ptr noundef nonnull align 8 dereferenceable(48) %59) #9
  br label %86

60:                                               ; preds = %34, %83
  %61 = phi i32 [ %84, %83 ], [ %15, %34 ]
  %62 = load ptr, ptr %4, align 8, !tbaa !116
  %63 = tail call noundef ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj(ptr noundef nonnull align 8 dereferenceable(24) %62, i32 noundef %61) #9
  %64 = tail call noundef ptr @_ZNK11xercesc_2_712XPathMatcher21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(72) %63) #9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %83, label %66, !prof !136

66:                                               ; preds = %60
  %67 = load ptr, ptr %64, align 8, !tbaa !108
  %68 = getelementptr inbounds ptr, ptr %67, i64 5
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef signext i16 %69(ptr noundef nonnull align 8 dereferenceable(52) %64) #9
  %71 = icmp eq i16 %70, 2
  br i1 %71, label %72, label %83, !prof !137

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !117
  %75 = load ptr, ptr %63, align 8, !tbaa !108
  %76 = getelementptr inbounds ptr, ptr %75, i64 2
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef i32 %77(ptr noundef nonnull align 8 dereferenceable(72) %63) #9
  %79 = tail call noundef ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %74, ptr noundef nonnull %64, i32 noundef %78) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !140

81:                                               ; preds = %72
  %82 = load ptr, ptr %73, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE(ptr noundef nonnull align 8 dereferenceable(80) %79, ptr noundef %82) #9
  br label %83

83:                                               ; preds = %72, %81, %66, %60
  %84 = add nsw i32 %61, -1
  %85 = icmp sgt i32 %61, %32
  br i1 %85, label %60, label %57, !prof !138, !llvm.loop !141

86:                                               ; preds = %57, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !142 {
  %2 = load i32, ptr %0, align 8, !tbaa !143
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !157

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #9
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !158 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #9
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717XPathMatcherStack10popContextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #9
  store i32 %4, ptr %0, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XPathMatcher21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !164 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !165
  %6 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1, i32 noundef %2) #9
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCache10endElementEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 1 %5, i32 noundef %6) local_unnamed_addr #0 align 2 !prof !128 {
  %8 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !166

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15, !prof !167

15:                                               ; preds = %10, %7
  %16 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_715ValueStoreCache12startElementEv(ptr noundef nonnull align 8 dereferenceable(48) %17) #9
  %18 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  tail call void @_ZN11xercesc_2_717XPathMatcherStack11pushContextEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #9
  %20 = load ptr, ptr %16, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull %1, i32 noundef %2) #9
  br i1 %9, label %21, label %25, !prof !168

21:                                               ; preds = %25, %15
  %22 = load ptr, ptr %18, align 8, !tbaa !116
  %23 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %30, !prof !167

25:                                               ; preds = %15, %25
  %26 = phi i32 [ %28, %25 ], [ 0, %15 ]
  %27 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %1, i32 noundef %26) #9
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %27, i32 noundef %2) #9
  %28 = add nuw i32 %26, 1
  %29 = icmp eq i32 %28, %8
  br i1 %29, label %21, label %25, !prof !169, !llvm.loop !170

30:                                               ; preds = %21, %30
  %31 = phi i32 [ %37, %30 ], [ 0, %21 ]
  %32 = load ptr, ptr %18, align 8, !tbaa !116
  %33 = tail call noundef ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj(ptr noundef nonnull align 8 dereferenceable(24) %32, i32 noundef %31) #9
  %34 = load ptr, ptr %33, align 8, !tbaa !108
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(72) %33, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 1 %5, i32 noundef %6) #9
  %37 = add nuw i32 %31, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %30, !prof !171, !llvm.loop !172

39:                                               ; preds = %30, %21, %10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCache12startElementEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717XPathMatcherStack11pushContextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !128 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %5 = load i32, ptr %0, align 8, !tbaa !143
  store i32 %5, ptr %2, align 4, !tbaa !173
  call void @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !174 {
  %4 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint11getSelectorEv(ptr noundef nonnull align 8 dereferenceable(52) %1) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6, !prof !175

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !118
  %9 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = tail call noundef ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %8, i32 noundef %2, ptr noundef %10) #9
  %12 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  tail call void @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %11) #9
  %14 = load ptr, ptr %11, align 8, !tbaa !108
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(72) %11) #9
  br label %17

17:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !177

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #9
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_718IdentityConstraint11getSelectorEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #1 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !178
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !180 {
  %3 = load i32, ptr %0, align 8, !tbaa !143
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #9
  %7 = icmp eq i32 %3, %6
  %8 = load ptr, ptr %4, align 8, !tbaa !159
  br i1 %7, label %9, label %12, !prof !181

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %1) #9
  %10 = load i32, ptr %0, align 8, !tbaa !143
  %11 = add i32 %10, 1
  store i32 %11, ptr %0, align 8, !tbaa !143
  br label %18

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8, !tbaa !143
  %14 = add i32 %13, 1
  store i32 %14, ptr %0, align 8, !tbaa !143
  %15 = load ptr, ptr %8, align 8, !tbaa !108
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %1, i32 noundef %13) #9
  br label %18

18:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717XPathMatcherStackD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715ValueStoreCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714FieldActivatorD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  tail call void @_ZN11xercesc_2_717XPathMatcherStack5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717XPathMatcherStack5clearEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !182 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !183
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !158 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !185
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !187

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !188
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !189
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !190
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !191 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !191 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !195 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !196
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !199

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 80, ptr noundef %7) #9
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #10
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #9
  %14 = load i32, ptr %13, align 4, !tbaa !173
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #9
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !200
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !196
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !202

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !203
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !196
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !204

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 156, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %32, label %16, !prof !204

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !203
  %21 = zext i32 %1 to i64
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %24 = add nuw nsw i64 %23, 1
  %25 = getelementptr inbounds i32, ptr %20, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !173
  %27 = getelementptr inbounds i32, ptr %20, i64 %23
  store i32 %26, ptr %27, align 4, !tbaa !173
  %28 = load i32, ptr %3, align 4, !tbaa !196
  %29 = add i32 %28, -1
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %24, %30
  br i1 %31, label %22, label %32, !llvm.loop !205

32:                                               ; preds = %22, %16, %13
  %33 = phi i32 [ %14, %16 ], [ %14, %13 ], [ %29, %22 ]
  store i32 %33, ptr %3, align 4, !tbaa !196
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !191 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !191 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !206 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !207

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !208
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 !prof !210 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !211
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !213
  %9 = load ptr, ptr %0, align 8, !tbaa !214
  %10 = load ptr, ptr %6, align 8, !tbaa !108
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #9
  store i32 %12, ptr %3, align 4, !tbaa !173
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !215
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !190
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !216

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !217
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !218

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !211
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !219
  %28 = load ptr, ptr %25, align 8, !tbaa !108
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #9
  br i1 %31, label %36, label %32, !prof !220

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !190
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !221, !llvm.loop !222

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !198 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !223 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #9
  %3 = load i32, ptr %1, align 4, !tbaa !173
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !203
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store i32 %3, ptr %9, align 4, !tbaa !173
  %10 = load i32, ptr %6, align 4, !tbaa !196
  %11 = add i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !196
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !223 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !196
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !224
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %41, !prof !225

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !200
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !108
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #9
  %22 = load i32, ptr %3, align 4, !tbaa !196
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !203
  br i1 %23, label %26, label %32, !prof !226

26:                                               ; preds = %32, %9
  %27 = load ptr, ptr %14, align 8, !tbaa !200
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %27, align 8, !tbaa !108
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %25) #9
  store ptr %21, ptr %28, align 8, !tbaa !203
  store i32 %13, ptr %6, align 8, !tbaa !224
  br label %41

32:                                               ; preds = %9, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %9 ]
  %34 = getelementptr inbounds i32, ptr %25, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !173
  %36 = getelementptr inbounds i32, ptr %21, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !173
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %3, align 4, !tbaa !196
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %26, !prof !227, !llvm.loop !228

41:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !183
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !229

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !230
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !231
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !190
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !180 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !185
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !232 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !189
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !185
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !190
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !232 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !185
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !233
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !234

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !188
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !108
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #9
  %21 = load i32, ptr %3, align 4, !tbaa !185
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !235

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !236

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !190
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !189
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !190
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !190
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !237, !llvm.loop !238

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !188
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !189
  %49 = load ptr, ptr %46, align 8, !tbaa !108
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #9
  store ptr %20, ptr %47, align 8, !tbaa !189
  store i32 %12, ptr %6, align 8, !tbaa !233
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!106}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!35 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!36 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEEC2EPS1_MS1_FvvE, i64 3}
!37 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 9}
!38 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717XPathMatcherStackC1EPNS_13MemoryManagerE, i64 3}
!39 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715ValueStoreCacheC1EPNS_13MemoryManagerE, i64 3}
!40 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714FieldActivatorC1EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE, i64 3}
!41 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715ValueStoreCache10setScannerEPNS_10XMLScannerE, i64 3}
!42 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEE7releaseEv, i64 3}
!43 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEED2Ev, i64 3}
!44 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_717XPathMatcherStackD1Ev, i64 2}
!45 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 6}
!46 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_715ValueStoreCacheD1Ev, i64 2}
!47 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_714FieldActivatorD1Ev, i64 2}
!48 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerD2Ev, ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, i64 3}
!49 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv, i64 1665822}
!50 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, i64 1}
!51 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZNK11xercesc_2_717XPathMatcherStack4sizeEv, i64 832911}
!52 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj, i64 14509137}
!53 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_717XPathMatcherStack10popContextEv, i64 832910}
!54 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZNK11xercesc_2_712XPathMatcher21getIdentityConstraintEv, i64 317220}
!55 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, i64 5}
!56 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, i64 832911}
!57 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi, i64 12}
!58 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE, i64 11}
!59 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv, i64 3}
!60 = !{ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj, i64 28542503}
!61 = !{ptr @_ZNK11xercesc_2_717XPathMatcherStack4sizeEv, ptr @_ZN11xercesc_2_712ValueStackOfIiE4sizeEv, i64 832911}
!62 = !{ptr @_ZN11xercesc_2_717XPathMatcherStack10popContextEv, ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, i64 832911}
!63 = !{ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi, i64 158605}
!64 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, i64 832911}
!65 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv, i64 1665819}
!66 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, i64 832910}
!67 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_717XPathMatcherStack11pushContextEv, i64 832910}
!68 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, i64 832910}
!69 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj, i64 17}
!70 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, i64 17}
!71 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_717XPathMatcherStack12getMatcherAtEj, i64 14033313}
!72 = !{ptr @_ZN11xercesc_2_717XPathMatcherStack11pushContextEv, ptr @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi, i64 832911}
!73 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, ptr @_ZNK11xercesc_2_718IdentityConstraint11getSelectorEv, i64 16}
!74 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE, i64 15}
!75 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE, i64 15}
!76 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, i64 31}
!77 = !{ptr @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv, i64 158609}
!78 = !{ptr @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_, i64 19}
!79 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv, ptr @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv, i64 3}
!80 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv, ptr @_ZN11xercesc_2_717XPathMatcherStack5clearEv, i64 3}
!81 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!82 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!83 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE4sizeEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv, i64 832911}
!84 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv, i64 15024850}
!85 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @__cxa_allocate_exception, i64 1}
!86 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv, i64 1}
!87 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!88 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @__cxa_throw, i64 1}
!89 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @__cxa_free_exception, i64 1}
!90 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, i64 15024849}
!91 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, i64 15024849}
!92 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!93 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!94 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_throw, i64 1}
!95 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!96 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!97 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!98 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @__cxa_throw, i64 1}
!99 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, ptr @__cxa_free_exception, i64 1}
!100 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj, i64 475795}
!101 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE4pushERKi, ptr @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi, i64 15024850}
!102 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi, ptr @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj, i64 15025150}
!103 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!104 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!105 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj, i64 18}
!106 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!107 = !{!"function_entry_count", i64 3}
!108 = !{!109, !109, i64 0}
!109 = !{!"vtable pointer", !110, i64 0}
!110 = !{!"Simple C++ TBAA"}
!111 = !{!112, !113, i64 8}
!112 = !{!"_ZTSN11xercesc_2_725IdentityConstraintHandlerE", !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32, !113, i64 40}
!113 = !{!"any pointer", !114, i64 0}
!114 = !{!"omnipotent char", !110, i64 0}
!115 = !{!112, !113, i64 16}
!116 = !{!112, !113, i64 24}
!117 = !{!112, !113, i64 32}
!118 = !{!112, !113, i64 40}
!119 = !{!"function_entry_count", i64 5836268}
!120 = !{!"branch_weights", i32 1, i32 4}
!121 = !{!122, !113, i64 0}
!122 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_25IdentityConstraintHandlerEEE", !113, i64 0, !114, i64 8}
!123 = !{!122, !114, i64 8}
!124 = !{!125, !113, i64 32}
!125 = !{!"_ZTSN11xercesc_2_715ValueStoreCacheE", !113, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32, !113, i64 40}
!126 = !{!"branch_weights", i32 4, i32 1}
!127 = !{}
!128 = !{!"function_entry_count", i64 832911}
!129 = !{!"branch_weights", i32 1, i32 832912}
!130 = !{!"branch_weights", i32 2147482682, i32 966}
!131 = !{!"branch_weights", i32 832911, i32 13359029}
!132 = distinct !{!132, !133}
!133 = !{!"llvm.loop.mustprogress"}
!134 = !{!"branch_weights", i32 158610, i32 674302}
!135 = !{!"branch_weights", i32 -2147483648, i32 0}
!136 = !{!"branch_weights", i32 158594, i32 17}
!137 = !{!"branch_weights", i32 13, i32 5}
!138 = !{!"branch_weights", i32 0, i32 158610}
!139 = distinct !{!139, !133}
!140 = !{!"branch_weights", i32 1, i32 13}
!141 = distinct !{!141, !133}
!142 = !{!"function_entry_count", i64 3930443}
!143 = !{!144, !145, i64 0}
!144 = !{!"_ZTSN11xercesc_2_717XPathMatcherStackE", !145, i64 0, !113, i64 8, !113, i64 16}
!145 = !{!"int", !114, i64 0}
!146 = !{!"function_entry_count", i64 1665822}
!147 = !{!148, !113, i64 112}
!148 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !149, i64 0, !153, i64 36, !154, i64 40, !155, i64 44, !156, i64 48, !145, i64 52, !145, i64 56, !145, i64 60, !145, i64 64, !113, i64 72, !113, i64 80, !113, i64 88, !113, i64 96, !113, i64 104, !113, i64 112, !113, i64 120, !113, i64 128, !113, i64 136, !152, i64 144, !152, i64 145, !152, i64 146}
!149 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !150, i64 0, !113, i64 8, !113, i64 16, !151, i64 24, !145, i64 28, !152, i64 32}
!150 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!151 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !114, i64 0}
!152 = !{!"bool", !114, i64 0}
!153 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !114, i64 0}
!154 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !114, i64 0}
!155 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !114, i64 0}
!156 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !114, i64 0}
!157 = !{!"branch_weights", i32 1665821, i32 3}
!158 = !{!"function_entry_count", i64 28542503}
!159 = !{!144, !113, i64 16}
!160 = !{!144, !113, i64 8}
!161 = !{!"function_entry_count", i64 317218}
!162 = !{!163, !113, i64 56}
!163 = !{!"_ZTSN11xercesc_2_712XPathMatcherE", !145, i64 8, !113, i64 16, !113, i64 24, !113, i64 32, !113, i64 40, !113, i64 48, !113, i64 56, !113, i64 64}
!164 = !{!"function_entry_count", i64 158605}
!165 = !{!125, !113, i64 16}
!166 = !{!"branch_weights", i32 832911, i32 2}
!167 = !{!"branch_weights", i32 1, i32 832911}
!168 = !{!"branch_weights", i32 832895, i32 17}
!169 = !{!"branch_weights", i32 17, i32 0}
!170 = distinct !{!170, !133}
!171 = !{!"branch_weights", i32 832911, i32 13200436}
!172 = distinct !{!172, !133}
!173 = !{!145, !145, i64 0}
!174 = !{!"function_entry_count", i64 16}
!175 = !{!"branch_weights", i32 1, i32 17}
!176 = !{!"function_entry_count", i64 32}
!177 = !{!"branch_weights", i32 1, i32 33}
!178 = !{!179, !113, i64 24}
!179 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !150, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32, !113, i64 40, !145, i64 48}
!180 = !{!"function_entry_count", i64 158609}
!181 = !{!"branch_weights", i32 19, i32 158592}
!182 = !{!"function_entry_count", i64 2}
!183 = !{!184, !145, i64 12}
!184 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEEE", !152, i64 8, !145, i64 12, !145, i64 16, !113, i64 24, !113, i64 32}
!185 = !{!186, !145, i64 12}
!186 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEEE", !152, i64 8, !145, i64 12, !145, i64 16, !113, i64 24, !113, i64 32}
!187 = !{!"branch_weights", i32 28542504, i32 1}
!188 = !{!186, !113, i64 32}
!189 = !{!186, !113, i64 24}
!190 = !{!113, !113, i64 0}
!191 = !{!"function_entry_count", i64 0}
!192 = !{!193, !113, i64 40}
!193 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !194, i64 8, !113, i64 16, !145, i64 24, !113, i64 32, !113, i64 40}
!194 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !114, i64 0}
!195 = !{!"function_entry_count", i64 15857793}
!196 = !{!197, !145, i64 4}
!197 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIiEE", !152, i64 0, !145, i64 4, !145, i64 8, !113, i64 16, !113, i64 24}
!198 = !{!"function_entry_count", i64 15024850}
!199 = !{!"branch_weights", i32 1, i32 15024851}
!200 = !{!197, !113, i64 24}
!201 = !{!"function_entry_count", i64 15025182}
!202 = !{!"branch_weights", i32 15025183, i32 1}
!203 = !{!197, !113, i64 16}
!204 = !{!"branch_weights", i32 15024851, i32 1}
!205 = distinct !{!205, !133}
!206 = !{!"function_entry_count", i64 475795}
!207 = !{!"branch_weights", i32 1, i32 475796}
!208 = !{!209, !113, i64 0}
!209 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEE", !113, i64 0, !113, i64 8, !113, i64 16, !145, i64 24}
!210 = !{!"function_entry_count", i64 475811}
!211 = !{!212, !113, i64 32}
!212 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEE", !113, i64 0, !152, i64 8, !113, i64 16, !145, i64 24, !145, i64 28, !113, i64 32}
!213 = !{!212, !145, i64 24}
!214 = !{!212, !113, i64 0}
!215 = !{!212, !113, i64 16}
!216 = !{!"branch_weights", i32 1, i32 135}
!217 = !{!209, !145, i64 24}
!218 = !{!"branch_weights", i32 947746, i32 1}
!219 = !{!209, !113, i64 16}
!220 = !{!"branch_weights", i32 475796, i32 471951}
!221 = !{!"branch_weights", i32 135, i32 7581833}
!222 = distinct !{!222, !133}
!223 = !{!"function_entry_count", i64 15025150}
!224 = !{!197, !145, i64 8}
!225 = !{!"branch_weights", i32 1581, i32 15023571}
!226 = !{!"branch_weights", i32 1, i32 1580}
!227 = !{!"branch_weights", i32 11127, i32 1580}
!228 = distinct !{!228, !133}
!229 = !{!"branch_weights", i32 33, i32 1}
!230 = !{!184, !113, i64 32}
!231 = !{!184, !113, i64 24}
!232 = !{!"function_entry_count", i64 18}
!233 = !{!186, !145, i64 16}
!234 = !{!"branch_weights", i32 3, i32 17}
!235 = !{!"branch_weights", i32 1, i32 191}
!236 = !{!"branch_weights", i32 191, i32 1}
!237 = !{!"branch_weights", i32 191, i32 1153}
!238 = distinct !{!238, !133}
