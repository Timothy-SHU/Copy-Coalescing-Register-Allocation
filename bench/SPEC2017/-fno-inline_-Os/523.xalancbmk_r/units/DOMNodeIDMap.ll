; ModuleID = 'DOMNodeIDMap.cpp'
source_filename = "DOMNodeIDMap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMNodeIDMap" = type { ptr, ptr, i64, i64, i64, i64, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZTVN11xercesc_2_712DOMNodeIDMapE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DOMNodeIDMapE, ptr @_ZN11xercesc_2_712DOMNodeIDMapD2Ev, ptr @_ZN11xercesc_2_712DOMNodeIDMapD0Ev] }, align 8
@_ZN11xercesc_2_7L7gPrimesE = internal unnamed_addr constant [5 x i32] [i32 997, i32 9973, i32 99991, i32 999983, i32 0], align 16
@.str = private unnamed_addr constant [17 x i8] c"DOMNodeIDMap.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712DOMNodeIDMapE = dso_local constant [30 x i8] c"N11xercesc_2_712DOMNodeIDMapE\00", align 1
@_ZTIN11xercesc_2_712DOMNodeIDMapE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DOMNodeIDMapE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_712DOMNodeIDMapC2EiPNS_11DOMDocumentE
@_ZN11xercesc_2_712DOMNodeIDMapD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOMNodeIDMapD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMapC2EiPNS_11DOMDocumentE(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMNodeIDMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 4
  store i64 0, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 6
  store ptr %2, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 2
  %7 = icmp sgt i32 %1, 997
  br i1 %7, label %8, label %25

8:                                                ; preds = %3, %18
  %9 = phi i64 [ %19, %18 ], [ 0, %3 ]
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  store i64 3, ptr %6, align 8, !tbaa !44
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #6
  %13 = load ptr, ptr %5, align 8, !tbaa !43
  %14 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %13) #7
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 376, ptr noundef %14) #7
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #6
  resume { ptr, i32 } %17

18:                                               ; preds = %8
  %19 = add nuw nsw i64 %9, 1
  %20 = getelementptr inbounds [5 x i32], ptr @_ZN11xercesc_2_7L7gPrimesE, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !45
  %22 = icmp slt i32 %21, %1
  br i1 %22, label %8, label %23, !llvm.loop !47

23:                                               ; preds = %18
  %24 = sext i32 %21 to i64
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i64 [ 0, %3 ], [ %19, %23 ]
  %27 = phi i64 [ 997, %3 ], [ %24, %23 ]
  store i64 %26, ptr %6, align 8, !tbaa !44
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 3
  store i64 %27, ptr %28, align 8, !tbaa !49
  %29 = uitofp i64 %27 to float
  %30 = fmul float %29, 0x3FE99999A0000000
  %31 = fptoui float %30 to i64
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 5
  store i64 %31, ptr %32, align 8, !tbaa !50
  %33 = shl nsw i64 %27, 3
  %34 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %2, i64 noundef %33) #7
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !51
  %36 = load i64, ptr %28, align 8, !tbaa !49
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %25, %38
  %39 = phi i64 [ %42, %38 ], [ 0, %25 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !51
  %41 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !52
  %42 = add nuw i64 %39, 1
  %43 = icmp eq i64 %42, %36
  br i1 %43, label %44, label %38, !llvm.loop !53

44:                                               ; preds = %38, %25
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #2 comdat align 2 !prof !54 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #7
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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMapD2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMNodeIDMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMapD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 {
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !50
  %7 = icmp ult i64 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap9growTableEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #7
  %9 = load i64, ptr %3, align 8, !tbaa !38
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i64 [ %9, %8 ], [ %4, %2 ]
  %12 = add i64 %11, 1
  store i64 %12, ptr %3, align 8, !tbaa !38
  %13 = load ptr, ptr %1, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 42
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !49
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, -1
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %22) #7
  %24 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %16, i32 noundef %20, ptr noundef %23) #7
  %25 = zext i32 %24 to i64
  %26 = add nuw nsw i64 %25, 1
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = load i64, ptr %17, align 8
  br label %30

30:                                               ; preds = %38, %10
  %31 = phi i64 [ %26, %10 ], [ %39, %38 ]
  %32 = getelementptr inbounds ptr, ptr %28, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = ptrtoint ptr %33 to i64
  switch i64 %34, label %35 [
    i64 -1, label %42
    i64 0, label %42
  ]

35:                                               ; preds = %30
  %36 = add i64 %31, %26
  %37 = icmp ult i64 %36, %29
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %40
  %39 = phi i64 [ %41, %40 ], [ %36, %35 ]
  br label %30

40:                                               ; preds = %35
  %41 = urem i64 %36, %29
  br label %38

42:                                               ; preds = %30, %30
  %43 = getelementptr inbounds ptr, ptr %28, i64 %31
  store ptr %1, ptr %43, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMap9growTableEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !44
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8, !tbaa !44
  %9 = getelementptr inbounds [5 x i32], ptr @_ZN11xercesc_2_7L7gPrimesE, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !45
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %4, align 8, !tbaa !49
  %12 = icmp eq i64 %8, 4
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  store i64 %7, ptr %6, align 8, !tbaa !44
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #6
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %16) #7
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 376, ptr noundef %17) #7
          to label %18 unwind label %19

18:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #6
  resume { ptr, i32 } %20

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = shl nsw i64 %11, 3
  %25 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %23, i64 noundef %24) #7
  store ptr %25, ptr %2, align 8, !tbaa !51
  %26 = load i64, ptr %4, align 8, !tbaa !49
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21, %28
  %29 = phi i64 [ %32, %28 ], [ 0, %21 ]
  %30 = load ptr, ptr %2, align 8, !tbaa !51
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  store ptr null, ptr %31, align 8, !tbaa !52
  %32 = add nuw i64 %29, 1
  %33 = icmp eq i64 %32, %26
  br i1 %33, label %34, label %28, !llvm.loop !70

34:                                               ; preds = %28, %21
  %35 = uitofp i64 %26 to float
  %36 = fmul float %35, 0x3FE99999A0000000
  %37 = fptoui float %36 to i64
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 5
  store i64 %37, ptr %38, align 8, !tbaa !50
  %39 = icmp eq i64 %5, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %34, %46
  %41 = phi i64 [ %47, %46 ], [ 0, %34 ]
  %42 = getelementptr inbounds ptr, ptr %3, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = ptrtoint ptr %43 to i64
  switch i64 %44, label %45 [
    i64 0, label %46
    i64 -1, label %46
  ]

45:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %43) #7
  br label %46

46:                                               ; preds = %40, %40, %45
  %47 = add nuw i64 %41, 1
  %48 = icmp eq i64 %47, %5
  br i1 %48, label %49, label %40, !llvm.loop !71

49:                                               ; preds = %46, %34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !72 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !73

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !74
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !75

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !74
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !76

13:                                               ; preds = %8, %13
  %14 = phi i16 [ %23, %13 ], [ %11, %8 ]
  %15 = phi ptr [ %22, %13 ], [ %10, %8 ]
  %16 = phi i32 [ %21, %13 ], [ %9, %8 ]
  %17 = mul i32 %16, 38
  %18 = lshr i32 %16, 24
  %19 = add i32 %17, %18
  %20 = zext i16 %14 to i32
  %21 = add i32 %19, %20
  %22 = getelementptr inbounds i16, ptr %15, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !74
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !77, !llvm.loop !78

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 42
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !49
  %9 = trunc i64 %8 to i32
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %12) #7
  %14 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %6, i32 noundef %10, ptr noundef %13) #7
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %15, 1
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = getelementptr inbounds ptr, ptr %18, i64 %16
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  %23 = load i64, ptr %7, align 8
  br label %24

24:                                               ; preds = %22, %35
  %25 = phi ptr [ %20, %22 ], [ %38, %35 ]
  %26 = phi i64 [ %16, %22 ], [ %36, %35 ]
  %27 = icmp eq ptr %25, %1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds ptr, ptr %18, i64 %26
  store ptr inttoptr (i64 -1 to ptr), ptr %29, align 8, !tbaa !52
  br label %40

30:                                               ; preds = %24
  %31 = add i64 %26, %16
  %32 = icmp ult i64 %31, %23
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = urem i64 %31, %23
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi i64 [ %34, %33 ], [ %31, %30 ]
  %37 = getelementptr inbounds ptr, ptr %18, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %24, !llvm.loop !79

40:                                               ; preds = %35, %2, %28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMNodeIDMap4findEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !49
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #7
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %6, ptr noundef %9) #7
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %30, %2
  %15 = phi i64 [ %12, %2 ], [ %31, %30 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !51
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = ptrtoint ptr %18 to i64
  switch i64 %19, label %20 [
    i64 0, label %34
    i64 -1, label %26
  ]

20:                                               ; preds = %14
  %21 = load ptr, ptr %18, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 42
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #7
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %24, ptr noundef %1) #7
  br i1 %25, label %34, label %26

26:                                               ; preds = %14, %20
  %27 = add i64 %15, %12
  %28 = load i64, ptr %3, align 8, !tbaa !49
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %32
  %31 = phi i64 [ %33, %32 ], [ %27, %26 ]
  br label %14, !llvm.loop !80

32:                                               ; preds = %26
  %33 = urem i64 %27, %28
  br label %30

34:                                               ; preds = %14, %20
  %35 = phi ptr [ %18, %20 ], [ null, %14 ]
  ret ptr %35
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !81 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !82

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !74
  %8 = load i16, ptr %1, align 2, !tbaa !74
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !83

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !84

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !74
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !85

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !86

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !74
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !87

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !88

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !74
  %28 = load i16, ptr %26, align 2, !tbaa !74
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !89, !llvm.loop !90

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #7
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #7
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { noreturn }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !42, i64 32}
!39 = !{!"_ZTSN11xercesc_2_712DOMNodeIDMapE", !40, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !40, i64 48}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"long", !41, i64 0}
!43 = !{!39, !40, i64 48}
!44 = !{!39, !42, i64 16}
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !41, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!39, !42, i64 24}
!50 = !{!39, !42, i64 40}
!51 = !{!39, !40, i64 8}
!52 = !{!40, !40, i64 0}
!53 = distinct !{!53, !48}
!54 = !{!"function_entry_count", i64 2954}
!55 = !{!56, !40, i64 280}
!56 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !57, i64 0, !62, i64 32, !64, i64 48, !40, i64 80, !40, i64 88, !40, i64 96, !67, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !68, i64 136, !40, i64 176, !40, i64 184, !40, i64 192, !42, i64 200, !40, i64 208, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !46, i64 288, !67, i64 292}
!57 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !58, i64 0, !59, i64 8, !60, i64 16, !61, i64 24}
!58 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!59 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!60 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!61 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!62 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !40, i64 0, !63, i64 8}
!63 = !{!"short", !41, i64 0}
!64 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !40, i64 0, !40, i64 8, !65, i64 16}
!65 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !66, i64 0, !40, i64 8}
!66 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!67 = !{!"bool", !41, i64 0}
!68 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !69, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !46, i64 32, !46, i64 36}
!69 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = !{!"function_entry_count", i64 4646679}
!73 = !{!"branch_weights", i32 1, i32 4646680}
!74 = !{!63, !63, i64 0}
!75 = !{!"branch_weights", i32 1216534, i32 3430147}
!76 = !{!"branch_weights", i32 1, i32 3430146}
!77 = !{!"branch_weights", i32 3430146, i32 42249130}
!78 = distinct !{!78, !48}
!79 = distinct !{!79, !48}
!80 = distinct !{!80, !48}
!81 = !{!"function_entry_count", i64 1231717351}
!82 = !{!"branch_weights", i32 621, i32 -1469098093}
!83 = !{!"branch_weights", i32 408901017, i32 1}
!84 = !{!"branch_weights", i32 267, i32 4}
!85 = !{!"branch_weights", i32 1, i32 4}
!86 = !{!"branch_weights", i32 156, i32 112}
!87 = !{!"branch_weights", i32 1, i32 112}
!88 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!89 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!90 = distinct !{!90, !48}
!91 = !{!92, !40, i64 40}
!92 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !93, i64 8, !40, i64 16, !46, i64 24, !40, i64 32, !40, i64 40}
!93 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !41, i64 0}
