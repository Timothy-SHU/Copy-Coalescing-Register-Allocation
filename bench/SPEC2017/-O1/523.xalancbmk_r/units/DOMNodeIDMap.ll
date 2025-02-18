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

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMapC2EiPNS_11DOMDocumentE(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMNodeIDMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 4
  store i64 0, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 6
  store ptr %2, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 2
  %7 = icmp sgt i32 %1, 997
  br i1 %7, label %8, label %26

8:                                                ; preds = %3, %19
  %9 = phi i64 [ %20, %19 ], [ 0, %3 ]
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  store i64 3, ptr %6, align 8, !tbaa !44
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #6
  %13 = load ptr, ptr %5, align 8, !tbaa !43
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %13, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 376, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #7
  unreachable

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #6
  resume { ptr, i32 } %18

19:                                               ; preds = %8
  %20 = add nuw nsw i64 %9, 1
  %21 = getelementptr inbounds [5 x i32], ptr @_ZN11xercesc_2_7L7gPrimesE, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = icmp slt i32 %22, %1
  br i1 %23, label %8, label %24, !llvm.loop !62

24:                                               ; preds = %19
  %25 = sext i32 %22 to i64
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi i64 [ 0, %3 ], [ %20, %24 ]
  %28 = phi i64 [ 997, %3 ], [ %25, %24 ]
  store i64 %27, ptr %6, align 8, !tbaa !44
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 3
  store i64 %28, ptr %29, align 8, !tbaa !65
  %30 = uitofp i64 %28 to float
  %31 = fmul float %30, 0x3FE99999A0000000
  %32 = fptoui float %31 to i64
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 5
  store i64 %32, ptr %33, align 8, !tbaa !66
  %34 = shl nsw i64 %28, 3
  %35 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %2, i64 noundef %34)
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !67
  %37 = load i64, ptr %29, align 8, !tbaa !65
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %26, %39
  %40 = phi i64 [ %43, %39 ], [ 0, %26 ]
  %41 = load ptr, ptr %36, align 8, !tbaa !67
  %42 = getelementptr inbounds ptr, ptr %41, i64 %40
  store ptr null, ptr %42, align 8, !tbaa !68
  %43 = add nuw i64 %40, 1
  %44 = icmp eq i64 %43, %37
  br i1 %44, label %45, label %39, !llvm.loop !69

45:                                               ; preds = %39, %26
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMapD2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMNodeIDMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !67
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMapD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMNodeIDMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !67
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !66
  %7 = icmp ult i64 %4, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap9growTableEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i64, ptr %3, align 8, !tbaa !38
  %11 = add i64 %10, 1
  store i64 %11, ptr %3, align 8, !tbaa !38
  %12 = load ptr, ptr %1, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 42
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !65
  %18 = trunc i64 %17 to i32
  %19 = add i32 %18, -1
  %20 = icmp eq ptr %15, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %9
  %22 = load i16, ptr %15, align 2, !tbaa !70
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %21
  %25 = zext i16 %22 to i32
  %26 = getelementptr inbounds i16, ptr %15, i64 1
  %27 = load i16, ptr %26, align 2, !tbaa !70
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24, %29
  %30 = phi i16 [ %39, %29 ], [ %27, %24 ]
  %31 = phi ptr [ %38, %29 ], [ %26, %24 ]
  %32 = phi i32 [ %37, %29 ], [ %25, %24 ]
  %33 = mul i32 %32, 38
  %34 = lshr i32 %32, 24
  %35 = add i32 %33, %34
  %36 = zext i16 %30 to i32
  %37 = add i32 %35, %36
  %38 = getelementptr inbounds i16, ptr %31, i64 1
  %39 = load i16, ptr %38, align 2, !tbaa !70
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %29, !llvm.loop !71

41:                                               ; preds = %29, %24
  %42 = phi i32 [ %25, %24 ], [ %37, %29 ]
  %43 = urem i32 %42, %19
  %44 = zext i32 %43 to i64
  %45 = add nuw nsw i64 %44, 1
  br label %46

46:                                               ; preds = %9, %21, %41
  %47 = phi i64 [ %45, %41 ], [ 1, %21 ], [ 1, %9 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !67
  br label %50

50:                                               ; preds = %60, %46
  %51 = phi i64 [ %47, %46 ], [ %61, %60 ]
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = ptrtoint ptr %53 to i64
  switch i64 %54, label %55 [
    i64 -1, label %60
    i64 0, label %60
  ]

55:                                               ; preds = %50
  %56 = add i64 %51, %47
  %57 = icmp ult i64 %56, %17
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = urem i64 %56, %17
  br label %60

60:                                               ; preds = %50, %50, %55, %58
  %61 = phi i64 [ %59, %58 ], [ %56, %55 ], [ %51, %50 ], [ %51, %50 ]
  %62 = phi i1 [ true, %58 ], [ true, %55 ], [ false, %50 ], [ false, %50 ]
  br i1 %62, label %50, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds ptr, ptr %49, i64 %61
  store ptr %1, ptr %64, align 8, !tbaa !68
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMap9growTableEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !44
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8, !tbaa !44
  %9 = getelementptr inbounds [5 x i32], ptr @_ZN11xercesc_2_7L7gPrimesE, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !61
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %4, align 8, !tbaa !65
  %12 = icmp eq i64 %8, 4
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  store i64 %7, ptr %6, align 8, !tbaa !44
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #6
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %16, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 376, ptr noundef %18)
          to label %19 unwind label %20

19:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #7
  unreachable

20:                                               ; preds = %13
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #6
  resume { ptr, i32 } %21

22:                                               ; preds = %1
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = shl nsw i64 %11, 3
  %26 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %24, i64 noundef %25)
  store ptr %26, ptr %2, align 8, !tbaa !67
  %27 = load i64, ptr %4, align 8, !tbaa !65
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22, %29
  %30 = phi i64 [ %33, %29 ], [ 0, %22 ]
  %31 = load ptr, ptr %2, align 8, !tbaa !67
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  store ptr null, ptr %32, align 8, !tbaa !68
  %33 = add nuw i64 %30, 1
  %34 = icmp eq i64 %33, %27
  br i1 %34, label %35, label %29, !llvm.loop !72

35:                                               ; preds = %29, %22
  %36 = uitofp i64 %27 to float
  %37 = fmul float %36, 0x3FE99999A0000000
  %38 = fptoui float %37 to i64
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 5
  store i64 %38, ptr %39, align 8, !tbaa !66
  %40 = icmp eq i64 %5, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %35, %47
  %42 = phi i64 [ %48, %47 ], [ 0, %35 ]
  %43 = getelementptr inbounds ptr, ptr %3, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = ptrtoint ptr %44 to i64
  switch i64 %45, label %46 [
    i64 0, label %47
    i64 -1, label %47
  ]

46:                                               ; preds = %41
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %44)
  br label %47

47:                                               ; preds = %41, %41, %46
  %48 = add nuw i64 %42, 1
  %49 = icmp eq i64 %48, %5
  br i1 %49, label %50, label %41, !llvm.loop !73

50:                                               ; preds = %47, %35
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 42
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !65
  %9 = trunc i64 %8 to i32
  %10 = add i32 %9, -1
  %11 = icmp eq ptr %6, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %2
  %13 = load i16, ptr %6, align 2, !tbaa !70
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = zext i16 %13 to i32
  %17 = getelementptr inbounds i16, ptr %6, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !70
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15, %20
  %21 = phi i16 [ %30, %20 ], [ %18, %15 ]
  %22 = phi ptr [ %29, %20 ], [ %17, %15 ]
  %23 = phi i32 [ %28, %20 ], [ %16, %15 ]
  %24 = mul i32 %23, 38
  %25 = lshr i32 %23, 24
  %26 = add i32 %24, %25
  %27 = zext i16 %21 to i32
  %28 = add i32 %26, %27
  %29 = getelementptr inbounds i16, ptr %22, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !70
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %20, !llvm.loop !71

32:                                               ; preds = %20, %15
  %33 = phi i32 [ %16, %15 ], [ %28, %20 ]
  %34 = urem i32 %33, %10
  %35 = zext i32 %34 to i64
  %36 = add nuw nsw i64 %35, 1
  br label %37

37:                                               ; preds = %2, %12, %32
  %38 = phi i64 [ %36, %32 ], [ 1, %12 ], [ 1, %2 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  br label %40

40:                                               ; preds = %54, %37
  %41 = phi i64 [ %38, %37 ], [ %55, %54 ]
  %42 = load ptr, ptr %39, align 8, !tbaa !67
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %40
  %47 = icmp eq ptr %44, %1
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  store ptr inttoptr (i64 -1 to ptr), ptr %43, align 8, !tbaa !68
  br label %54

49:                                               ; preds = %46
  %50 = add i64 %41, %38
  %51 = icmp ult i64 %50, %8
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = urem i64 %50, %8
  br label %54

54:                                               ; preds = %40, %49, %52, %48
  %55 = phi i64 [ %41, %48 ], [ %53, %52 ], [ %50, %49 ], [ %41, %40 ]
  %56 = phi i1 [ false, %48 ], [ true, %52 ], [ true, %49 ], [ false, %40 ]
  br i1 %56, label %40, label %57, !llvm.loop !74

57:                                               ; preds = %54
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMNodeIDMap4findEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef readonly %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !65
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, -1
  %7 = icmp eq ptr %1, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = load i16, ptr %1, align 2, !tbaa !70
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %8
  %12 = zext i16 %9 to i32
  %13 = getelementptr inbounds i16, ptr %1, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !70
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %11, %16
  %17 = phi i16 [ %26, %16 ], [ %14, %11 ]
  %18 = phi ptr [ %25, %16 ], [ %13, %11 ]
  %19 = phi i32 [ %24, %16 ], [ %12, %11 ]
  %20 = mul i32 %19, 38
  %21 = lshr i32 %19, 24
  %22 = add i32 %20, %21
  %23 = zext i16 %17 to i32
  %24 = add i32 %22, %23
  %25 = getelementptr inbounds i16, ptr %18, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !70
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %16, !llvm.loop !71

28:                                               ; preds = %16, %11
  %29 = phi i32 [ %12, %11 ], [ %24, %16 ]
  %30 = urem i32 %29, %6
  %31 = zext i32 %30 to i64
  %32 = add nuw nsw i64 %31, 1
  br label %33

33:                                               ; preds = %2, %8, %28
  %34 = phi i64 [ %32, %28 ], [ 1, %8 ], [ 1, %2 ]
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIDMap", ptr %0, i64 0, i32 1
  br label %36

36:                                               ; preds = %79, %33
  %37 = phi i64 [ %34, %33 ], [ %80, %79 ]
  %38 = phi ptr [ undef, %33 ], [ %81, %79 ]
  %39 = load ptr, ptr %35, align 8, !tbaa !67
  %40 = getelementptr inbounds ptr, ptr %39, i64 %37
  %41 = load ptr, ptr %40, align 8, !tbaa !68
  %42 = ptrtoint ptr %41 to i64
  switch i64 %42, label %43 [
    i64 0, label %79
    i64 -1, label %73
  ]

43:                                               ; preds = %36
  %44 = load ptr, ptr %41, align 8, !tbaa !35
  %45 = getelementptr inbounds ptr, ptr %44, i64 42
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41)
  %48 = icmp eq ptr %47, null
  %49 = or i1 %7, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load i16, ptr %47, align 2, !tbaa !70
  %52 = load i16, ptr %1, align 2, !tbaa !70
  %53 = icmp eq i16 %51, %52
  br i1 %53, label %62, label %73

54:                                               ; preds = %43
  br i1 %48, label %58, label %55

55:                                               ; preds = %54
  %56 = load i16, ptr %47, align 2, !tbaa !70
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %55, %54
  br i1 %7, label %79, label %59

59:                                               ; preds = %58
  %60 = load i16, ptr %1, align 2, !tbaa !70
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %79, label %73

62:                                               ; preds = %50, %67
  %63 = phi i16 [ %70, %67 ], [ %51, %50 ]
  %64 = phi ptr [ %69, %67 ], [ %1, %50 ]
  %65 = phi ptr [ %68, %67 ], [ %47, %50 ]
  %66 = icmp eq i16 %63, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds i16, ptr %65, i64 1
  %69 = getelementptr inbounds i16, ptr %64, i64 1
  %70 = load i16, ptr %68, align 2, !tbaa !70
  %71 = load i16, ptr %69, align 2, !tbaa !70
  %72 = icmp eq i16 %70, %71
  br i1 %72, label %62, label %73, !llvm.loop !75

73:                                               ; preds = %67, %50, %59, %55, %36
  %74 = add i64 %37, %34
  %75 = load i64, ptr %3, align 8, !tbaa !65
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = urem i64 %74, %75
  br label %79

79:                                               ; preds = %62, %73, %59, %58, %36, %77
  %80 = phi i64 [ %78, %77 ], [ %37, %36 ], [ %37, %58 ], [ %37, %59 ], [ %74, %73 ], [ %37, %62 ]
  %81 = phi ptr [ %38, %77 ], [ null, %36 ], [ %41, %58 ], [ %41, %59 ], [ %38, %73 ], [ %41, %62 ]
  %82 = phi i1 [ true, %77 ], [ false, %36 ], [ false, %58 ], [ false, %59 ], [ true, %73 ], [ false, %62 ]
  br i1 %82, label %36, label %83, !llvm.loop !76

83:                                               ; preds = %79
  ret ptr %81
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #6
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!45 = !{!46, !40, i64 280}
!46 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !47, i64 0, !52, i64 32, !54, i64 48, !40, i64 80, !40, i64 88, !40, i64 96, !57, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !58, i64 136, !40, i64 176, !40, i64 184, !40, i64 192, !42, i64 200, !40, i64 208, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !60, i64 288, !57, i64 292}
!47 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !48, i64 0, !49, i64 8, !50, i64 16, !51, i64 24}
!48 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!49 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!50 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!51 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!52 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !40, i64 0, !53, i64 8}
!53 = !{!"short", !41, i64 0}
!54 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !40, i64 0, !40, i64 8, !55, i64 16}
!55 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !56, i64 0, !40, i64 8}
!56 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!57 = !{!"bool", !41, i64 0}
!58 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !59, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !60, i64 32, !60, i64 36}
!59 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!60 = !{!"int", !41, i64 0}
!61 = !{!60, !60, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!39, !42, i64 24}
!66 = !{!39, !42, i64 40}
!67 = !{!39, !40, i64 8}
!68 = !{!40, !40, i64 0}
!69 = distinct !{!69, !63, !64}
!70 = !{!53, !53, i64 0}
!71 = distinct !{!71, !63, !64}
!72 = distinct !{!72, !63, !64}
!73 = distinct !{!73, !63, !64}
!74 = distinct !{!74, !63, !64}
!75 = distinct !{!75, !63, !64}
!76 = distinct !{!76, !63, !64}
!77 = !{!78, !40, i64 40}
!78 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !79, i64 8, !40, i64 16, !60, i64 24, !40, i64 32, !40, i64 40}
!79 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !41, i64 0}
