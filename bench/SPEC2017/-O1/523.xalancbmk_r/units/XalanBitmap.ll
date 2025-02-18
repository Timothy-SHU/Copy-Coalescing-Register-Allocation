; ModuleID = 'XalanBitmap.cpp'
source_filename = "XalanBitmap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanBitmap" = type { i64, %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1011XalanBitmap10s_setMasksE = dso_local local_unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], align 16
@_ZN11xalanc_1_1011XalanBitmap12s_clearMasksE = dso_local local_unnamed_addr constant [8 x i32] [i32 -2, i32 -3, i32 -5, i32 -9, i32 -17, i32 -33, i32 -65, i32 -129], align 16

@_ZN11xalanc_1_1011XalanBitmapC1ERN11xercesc_2_713MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xalanc_1_1011XalanBitmapC2ERN11xercesc_2_713MemoryManagerEm
@_ZN11xalanc_1_1011XalanBitmapD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011XalanBitmapD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011XalanBitmapC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !39 {
  %4 = alloca i8, align 1
  store i64 %2, ptr %0, align 8, !tbaa !40
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanBitmap", ptr %0, i64 0, i32 1
  %6 = add i64 %2, 8
  %7 = lshr i64 %6, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !tbaa !47
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %3, ptr %0, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  store ptr %3, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %10 unwind label %30, !prof !50

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !49
  %14 = load i64, ptr %6, align 8, !tbaa !51
  %15 = load i64, ptr %12, align 8, !tbaa !52
  %16 = load ptr, ptr %11, align 8, !tbaa !53
  %17 = load ptr, ptr %5, align 8, !tbaa !49
  store ptr %17, ptr %0, align 8, !tbaa !49
  %18 = load i64, ptr %7, align 8, !tbaa !51
  store i64 %18, ptr %6, align 8, !tbaa !51
  %19 = load i64, ptr %8, align 8, !tbaa !52
  store i64 %19, ptr %12, align 8, !tbaa !52
  %20 = load ptr, ptr %9, align 8, !tbaa !53
  store ptr %20, ptr %11, align 8, !tbaa !53
  store ptr %13, ptr %5, align 8, !tbaa !49
  store i64 %14, ptr %7, align 8, !tbaa !51
  store i64 %15, ptr %8, align 8, !tbaa !52
  store ptr %16, ptr %9, align 8, !tbaa !53
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %29, label %22, !prof !50

22:                                               ; preds = %10
  %23 = load ptr, ptr %13, align 8, !tbaa !54
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %16)
          to label %29 unwind label %26

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #10
  unreachable

29:                                               ; preds = %10, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret void

30:                                               ; preds = %4
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load i64, ptr %8, align 8, !tbaa !52
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 8, !tbaa !53
  %36 = load ptr, ptr %5, align 8, !tbaa !49
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #10
  unreachable

43:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011XalanBitmapD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanBitmap", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !52
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !57

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !58

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #10
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1011XalanBitmap8clearAllEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) local_unnamed_addr #3 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanBitmap", ptr %0, i64 0, i32 1, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !51
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanBitmap", ptr %0, i64 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %3, i1 false)
  br label %8

8:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !51
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = getelementptr inbounds i8, ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !52
  br i1 %12, label %15, label %33, !prof !50

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !50

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %131, label %20, !prof !59

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !53
  %22 = load i64, ptr %6, align 8, !tbaa !51
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load i8, ptr %3, align 1, !tbaa !47
  store i8 %27, ptr %25, align 1, !tbaa !47
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !51
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !51
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %131, label %24, !prof !60, !llvm.loop !61

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %90

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %36 = load ptr, ptr %0, align 8, !tbaa !49
  store ptr %36, ptr %5, align 8, !tbaa !49
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !51
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !52
  %39 = load ptr, ptr %36, align 8, !tbaa !54
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %8)
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !53
  %44 = load i64, ptr %37, align 8, !tbaa !51
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  %46 = load ptr, ptr %9, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %45, ptr noundef %46, ptr noundef %1)
          to label %47 unwind label %76

47:                                               ; preds = %35
  %48 = load ptr, ptr %43, align 8, !tbaa !53
  %49 = load i64, ptr %37, align 8, !tbaa !51
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %50, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %51 unwind label %76

51:                                               ; preds = %47
  %52 = load ptr, ptr %43, align 8, !tbaa !53
  %53 = load i64, ptr %37, align 8, !tbaa !51
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = load ptr, ptr %9, align 8, !tbaa !53
  %56 = load i64, ptr %6, align 8, !tbaa !51
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %54, ptr noundef %1, ptr noundef %57)
          to label %58 unwind label %76

58:                                               ; preds = %51
  %59 = load ptr, ptr %0, align 8, !tbaa !49
  %60 = load i64, ptr %6, align 8, !tbaa !51
  %61 = load i64, ptr %13, align 8, !tbaa !52
  %62 = load ptr, ptr %9, align 8, !tbaa !53
  %63 = load ptr, ptr %5, align 8, !tbaa !49
  store ptr %63, ptr %0, align 8, !tbaa !49
  %64 = load i64, ptr %37, align 8, !tbaa !51
  store i64 %64, ptr %6, align 8, !tbaa !51
  %65 = load i64, ptr %38, align 8, !tbaa !52
  store i64 %65, ptr %13, align 8, !tbaa !52
  %66 = load ptr, ptr %43, align 8, !tbaa !53
  store ptr %66, ptr %9, align 8, !tbaa !53
  store ptr %59, ptr %5, align 8, !tbaa !49
  store i64 %60, ptr %37, align 8, !tbaa !51
  store i64 %61, ptr %38, align 8, !tbaa !52
  store ptr %62, ptr %43, align 8, !tbaa !53
  %67 = icmp eq i64 %61, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %58
  %69 = load ptr, ptr %59, align 8, !tbaa !54
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %62)
          to label %75 unwind label %72

72:                                               ; preds = %68
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @__clang_call_terminate(ptr %74) #10
  unreachable

75:                                               ; preds = %58, %68
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  br label %131

76:                                               ; preds = %51, %47, %35
  %77 = landingpad { ptr, i32 }
          cleanup
  %78 = load i64, ptr %38, align 8, !tbaa !52
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %43, align 8, !tbaa !53
  %82 = load ptr, ptr %5, align 8, !tbaa !49
  %83 = load ptr, ptr %82, align 8, !tbaa !54
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef %81)
          to label %89 unwind label %86

86:                                               ; preds = %80
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #10
  unreachable

89:                                               ; preds = %76, %80
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  resume { ptr, i32 } %77

90:                                               ; preds = %33
  %91 = ptrtoint ptr %11 to i64
  %92 = ptrtoint ptr %1 to i64
  %93 = sub i64 %91, %92
  %94 = icmp ugt i64 %93, %2
  br i1 %94, label %112, label %95

95:                                               ; preds = %90
  %96 = icmp eq i64 %93, %2
  br i1 %96, label %100, label %97

97:                                               ; preds = %95
  %98 = sub i64 %2, %93
  %99 = tail call i64 @llvm.umax.i64(i64 %98, i64 1)
  br label %102

100:                                              ; preds = %102, %95
  %101 = icmp eq ptr %11, %1
  br i1 %101, label %110, label %106

102:                                              ; preds = %97, %102
  %103 = phi i64 [ %104, %102 ], [ 0, %97 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %104 = add nuw i64 %103, 1
  %105 = icmp eq i64 %104, %99
  br i1 %105, label %100, label %102, !llvm.loop !64

106:                                              ; preds = %100, %106
  %107 = phi ptr [ %108, %106 ], [ %1, %100 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %107)
  %108 = getelementptr inbounds i8, ptr %107, i64 1
  %109 = icmp eq ptr %108, %11
  br i1 %109, label %110, label %106, !llvm.loop !65

110:                                              ; preds = %106, %100
  %111 = load i8, ptr %3, align 1, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %111, i64 %93, i1 false)
  br label %131

112:                                              ; preds = %90
  %113 = sub i64 0, %2
  %114 = getelementptr inbounds i8, ptr %11, i64 %113
  %115 = icmp eq i64 %2, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112, %116
  %117 = phi ptr [ %118, %116 ], [ %114, %112 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %117)
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  %119 = icmp eq ptr %118, %11
  br i1 %119, label %120, label %116, !llvm.loop !66

120:                                              ; preds = %116, %112
  %121 = icmp eq ptr %114, %1
  br i1 %121, label %127, label %122

122:                                              ; preds = %120
  %123 = ptrtoint ptr %114 to i64
  %124 = sub i64 %123, %92
  %125 = sub i64 0, %124
  %126 = getelementptr inbounds i8, ptr %11, i64 %125
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %126, ptr align 1 %1, i64 %124, i1 false)
  br label %127

127:                                              ; preds = %120, %122
  %128 = icmp eq i64 %2, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %127
  %130 = load i8, ptr %3, align 1, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %130, i64 %2, i1 false)
  br label %131

131:                                              ; preds = %24, %18, %129, %127, %110, %75
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %130, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !51
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !52
  br i1 %17, label %20, label %38

20:                                               ; preds = %10
  %21 = icmp ult i64 %19, %13
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %13)
  br label %23

23:                                               ; preds = %20, %22
  %24 = icmp eq ptr %2, %3
  br i1 %24, label %130, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !53
  %27 = load i64, ptr %11, align 8, !tbaa !51
  %28 = getelementptr i8, ptr %26, i64 %27
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %36, %29 ], [ %2, %25 ]
  %31 = phi ptr [ %33, %29 ], [ %28, %25 ]
  %32 = load i8, ptr %30, align 1, !tbaa !47
  store i8 %32, ptr %31, align 1, !tbaa !47
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  %34 = load i64, ptr %11, align 8, !tbaa !51
  %35 = add i64 %34, 1
  store i64 %35, ptr %11, align 8, !tbaa !51
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %130, label %29, !llvm.loop !67

38:                                               ; preds = %10
  %39 = icmp ugt i64 %13, %19
  br i1 %39, label %40, label %95

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %41 = load ptr, ptr %0, align 8, !tbaa !49
  store ptr %41, ptr %5, align 8, !tbaa !49
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !51
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %43, align 8, !tbaa !52
  %44 = load ptr, ptr %41, align 8, !tbaa !54
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %13)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !53
  %49 = load i64, ptr %42, align 8, !tbaa !51
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = load ptr, ptr %14, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %50, ptr noundef %51, ptr noundef %1)
          to label %52 unwind label %81

52:                                               ; preds = %40
  %53 = load ptr, ptr %48, align 8, !tbaa !53
  %54 = load i64, ptr %42, align 8, !tbaa !51
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %2, ptr noundef %3)
          to label %56 unwind label %81

56:                                               ; preds = %52
  %57 = load ptr, ptr %48, align 8, !tbaa !53
  %58 = load i64, ptr %42, align 8, !tbaa !51
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  %60 = load ptr, ptr %14, align 8, !tbaa !53
  %61 = load i64, ptr %11, align 8, !tbaa !51
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %59, ptr noundef %1, ptr noundef %62)
          to label %63 unwind label %81

63:                                               ; preds = %56
  %64 = load ptr, ptr %0, align 8, !tbaa !49
  %65 = load i64, ptr %11, align 8, !tbaa !51
  %66 = load i64, ptr %18, align 8, !tbaa !52
  %67 = load ptr, ptr %14, align 8, !tbaa !53
  %68 = load ptr, ptr %5, align 8, !tbaa !49
  store ptr %68, ptr %0, align 8, !tbaa !49
  %69 = load i64, ptr %42, align 8, !tbaa !51
  store i64 %69, ptr %11, align 8, !tbaa !51
  %70 = load i64, ptr %43, align 8, !tbaa !52
  store i64 %70, ptr %18, align 8, !tbaa !52
  %71 = load ptr, ptr %48, align 8, !tbaa !53
  store ptr %71, ptr %14, align 8, !tbaa !53
  store ptr %64, ptr %5, align 8, !tbaa !49
  store i64 %65, ptr %42, align 8, !tbaa !51
  store i64 %66, ptr %43, align 8, !tbaa !52
  store ptr %67, ptr %48, align 8, !tbaa !53
  %72 = icmp eq i64 %66, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load ptr, ptr %64, align 8, !tbaa !54
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %67)
          to label %80 unwind label %77

77:                                               ; preds = %73
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #10
  unreachable

80:                                               ; preds = %63, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  br label %130

81:                                               ; preds = %56, %52, %40
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load i64, ptr %43, align 8, !tbaa !52
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %48, align 8, !tbaa !53
  %87 = load ptr, ptr %5, align 8, !tbaa !49
  %88 = load ptr, ptr %87, align 8, !tbaa !54
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #10
  unreachable

94:                                               ; preds = %81, %85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  resume { ptr, i32 } %82

95:                                               ; preds = %38
  %96 = ptrtoint ptr %16 to i64
  %97 = ptrtoint ptr %1 to i64
  %98 = sub i64 %96, %97
  %99 = icmp ugt i64 %98, %8
  br i1 %99, label %114, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds i8, ptr %2, i64 %98
  %102 = icmp eq ptr %101, %3
  br i1 %102, label %103, label %105

103:                                              ; preds = %105, %100
  %104 = icmp eq ptr %16, %1
  br i1 %104, label %113, label %109

105:                                              ; preds = %100, %105
  %106 = phi ptr [ %107, %105 ], [ %101, %100 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %106)
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = icmp eq ptr %107, %3
  br i1 %108, label %103, label %105, !llvm.loop !68

109:                                              ; preds = %103, %109
  %110 = phi ptr [ %111, %109 ], [ %1, %103 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %110)
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = icmp eq ptr %111, %16
  br i1 %112, label %113, label %109, !llvm.loop !69

113:                                              ; preds = %109, %103
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %98, i1 false)
  br label %130

114:                                              ; preds = %95
  %115 = sub i64 0, %8
  %116 = getelementptr inbounds i8, ptr %16, i64 %115
  %117 = icmp eq ptr %3, %2
  br i1 %117, label %122, label %118

118:                                              ; preds = %114, %118
  %119 = phi ptr [ %120, %118 ], [ %116, %114 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %119)
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = icmp eq ptr %120, %16
  br i1 %121, label %122, label %118, !llvm.loop !70

122:                                              ; preds = %118, %114
  %123 = icmp eq ptr %116, %1
  br i1 %123, label %129, label %124

124:                                              ; preds = %122
  %125 = ptrtoint ptr %116 to i64
  %126 = sub i64 %125, %97
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i8, ptr %16, i64 %127
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %128, ptr align 1 %1, i64 %126, i1 false)
  br label %129

129:                                              ; preds = %124, %122
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %8, i1 false)
  br label %130

130:                                              ; preds = %29, %23, %80, %113, %129, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !52
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !50

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !47
  store i8 %13, ptr %12, align 1, !tbaa !47
  %14 = load i64, ptr %4, align 8, !tbaa !51
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !51
  br label %61

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %22 = load ptr, ptr %0, align 8, !tbaa !49
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %23 unwind label %45

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !49
  %25 = load i64, ptr %4, align 8, !tbaa !51
  %26 = load i64, ptr %6, align 8, !tbaa !52
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = load ptr, ptr %3, align 8, !tbaa !49
  store ptr %29, ptr %0, align 8, !tbaa !49
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !51
  store i64 %31, ptr %4, align 8, !tbaa !51
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !52
  store i64 %33, ptr %6, align 8, !tbaa !52
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  store ptr %35, ptr %27, align 8, !tbaa !53
  store ptr %24, ptr %3, align 8, !tbaa !49
  store i64 %25, ptr %30, align 8, !tbaa !51
  store i64 %26, ptr %32, align 8, !tbaa !52
  store ptr %28, ptr %34, align 8, !tbaa !53
  %36 = icmp eq i64 %26, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %23
  %38 = load ptr, ptr %24, align 8, !tbaa !54
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %28)
          to label %44 unwind label %41

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #10
  unreachable

44:                                               ; preds = %23, %37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %61

45:                                               ; preds = %16
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !52
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !53
  %53 = load ptr, ptr %3, align 8, !tbaa !49
  %54 = load ptr, ptr %53, align 8, !tbaa !54
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %52)
          to label %60 unwind label %57

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #10
  unreachable

60:                                               ; preds = %45, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  resume { ptr, i32 } %46

61:                                               ; preds = %44, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %4 = load ptr, ptr %0, align 8, !tbaa !49
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = load ptr, ptr %3, align 8, !tbaa !49
  store ptr %12, ptr %0, align 8, !tbaa !49
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !51
  store i64 %14, ptr %6, align 8, !tbaa !51
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !52
  store i64 %16, ptr %8, align 8, !tbaa !52
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  store ptr %18, ptr %10, align 8, !tbaa !53
  store ptr %5, ptr %3, align 8, !tbaa !49
  store i64 %7, ptr %13, align 8, !tbaa !51
  store i64 %9, ptr %15, align 8, !tbaa !52
  store ptr %11, ptr %17, align 8, !tbaa !53
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !72

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !54
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #10
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !51
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !72

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !49
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !51
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !52
  %16 = load ptr, ptr %2, align 8, !tbaa !54
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !53
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = load i64, ptr %9, align 8, !tbaa !51
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !49
  %27 = load i64, ptr %6, align 8, !tbaa !51
  %28 = load i64, ptr %7, align 8, !tbaa !52
  %29 = load ptr, ptr %8, align 8, !tbaa !53
  %30 = load ptr, ptr %5, align 8, !tbaa !49
  store ptr %30, ptr %0, align 8, !tbaa !49
  %31 = load i64, ptr %14, align 8, !tbaa !51
  store i64 %31, ptr %6, align 8, !tbaa !51
  %32 = load i64, ptr %15, align 8, !tbaa !52
  store i64 %32, ptr %7, align 8, !tbaa !52
  %33 = load ptr, ptr %20, align 8, !tbaa !53
  store ptr %33, ptr %8, align 8, !tbaa !53
  store ptr %26, ptr %5, align 8, !tbaa !49
  store i64 %27, ptr %14, align 8, !tbaa !51
  store i64 %28, ptr %15, align 8, !tbaa !52
  store ptr %29, ptr %20, align 8, !tbaa !53
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !54
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #10
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !52
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !53
  %49 = load ptr, ptr %5, align 8, !tbaa !49
  %50 = load ptr, ptr %49, align 8, !tbaa !54
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #10
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !73

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !54
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !74
  store ptr %63, ptr %8, align 8, !tbaa !53
  store i64 %3, ptr %7, align 8, !tbaa !52
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !39 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 2}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSN11xalanc_1_1011XalanBitmapE", !42, i64 0, !45, i64 8}
!42 = !{!"long", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !46, i64 0, !42, i64 8, !42, i64 16, !46, i64 24}
!46 = !{!"any pointer", !43, i64 0}
!47 = !{!43, !43, i64 0}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!45, !46, i64 0}
!50 = !{!"branch_weights", i32 1, i32 0}
!51 = !{!45, !42, i64 8}
!52 = !{!45, !42, i64 16}
!53 = !{!45, !46, i64 24}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !44, i64 0}
!56 = !{!"function_entry_count", i64 3}
!57 = !{!"branch_weights", i32 1, i32 2}
!58 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!59 = !{!"branch_weights", i32 1, i32 127}
!60 = !{!"branch_weights", i32 127, i32 1}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !62, !63}
!65 = distinct !{!65, !62, !63}
!66 = distinct !{!66, !62, !63}
!67 = distinct !{!67, !62, !63}
!68 = distinct !{!68, !62, !63}
!69 = distinct !{!69, !62, !63}
!70 = distinct !{!70, !62, !63}
!71 = !{!"function_entry_count", i64 2}
!72 = !{!"branch_weights", i32 2, i32 0}
!73 = !{!"branch_weights", i32 0, i32 2}
!74 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
