; ModuleID = 'IdentityConstraintHandler.cpp'
source_filename = "IdentityConstraintHandler.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::IdentityConstraintHandler" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueStoreCache" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XPathMatcherStack" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.2" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XPathMatcher" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIiE3popEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_725IdentityConstraintHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %8 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %2)
          to label %9 unwind label %27, !prof !69

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_717XPathMatcherStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %10)
          to label %11 unwind label %29, !prof !69

11:                                               ; preds = %9
  store ptr %8, ptr %6, align 8, !tbaa !70
  %12 = load ptr, ptr %5, align 8, !tbaa !68
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %12)
          to label %14 unwind label %27, !prof !69

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_715ValueStoreCacheC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %15)
          to label %16 unwind label %31, !prof !69

16:                                               ; preds = %14
  store ptr %13, ptr %7, align 8, !tbaa !71
  %17 = load ptr, ptr %5, align 8, !tbaa !68
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %17)
          to label %19 unwind label %27, !prof !69

19:                                               ; preds = %16
  %20 = load ptr, ptr %7, align 8, !tbaa !71
  %21 = load ptr, ptr %6, align 8, !tbaa !70
  %22 = load ptr, ptr %5, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_714FieldActivatorC1EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %20, ptr noundef %21, ptr noundef %22)
          to label %23 unwind label %33, !prof !69

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 5
  store ptr %18, ptr %24, align 8, !tbaa !72
  %25 = load ptr, ptr %7, align 8, !tbaa !71
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %25, i64 0, i32 4
  store ptr %1, ptr %26, align 8, !tbaa !73
  ret void

27:                                               ; preds = %16, %11, %3
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %35

29:                                               ; preds = %9
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %2) #10
  br label %35

31:                                               ; preds = %14
  %32 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #10
  br label %35

33:                                               ; preds = %19
  %34 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #10
  br label %35

35:                                               ; preds = %33, %31, %29, %27
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %28, %27 ], [ %32, %31 ], [ %30, %29 ]
  %37 = extractvalue { ptr, i32 } %36, 1
  %38 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = extractvalue { ptr, i32 } %36, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #10
  invoke void @__cxa_rethrow() #11
          to label %59 unwind label %43

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %45 unwind label %56

45:                                               ; preds = %43, %35
  %46 = phi ptr [ null, %43 ], [ @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, %35 ]
  %47 = phi ptr [ null, %43 ], [ %0, %35 ]
  %48 = phi { ptr, i32 } [ %44, %43 ], [ %36, %35 ]
  %49 = icmp eq ptr %47, null
  %50 = or i1 %39, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(48) %47)
          to label %55 unwind label %52

52:                                               ; preds = %51
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  tail call void @__clang_call_terminate(ptr %54) #12
  unreachable

55:                                               ; preds = %45, %51
  resume { ptr, i32 } %48

56:                                               ; preds = %43
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #12
  unreachable

59:                                               ; preds = %40
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !60 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !75

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_717XPathMatcherStackD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !75

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_715ValueStoreCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #10
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !75

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_714FieldActivatorD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #10
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_717XPathMatcherStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_715ValueStoreCacheC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_714FieldActivatorC1EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !76 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandlerD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_725IdentityConstraintHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_725IdentityConstraintHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !81

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = icmp eq ptr %11, null
  br i1 %12, label %160, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !92
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %160, label %17

17:                                               ; preds = %13, %3
  %18 = add i32 %7, -1
  %19 = icmp sgt i32 %7, 0
  br i1 %19, label %20, label %22, !prof !94

20:                                               ; preds = %17
  %21 = zext i32 %18 to i64
  br label %29

22:                                               ; preds = %48, %17
  %23 = load ptr, ptr %5, align 8, !tbaa !70
  %24 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %25, i64 0, i32 1, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !96
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %60, label %58, !prof !81

29:                                               ; preds = %20, %48
  %30 = phi i64 [ %21, %20 ], [ %56, %48 ]
  %31 = load ptr, ptr %5, align 8, !tbaa !70
  %32 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !99
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %30, %36
  br i1 %37, label %48, label %38, !prof !101

38:                                               ; preds = %29
  %39 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %40 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %33, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %41)
          to label %42 unwind label %46

42:                                               ; preds = %38
  tail call void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

43:                                               ; preds = %122, %79, %46
  %44 = phi ptr [ %118, %122 ], [ %75, %79 ], [ %39, %46 ]
  %45 = phi { ptr, i32 } [ %123, %122 ], [ %80, %79 ], [ %47, %46 ]
  call void @__cxa_free_exception(ptr %44) #10
  resume { ptr, i32 } %45

46:                                               ; preds = %38
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %43

48:                                               ; preds = %29
  %49 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %33, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !103
  %51 = getelementptr inbounds ptr, ptr %50, i64 %30
  %52 = load ptr, ptr %51, align 8, !tbaa !104
  %53 = load ptr, ptr %52, align 8, !tbaa !61
  %54 = getelementptr inbounds ptr, ptr %53, i64 5
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(72) %52, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef %2), !prof !105
  %56 = add nsw i64 %30, -1
  %57 = icmp sgt i64 %30, 0
  br i1 %57, label %29, label %22, !prof !106, !llvm.loop !107

58:                                               ; preds = %22
  %59 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %25)
  store i32 %59, ptr %23, align 8, !tbaa !78
  br label %60

60:                                               ; preds = %58, %22
  %61 = load ptr, ptr %5, align 8, !tbaa !70
  %62 = load i32, ptr %61, align 8, !tbaa !78
  %63 = icmp sgt i32 %7, %62
  br i1 %63, label %66, label %64, !prof !110

64:                                               ; preds = %103, %60
  %65 = icmp sgt i32 %7, %62
  br i1 %65, label %109, label %106, !prof !110

66:                                               ; preds = %60, %103
  %67 = phi i32 [ %104, %103 ], [ %18, %60 ]
  %68 = load ptr, ptr %5, align 8, !tbaa !70
  %69 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !98
  %71 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !99
  %73 = icmp ugt i32 %72, %67
  br i1 %73, label %81, label %74, !prof !101

74:                                               ; preds = %66
  %75 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %76 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %70, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %75, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %77)
          to label %78 unwind label %79

78:                                               ; preds = %74
  tail call void @__cxa_throw(ptr nonnull %75, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

79:                                               ; preds = %74
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %43

81:                                               ; preds = %66
  %82 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %70, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !103
  %84 = zext i32 %67 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !104
  %87 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %86, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !111
  %89 = icmp eq ptr %88, null
  br i1 %89, label %103, label %90, !prof !113

90:                                               ; preds = %81
  %91 = load ptr, ptr %88, align 8, !tbaa !61
  %92 = getelementptr inbounds ptr, ptr %91, i64 5
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef signext i16 %93(ptr noundef nonnull align 8 dereferenceable(52) %88), !prof !114
  %95 = icmp eq i16 %94, 2
  br i1 %95, label %103, label %96, !prof !115

96:                                               ; preds = %90
  %97 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !71
  %99 = load ptr, ptr %86, align 8, !tbaa !61
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  %101 = load ptr, ptr %100, align 8
  %102 = tail call noundef i32 %101(ptr noundef nonnull align 8 dereferenceable(72) %86), !prof !116
  tail call void @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %98, ptr noundef nonnull %88, i32 noundef %102)
  br label %103

103:                                              ; preds = %96, %90, %81
  %104 = add nsw i32 %67, -1
  %105 = icmp sgt i32 %67, %62
  br i1 %105, label %66, label %64, !prof !117, !llvm.loop !118

106:                                              ; preds = %157, %64
  %107 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !71
  call void @_ZN11xercesc_2_715ValueStoreCache10endElementEv(ptr noundef nonnull align 8 dereferenceable(48) %108)
  br label %160

109:                                              ; preds = %64, %157
  %110 = phi i32 [ %158, %157 ], [ %18, %64 ]
  %111 = load ptr, ptr %5, align 8, !tbaa !70
  %112 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %111, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !98
  %114 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %113, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !99
  %116 = icmp ugt i32 %115, %110
  br i1 %116, label %124, label %117, !prof !101

117:                                              ; preds = %109
  %118 = call ptr @__cxa_allocate_exception(i64 48) #10
  %119 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %113, i64 0, i32 5
  %120 = load ptr, ptr %119, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %118, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %120)
          to label %121 unwind label %122

121:                                              ; preds = %117
  call void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

122:                                              ; preds = %117
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %43

124:                                              ; preds = %109
  %125 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %113, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !103
  %127 = zext i32 %110 to i64
  %128 = getelementptr inbounds ptr, ptr %126, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !104
  %130 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcher", ptr %129, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !111
  %132 = icmp eq ptr %131, null
  br i1 %132, label %157, label %133, !prof !113

133:                                              ; preds = %124
  %134 = load ptr, ptr %131, align 8, !tbaa !61
  %135 = getelementptr inbounds ptr, ptr %134, i64 5
  %136 = load ptr, ptr %135, align 8
  %137 = call noundef signext i16 %136(ptr noundef nonnull align 8 dereferenceable(52) %131), !prof !114
  %138 = icmp eq i16 %137, 2
  br i1 %138, label %139, label %157, !prof !115

139:                                              ; preds = %133
  %140 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !71
  %142 = load ptr, ptr %129, align 8, !tbaa !61
  %143 = getelementptr inbounds ptr, ptr %142, i64 2
  %144 = load ptr, ptr %143, align 8
  %145 = call noundef i32 %144(ptr noundef nonnull align 8 dereferenceable(72) %129), !prof !119
  %146 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %141, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %148 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %147, ptr noundef nonnull %131, i32 noundef %145, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150, !prof !121

150:                                              ; preds = %139
  %151 = load ptr, ptr %148, align 8, !tbaa !122
  br label %152

152:                                              ; preds = %139, %150
  %153 = phi ptr [ %151, %150 ], [ null, %139 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155, !prof !121

155:                                              ; preds = %152
  %156 = load ptr, ptr %140, align 8, !tbaa !71
  call void @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE(ptr noundef nonnull align 8 dereferenceable(80) %153, ptr noundef %156)
  br label %157

157:                                              ; preds = %152, %155, %133, %124
  %158 = add nsw i32 %110, -1
  %159 = icmp sgt i32 %110, %62
  br i1 %159, label %109, label %106, !prof !117, !llvm.loop !124

160:                                              ; preds = %9, %106, %13
  ret void
}

declare void @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_715ValueStoreCache10endElementEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 1 %5, i32 noundef %6) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !94

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !92
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22, !prof !94

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = load i32, ptr %19, align 8, !tbaa !78
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %123, label %22, !prof !125

22:                                               ; preds = %17, %14
  %23 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_715ValueStoreCache12startElementEv(ptr noundef nonnull align 8 dereferenceable(48) %24)
  %25 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !95
  %29 = load i32, ptr %26, align 8, !tbaa !78
  %30 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %28, i64 0, i32 1, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !96
  %32 = add i32 %31, 1
  %33 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %28, i64 0, i32 1, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !126
  %35 = icmp ugt i32 %32, %34
  br i1 %35, label %36, label %70, !prof !127

36:                                               ; preds = %22
  %37 = uitofp i32 %31 to double
  %38 = fmul double %37, 1.250000e+00
  %39 = fptoui double %38 to i32
  %40 = tail call i32 @llvm.umax.i32(i32 %32, i32 %39)
  %41 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %28, i64 0, i32 1, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !128
  %43 = zext i32 %40 to i64
  %44 = shl nuw nsw i64 %43, 2
  %45 = load ptr, ptr %42, align 8, !tbaa !61
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %44), !prof !129
  %49 = load i32, ptr %30, align 4, !tbaa !96
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51, !prof !130

51:                                               ; preds = %36
  %52 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %28, i64 0, i32 1, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !131
  br label %61

54:                                               ; preds = %61, %36
  %55 = load ptr, ptr %41, align 8, !tbaa !128
  %56 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %28, i64 0, i32 1, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !131
  %58 = load ptr, ptr %55, align 8, !tbaa !61
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %57), !prof !132
  store ptr %48, ptr %56, align 8, !tbaa !131
  store i32 %40, ptr %33, align 8, !tbaa !126
  br label %70

61:                                               ; preds = %61, %51
  %62 = phi i64 [ 0, %51 ], [ %66, %61 ]
  %63 = getelementptr inbounds i32, ptr %53, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !133
  %65 = getelementptr inbounds i32, ptr %48, i64 %62
  store i32 %64, ptr %65, align 4, !tbaa !133
  %66 = add nuw nsw i64 %62, 1
  %67 = load i32, ptr %30, align 4, !tbaa !96
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %61, label %54, !prof !134, !llvm.loop !135

70:                                               ; preds = %22, %54
  %71 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %28, i64 0, i32 1, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !131
  %73 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %28, i64 0, i32 1, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !96
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %72, i64 %75
  store i32 %29, ptr %76, align 4, !tbaa !133
  %77 = load i32, ptr %73, align 4, !tbaa !96
  %78 = add i32 %77, 1
  store i32 %78, ptr %73, align 4, !tbaa !96
  %79 = load ptr, ptr %23, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi(ptr noundef nonnull align 8 dereferenceable(48) %79, ptr noundef nonnull %1, i32 noundef %2)
  %80 = icmp eq i32 %15, 0
  br i1 %80, label %81, label %87, !prof !136

81:                                               ; preds = %93, %70
  %82 = load ptr, ptr %25, align 8, !tbaa !70
  %83 = load i32, ptr %82, align 8, !tbaa !78
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %123, label %85, !prof !137

85:                                               ; preds = %81
  %86 = zext i32 %83 to i64
  br label %97

87:                                               ; preds = %70, %93
  %88 = phi i32 [ %95, %93 ], [ 0, %70 ]
  %89 = load ptr, ptr %8, align 8, !tbaa !82
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91, !prof !138

91:                                               ; preds = %87
  %92 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %89, i32 noundef %88)
  br label %93

93:                                               ; preds = %87, %91
  %94 = phi ptr [ %92, %91 ], [ null, %87 ]
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %94, i32 noundef %2)
  %95 = add nuw i32 %88, 1
  %96 = icmp eq i32 %95, %15
  br i1 %96, label %81, label %87, !prof !139, !llvm.loop !140

97:                                               ; preds = %85, %113
  %98 = phi i64 [ 0, %85 ], [ %121, %113 ]
  %99 = load ptr, ptr %25, align 8, !tbaa !70
  %100 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !98
  %102 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %101, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !99
  %104 = zext i32 %103 to i64
  %105 = icmp ult i64 %98, %104
  br i1 %105, label %113, label %106, !prof !101

106:                                              ; preds = %97
  %107 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %108 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %101, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %107, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %109)
          to label %110 unwind label %111

110:                                              ; preds = %106
  tail call void @__cxa_throw(ptr nonnull %107, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

111:                                              ; preds = %106
  %112 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %107) #10
  resume { ptr, i32 } %112

113:                                              ; preds = %97
  %114 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %101, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !103
  %116 = getelementptr inbounds ptr, ptr %115, i64 %98
  %117 = load ptr, ptr %116, align 8, !tbaa !104
  %118 = load ptr, ptr %117, align 8, !tbaa !61
  %119 = getelementptr inbounds ptr, ptr %118, i64 4
  %120 = load ptr, ptr %119, align 8
  tail call void %120(ptr noundef nonnull align 8 dereferenceable(72) %117, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 1 %5, i32 noundef %6), !prof !141
  %121 = add nuw nsw i64 %98, 1
  %122 = icmp eq i64 %121, %86
  br i1 %122, label %123, label %97, !prof !142, !llvm.loop !143

123:                                              ; preds = %113, %81, %17
  ret void
}

declare void @_ZN11xercesc_2_715ValueStoreCache12startElementEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !144 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7, !prof !138

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = tail call noundef ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %9, i32 noundef %2, ptr noundef %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = load i32, ptr %14, align 8, !tbaa !78
  %16 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !99
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %30, !prof !139

21:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 1)
  %22 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %17, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = load i32, ptr %18, align 4, !tbaa !99
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  store ptr %12, ptr %26, align 8, !tbaa !104
  %27 = add i32 %24, 1
  store i32 %27, ptr %18, align 4, !tbaa !99
  %28 = load i32, ptr %14, align 8, !tbaa !78
  %29 = add i32 %28, 1
  store i32 %29, ptr %14, align 8, !tbaa !78
  br label %35

30:                                               ; preds = %7
  %31 = add i32 %15, 1
  store i32 %31, ptr %14, align 8, !tbaa !78
  %32 = load ptr, ptr %17, align 8, !tbaa !61
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %12, i32 noundef %15)
  br label %35

35:                                               ; preds = %21, %30
  %36 = load ptr, ptr %12, align 8, !tbaa !61
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(72) %12), !prof !147
  br label %39

39:                                               ; preds = %3, %35
  ret void
}

declare noundef ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717XPathMatcherStackD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715ValueStoreCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714FieldActivatorD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 !prof !60 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_717XPathMatcherStack5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret void
}

declare void @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_717XPathMatcherStack5clearEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !76 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !61
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIiE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !96
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !152

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !128
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !96
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !153

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !131
  %31 = zext i32 %16 to i64
  %32 = getelementptr inbounds i32, ptr %30, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !133
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef %16)
  ret i32 %33
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !96
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !154

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 156, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %34, label %16, !prof !154

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4, !tbaa !96
  %18 = add i32 %17, -1
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  %23 = zext i32 %1 to i64
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi i64 [ %23, %20 ], [ %26, %24 ]
  %26 = add nuw nsw i64 %25, 1
  %27 = getelementptr inbounds i32, ptr %22, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !133
  %29 = getelementptr inbounds i32, ptr %22, i64 %25
  store i32 %28, ptr %29, align 4, !tbaa !133
  %30 = load i32, ptr %3, align 4, !tbaa !96
  %31 = add i32 %30, -1
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %26, %32
  br i1 %33, label %24, label %34, !llvm.loop !155

34:                                               ; preds = %24, %16, %13
  %35 = phi i32 [ %4, %13 ], [ %17, %16 ], [ %30, %24 ]
  %36 = add i32 %35, -1
  store i32 %36, ptr %3, align 4, !tbaa !96
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !76 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !61
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 !prof !156 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !159
  %9 = load ptr, ptr %0, align 8, !tbaa !160
  %10 = load ptr, ptr %6, align 8, !tbaa !61
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9), !prof !161
  store i32 %12, ptr %3, align 4, !tbaa !133
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !163

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !164
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !165

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !157
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !166
  %28 = load ptr, ptr %25, align 8, !tbaa !61
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27), !prof !167
  br i1 %31, label %36, label %32, !prof !168

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !104
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !169, !llvm.loop !170

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !92
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !172

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !173
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !174
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !175 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !99
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !176
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !177

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !61
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !178
  %21 = load i32, ptr %3, align 4, !tbaa !99
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !163

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48, !prof !179

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !104
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !103
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !104
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !104
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !180, !llvm.loop !181

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !102
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !103
  %52 = load ptr, ptr %49, align 8, !tbaa !61
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !182
  store ptr %20, ptr %50, align 8, !tbaa !103
  store i32 %12, ptr %6, align 8, !tbaa !176
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!59}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!35 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 9}
!36 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717XPathMatcherStackC1EPNS_13MemoryManagerE, i64 3}
!37 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715ValueStoreCacheC1EPNS_13MemoryManagerE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC2EPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714FieldActivatorC1EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE, i64 3}
!39 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_717XPathMatcherStackD1Ev, i64 3}
!40 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 9}
!41 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_715ValueStoreCacheD1Ev, i64 3}
!42 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, ptr @_ZN11xercesc_2_714FieldActivatorD1Ev, i64 3}
!43 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerD0Ev, ptr @_ZN11xercesc_2_725IdentityConstraintHandler7cleanUpEv, i64 3}
!44 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandlerD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!45 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, i64 832911}
!46 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, i64 4}
!47 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, i64 832911}
!48 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj, i64 12}
!49 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, ptr @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE, i64 12}
!50 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, i64 832911}
!51 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, i64 832911}
!52 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, i64 16}
!53 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, i64 16}
!54 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE, i64 16}
!55 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler19activateSelectorForEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj, i64 16}
!56 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv, ptr @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv, i64 3}
!57 = !{ptr @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv, ptr @_ZN11xercesc_2_717XPathMatcherStack5clearEv, i64 3}
!58 = !{ptr @_ZN11xercesc_2_712ValueStackOfIiE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIiE15removeElementAtEj, i64 15024850}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 3}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!65, !66, i64 8}
!65 = !{!"_ZTSN11xercesc_2_725IdentityConstraintHandlerE", !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !63, i64 0}
!68 = !{!65, !66, i64 16}
!69 = !{!"branch_weights", i32 3, i32 0}
!70 = !{!65, !66, i64 24}
!71 = !{!65, !66, i64 32}
!72 = !{!65, !66, i64 40}
!73 = !{!74, !66, i64 32}
!74 = !{!"_ZTSN11xercesc_2_715ValueStoreCacheE", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40}
!75 = !{!"branch_weights", i32 0, i32 3}
!76 = !{!"function_entry_count", i64 0}
!77 = !{!"function_entry_count", i64 832911}
!78 = !{!79, !80, i64 0}
!79 = !{!"_ZTSN11xercesc_2_717XPathMatcherStackE", !80, i64 0, !66, i64 8, !66, i64 16}
!80 = !{!"int", !67, i64 0}
!81 = !{!"branch_weights", i32 0, i32 832911}
!82 = !{!83, !66, i64 112}
!83 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !84, i64 0, !88, i64 36, !89, i64 40, !90, i64 44, !91, i64 48, !80, i64 52, !80, i64 56, !80, i64 60, !80, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !66, i64 112, !66, i64 120, !66, i64 128, !66, i64 136, !87, i64 144, !87, i64 145, !87, i64 146}
!84 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !85, i64 0, !66, i64 8, !66, i64 16, !86, i64 24, !80, i64 28, !87, i64 32}
!85 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!86 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !67, i64 0}
!87 = !{!"bool", !67, i64 0}
!88 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !67, i64 0}
!89 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !67, i64 0}
!90 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !67, i64 0}
!91 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !67, i64 0}
!92 = !{!93, !80, i64 12}
!93 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEEE", !87, i64 8, !80, i64 12, !80, i64 16, !66, i64 24, !66, i64 32}
!94 = !{!"branch_weights", i32 832910, i32 1}
!95 = !{!79, !66, i64 8}
!96 = !{!97, !80, i64 4}
!97 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIiEE", !87, i64 0, !80, i64 4, !80, i64 8, !66, i64 16, !66, i64 24}
!98 = !{!79, !66, i64 16}
!99 = !{!100, !80, i64 12}
!100 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEEE", !87, i64 8, !80, i64 12, !80, i64 16, !66, i64 24, !66, i64 32}
!101 = !{!"branch_weights", i32 28542503, i32 0}
!102 = !{!100, !66, i64 32}
!103 = !{!100, !66, i64 24}
!104 = !{!66, !66, i64 0}
!105 = !{!"VP", i32 0, i64 14191939, i64 -8312541806900806668, i64 13326576, i64 -1180168866277976172, i64 865363}
!106 = !{!"branch_weights", i32 13359029, i32 832910}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!"branch_weights", i32 158609, i32 674302}
!111 = !{!112, !66, i64 56}
!112 = !{!"_ZTSN11xercesc_2_712XPathMatcherE", !80, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64}
!113 = !{!"branch_weights", i32 158593, i32 16}
!114 = !{!"VP", i32 0, i64 16, i64 -7216796292685975179, i64 12, i64 4362298837943119911, i64 4}
!115 = !{!"branch_weights", i32 12, i32 4}
!116 = !{!"VP", i32 0, i64 4, i64 2959029922529366708, i64 4}
!117 = !{!"branch_weights", i32 0, i32 158609}
!118 = distinct !{!118, !108, !109}
!119 = !{!"VP", i32 0, i64 12, i64 2959029922529366708, i64 12}
!120 = !{!74, !66, i64 16}
!121 = !{!"branch_weights", i32 0, i32 12}
!122 = !{!123, !66, i64 0}
!123 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEE", !66, i64 0, !66, i64 8, !66, i64 16, !80, i64 24}
!124 = distinct !{!124, !108, !109}
!125 = !{!"branch_weights", i32 0, i32 832910}
!126 = !{!97, !80, i64 8}
!127 = !{!"branch_weights", i32 1580, i32 15023570}
!128 = !{!97, !66, i64 24}
!129 = !{!"VP", i32 0, i64 87, i64 8345045103670217670, i64 87}
!130 = !{!"branch_weights", i32 1, i32 1579}
!131 = !{!97, !66, i64 16}
!132 = !{!"VP", i32 0, i64 87, i64 -7405368087501025645, i64 87}
!133 = !{!80, !80, i64 0}
!134 = !{!"branch_weights", i32 11127, i32 1579}
!135 = distinct !{!135, !108, !109}
!136 = !{!"branch_weights", i32 832895, i32 16}
!137 = !{!"branch_weights", i32 1, i32 832910}
!138 = !{!"branch_weights", i32 0, i32 16}
!139 = !{!"branch_weights", i32 16, i32 0}
!140 = distinct !{!140, !108, !109}
!141 = !{!"VP", i32 0, i64 14033346, i64 2726589989807932340, i64 13326576, i64 9058354236029268730, i64 706770}
!142 = !{!"branch_weights", i32 832910, i32 13200436}
!143 = distinct !{!143, !108, !109}
!144 = !{!"function_entry_count", i64 16}
!145 = !{!146, !66, i64 24}
!146 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !85, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !80, i64 48}
!147 = !{!"VP", i32 0, i64 16, i64 6306812864651524368, i64 16}
!148 = !{!149, !66, i64 40}
!149 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !150, i64 8, !66, i64 16, !80, i64 24, !66, i64 32, !66, i64 40}
!150 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !67, i64 0}
!151 = !{!"function_entry_count", i64 15024850}
!152 = !{!"branch_weights", i32 0, i32 15024850}
!153 = !{!"branch_weights", i32 15025182, i32 0}
!154 = !{!"branch_weights", i32 15024850, i32 0}
!155 = distinct !{!155, !108, !109}
!156 = !{!"function_entry_count", i64 475811}
!157 = !{!158, !66, i64 32}
!158 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEE", !66, i64 0, !87, i64 8, !66, i64 16, !80, i64 24, !80, i64 28, !66, i64 32}
!159 = !{!158, !80, i64 24}
!160 = !{!158, !66, i64 0}
!161 = !{!"VP", i32 0, i64 475811, i64 4592451362407133634, i64 475811}
!162 = !{!158, !66, i64 16}
!163 = !{!"branch_weights", i32 1, i32 127}
!164 = !{!123, !80, i64 24}
!165 = !{!"branch_weights", i32 947745, i32 0}
!166 = !{!123, !66, i64 16}
!167 = !{!"VP", i32 0, i64 947745, i64 2119983950972065349, i64 947745}
!168 = !{!"branch_weights", i32 475795, i32 471950}
!169 = !{!"branch_weights", i32 127, i32 7581833}
!170 = distinct !{!170, !108, !109}
!171 = !{!"function_entry_count", i64 32}
!172 = !{!"branch_weights", i32 32, i32 0}
!173 = !{!93, !66, i64 32}
!174 = !{!93, !66, i64 24}
!175 = !{!"function_entry_count", i64 18}
!176 = !{!100, !80, i64 16}
!177 = !{!"branch_weights", i32 2, i32 16}
!178 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!179 = !{!"branch_weights", i32 127, i32 1}
!180 = !{!"branch_weights", i32 127, i32 1153}
!181 = distinct !{!181, !108, !109}
!182 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
