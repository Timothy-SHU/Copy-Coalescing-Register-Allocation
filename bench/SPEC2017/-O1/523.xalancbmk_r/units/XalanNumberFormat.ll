; ModuleID = 'XalanNumberFormat.cpp'
source_filename = "XalanNumberFormat.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanNumberFormat" = type { ptr, i8, [7 x i8], %"class.xalanc_1_10::XalanDOMString", i64 }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }

$_ZN11xalanc_1_1024XalanMemMngArrayAllocateItE8allocateEmRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

@_ZN11xalanc_1_1017XalanNumberFormat26s_defaultGroupingSeparatorE = dso_local constant [2 x i16] [i16 44, i16 0], align 2
@_ZTVN11xalanc_1_1017XalanNumberFormatE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XalanNumberFormatE, ptr @_ZN11xalanc_1_1017XalanNumberFormatD2Ev, ptr @_ZN11xalanc_1_1017XalanNumberFormatD0Ev, ptr @_ZN11xalanc_1_1017XalanNumberFormat6formatEdRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XalanNumberFormat6formatEiRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XalanNumberFormat6formatEjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XalanNumberFormat6formatElRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XalanNumberFormat6formatEmRNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1017XalanNumberFormat14isGroupingUsedEv, ptr @_ZN11xalanc_1_1017XalanNumberFormat15setGroupingUsedEb, ptr @_ZN11xalanc_1_1017XalanNumberFormat15setGroupingSizeEm, ptr @_ZN11xalanc_1_1017XalanNumberFormat20setGroupingSeparatorERKNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017XalanNumberFormatE = dso_local constant [35 x i8] c"N11xalanc_1_1017XalanNumberFormatE\00", align 1
@_ZTIN11xalanc_1_1017XalanNumberFormatE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XalanNumberFormatE }, align 8

@_ZN11xalanc_1_1017XalanNumberFormatC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1017XalanNumberFormatC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017XalanNumberFormatD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanNumberFormatD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanNumberFormatC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !45 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanNumberFormatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull @_ZN11xalanc_1_1017XalanNumberFormat26s_defaultGroupingSeparatorE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 4
  store i64 3, ptr %5, align 8, !tbaa !58
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanNumberFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 !prof !45 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanNumberFormatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanNumberFormatD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 !prof !45 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanNumberFormatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017XalanNumberFormat6formatEdRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, double noundef %1, ptr noundef nonnull returned align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !45 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  tail call void @_ZN11xalanc_1_1017XalanNumberFormat13applyGroupingERKNS_14XalanDOMStringERS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret ptr %2
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanNumberFormat13applyGroupingERKNS_14XalanDOMStringERS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %4 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !49, !range !59, !noundef !60
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !58
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8, %3
  %13 = icmp eq ptr %1, %2
  br i1 %13, label %98, label %14

14:                                               ; preds = %12
  %15 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  store i32 %17, ptr %18, align 8, !tbaa !61
  br label %98

19:                                               ; preds = %8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = icmp eq ptr %1, %2
  br i1 %24, label %98, label %25

25:                                               ; preds = %23
  %26 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %27 = load i32, ptr %20, align 8, !tbaa !61
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  store i32 %27, ptr %28, align 8, !tbaa !61
  br label %98

29:                                               ; preds = %19
  %30 = zext i32 %21 to i64
  %31 = udiv i64 %30, %10
  %32 = trunc i64 %31 to i32
  %33 = add i32 %21, 2
  %34 = add i32 %33, %32
  %35 = zext i32 %34 to i64
  %36 = load ptr, ptr %2, align 8, !tbaa !62
  %37 = tail call noundef ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateItE8allocateEmRN11xercesc_2_713MemoryManagerE(i64 noundef %35, ptr noundef nonnull align 8 dereferenceable(8) %36)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %38 = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %38, ptr %4, align 8, !tbaa !63
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %4, i64 0, i32 1
  store ptr %37, ptr %39, align 8, !tbaa !65
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %4, i64 0, i32 2
  store i64 %35, ptr %40, align 8, !tbaa !66
  %41 = getelementptr inbounds i16, ptr %37, i64 %35
  %42 = getelementptr inbounds i16, ptr %41, i64 -1
  %43 = getelementptr inbounds i16, ptr %41, i64 -2
  store i16 0, ptr %42, align 2, !tbaa !67
  %44 = icmp ugt ptr %43, %37
  br i1 %44, label %45, label %56

45:                                               ; preds = %29
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !69
  %48 = load i64, ptr %9, align 8
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 3, i32 1
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, -1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 3, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = zext i32 %21 to i64
  br label %63

56:                                               ; preds = %88, %29
  %57 = phi ptr [ %43, %29 ], [ %90, %88 ]
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
          to label %59 unwind label %96

59:                                               ; preds = %56
  %60 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %58)
          to label %61 unwind label %96

61:                                               ; preds = %59
  %62 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %58, i32 noundef %60)
          to label %95 unwind label %96

63:                                               ; preds = %45, %88
  %64 = phi i64 [ 0, %45 ], [ %91, %88 ]
  %65 = phi i32 [ %21, %45 ], [ %67, %88 ]
  %66 = phi ptr [ %43, %45 ], [ %90, %88 ]
  %67 = add i32 %65, -1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i16, ptr %47, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !67
  %71 = icmp eq i64 %64, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %63
  %73 = urem i64 %64, %48
  %74 = icmp eq i64 %73, 0
  %75 = icmp ugt ptr %66, %37
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %88

77:                                               ; preds = %72, %77
  %78 = phi i64 [ %84, %77 ], [ %52, %72 ]
  %79 = phi ptr [ %83, %77 ], [ %66, %72 ]
  %80 = and i64 %78, 4294967295
  %81 = getelementptr inbounds i16, ptr %54, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !67
  %83 = getelementptr inbounds i16, ptr %79, i64 -1
  store i16 %82, ptr %79, align 2, !tbaa !67
  %84 = add nsw i64 %78, -1
  %85 = icmp sgt i64 %78, 0
  %86 = icmp ugt ptr %83, %37
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %77, label %88, !llvm.loop !70

88:                                               ; preds = %77, %72, %63
  %89 = phi ptr [ %66, %72 ], [ %66, %63 ], [ %83, %77 ]
  %90 = getelementptr inbounds i16, ptr %89, i64 -1
  store i16 %70, ptr %89, align 2, !tbaa !67
  %91 = add nuw nsw i64 %64, 1
  %92 = icmp ult i64 %91, %55
  %93 = icmp ugt ptr %90, %37
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %63, label %56, !llvm.loop !73

95:                                               ; preds = %61
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %98

96:                                               ; preds = %61, %59, %56
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  resume { ptr, i32 } %97

98:                                               ; preds = %25, %23, %14, %12, %95
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017XalanNumberFormat6formatEiRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull returned align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !45 {
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %2)
  tail call void @_ZN11xalanc_1_1017XalanNumberFormat13applyGroupingERKNS_14XalanDOMStringERS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret ptr %2
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017XalanNumberFormat6formatEjRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull returned align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !45 {
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %2)
  tail call void @_ZN11xalanc_1_1017XalanNumberFormat13applyGroupingERKNS_14XalanDOMStringERS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret ptr %2
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017XalanNumberFormat6formatElRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, i64 noundef %1, ptr noundef nonnull returned align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !45 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  tail call void @_ZN11xalanc_1_1017XalanNumberFormat13applyGroupingERKNS_14XalanDOMStringERS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017XalanNumberFormat6formatEmRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, i64 noundef %1, ptr noundef nonnull returned align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !45 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  tail call void @_ZN11xalanc_1_1017XalanNumberFormat13applyGroupingERKNS_14XalanDOMStringERS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateItE8allocateEmRN11xercesc_2_713MemoryManagerE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %4 = shl i64 %0, 1
  %5 = load ptr, ptr %1, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %4)
  store ptr %1, ptr %3, align 8, !tbaa !63
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %3, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !65
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %3, i64 0, i32 2
  store i64 %0, ptr %10, align 8, !tbaa !66
  %11 = icmp eq i64 %0, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = shl nuw i64 %0, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %8, i8 0, i64 %13, i1 false), !tbaa !67
  %14 = shl nuw i64 %0, 1
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i64 [ %0, %2 ], [ %14, %12 ]
  store i64 %16, ptr %10, align 8, !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret ptr %8
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = select i1 %7, i1 %10, i1 false
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !tbaa !46
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %5)
          to label %16 unwind label %17

16:                                               ; preds = %1, %12
  ret void

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #17
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017XalanNumberFormat14isGroupingUsedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #5 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !49, !range !59, !noundef !60
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1017XalanNumberFormat15setGroupingUsedEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %0, i1 noundef zeroext %1) unnamed_addr #6 align 2 !prof !45 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1017XalanNumberFormat15setGroupingSizeEm(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #6 align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 4
  store i64 %1, ptr %3, align 8, !tbaa !58
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanNumberFormat20setGroupingSeparatorERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 3
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberFormat", ptr %0, i64 0, i32 3, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !61
  br label %10

10:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !77
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !78

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !79

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !45 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !81

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !82
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !83

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !62
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !62
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !82
  %16 = load i64, ptr %6, align 8, !tbaa !77
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = load ptr, ptr %3, align 8, !tbaa !62
  store ptr %19, ptr %0, align 8, !tbaa !62
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !82
  store i64 %21, ptr %14, align 8, !tbaa !82
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !77
  store i64 %23, ptr %6, align 8, !tbaa !77
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  store ptr %25, ptr %17, align 8, !tbaa !69
  store ptr %13, ptr %3, align 8, !tbaa !62
  store i64 %15, ptr %20, align 8, !tbaa !82
  store i64 %16, ptr %22, align 8, !tbaa !77
  store ptr %18, ptr %24, align 8, !tbaa !69
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !84

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !85

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #17
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !82
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !86

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !87

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !69
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !82
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !82
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !69
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !88

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !69
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !89
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !62
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !82
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !91

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !62
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !82
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !77
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !92
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !69
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = load i64, ptr %9, align 8, !tbaa !82
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !93

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !62
  %28 = load i64, ptr %6, align 8, !tbaa !82
  %29 = load i64, ptr %7, align 8, !tbaa !77
  %30 = load ptr, ptr %8, align 8, !tbaa !69
  %31 = load ptr, ptr %5, align 8, !tbaa !62
  store ptr %31, ptr %0, align 8, !tbaa !62
  %32 = load i64, ptr %14, align 8, !tbaa !82
  store i64 %32, ptr %6, align 8, !tbaa !82
  %33 = load i64, ptr %15, align 8, !tbaa !77
  store i64 %33, ptr %7, align 8, !tbaa !77
  %34 = load ptr, ptr %21, align 8, !tbaa !69
  store ptr %34, ptr %8, align 8, !tbaa !69
  store ptr %27, ptr %5, align 8, !tbaa !62
  store i64 %28, ptr %14, align 8, !tbaa !82
  store i64 %29, ptr %15, align 8, !tbaa !77
  store ptr %30, ptr %21, align 8, !tbaa !69
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !93

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !46
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !77
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !69
  %50 = load ptr, ptr %5, align 8, !tbaa !62
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !94

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !46
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !95
  store ptr %65, ptr %8, align 8, !tbaa !69
  store i64 %3, ptr %7, align 8, !tbaa !77
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !97

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !82
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !77
  br i1 %18, label %21, label %39, !prof !98

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !99

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !100

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !69
  %28 = load i64, ptr %12, align 8, !tbaa !82
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !67
  store i16 %34, ptr %32, align 2, !tbaa !67
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !101, !llvm.loop !102

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !103

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %42 = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %42, ptr %5, align 8, !tbaa !62
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !82
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !77
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !46
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !104
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !69
  %51 = load i64, ptr %43, align 8, !tbaa !82
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !69
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !105

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !69
  %56 = load i64, ptr %43, align 8, !tbaa !82
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !105

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !69
  %60 = load i64, ptr %43, align 8, !tbaa !82
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !69
  %63 = load i64, ptr %12, align 8, !tbaa !82
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !105

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !62
  %67 = load i64, ptr %12, align 8, !tbaa !82
  %68 = load i64, ptr %19, align 8, !tbaa !77
  %69 = load ptr, ptr %15, align 8, !tbaa !69
  %70 = load ptr, ptr %5, align 8, !tbaa !62
  store ptr %70, ptr %0, align 8, !tbaa !62
  %71 = load i64, ptr %43, align 8, !tbaa !82
  store i64 %71, ptr %12, align 8, !tbaa !82
  %72 = load i64, ptr %44, align 8, !tbaa !77
  store i64 %72, ptr %19, align 8, !tbaa !77
  %73 = load ptr, ptr %50, align 8, !tbaa !69
  store ptr %73, ptr %15, align 8, !tbaa !69
  store ptr %66, ptr %5, align 8, !tbaa !62
  store i64 %67, ptr %43, align 8, !tbaa !82
  store i64 %68, ptr %44, align 8, !tbaa !77
  store ptr %69, ptr %50, align 8, !tbaa !69
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !106

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !46
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !107

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !77
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !69
  %89 = load ptr, ptr %5, align 8, !tbaa !62
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !108

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !109

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !109

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !110, !llvm.loop !111

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !112, !llvm.loop !113

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !114
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i16, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %121)
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !115

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 1
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i16, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %131, ptr align 2 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !82
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !77
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !117

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !67
  store i16 %13, ptr %12, align 2, !tbaa !67
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !82
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !62
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !62
  %24 = load i64, ptr %4, align 8, !tbaa !82
  %25 = load i64, ptr %6, align 8, !tbaa !77
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = load ptr, ptr %3, align 8, !tbaa !62
  store ptr %28, ptr %0, align 8, !tbaa !62
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !82
  store i64 %30, ptr %4, align 8, !tbaa !82
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !77
  store i64 %32, ptr %6, align 8, !tbaa !77
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  store ptr %34, ptr %26, align 8, !tbaa !69
  store ptr %23, ptr %3, align 8, !tbaa !62
  store i64 %24, ptr %29, align 8, !tbaa !82
  store i64 %25, ptr %31, align 8, !tbaa !77
  store ptr %27, ptr %33, align 8, !tbaa !69
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !46
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !77
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !69
  %52 = load ptr, ptr %3, align 8, !tbaa !62
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !62
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !91

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !62
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !82
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !77
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !46
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !119
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !69
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = load i64, ptr %5, align 8, !tbaa !82
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !93

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !62
  %24 = load i64, ptr %10, align 8, !tbaa !82
  %25 = load i64, ptr %11, align 8, !tbaa !77
  %26 = load ptr, ptr %17, align 8, !tbaa !69
  store ptr %4, ptr %3, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !77
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !69
  %33 = load ptr, ptr %3, align 8, !tbaa !62
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #17
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !94

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !46
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !120
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !62
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !77
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !69
  store ptr %53, ptr %0, align 8, !tbaa !62
  store i64 %52, ptr %5, align 8, !tbaa !82
  store i64 %51, ptr %55, align 8, !tbaa !77
  store ptr %50, ptr %57, align 8, !tbaa !69
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !121

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !46
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !122

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !51, i64 8}
!50 = !{!"_ZTSN11xalanc_1_1017XalanNumberFormatE", !51, i64 8, !53, i64 16, !56, i64 56}
!51 = !{!"bool", !52, i64 0}
!52 = !{!"omnipotent char", !48, i64 0}
!53 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !54, i64 0, !57, i64 32}
!54 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !55, i64 0, !56, i64 8, !56, i64 16, !55, i64 24}
!55 = !{!"any pointer", !52, i64 0}
!56 = !{!"long", !52, i64 0}
!57 = !{!"int", !52, i64 0}
!58 = !{!50, !56, i64 56}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!53, !57, i64 32}
!62 = !{!54, !55, i64 0}
!63 = !{!64, !55, i64 0}
!64 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayItE22MemMgrAutoPtrArrayDataE", !55, i64 0, !55, i64 8, !56, i64 16}
!65 = !{!64, !55, i64 8}
!66 = !{!64, !56, i64 16}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !52, i64 0}
!69 = !{!54, !55, i64 24}
!70 = distinct !{!70, !71, !72}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = distinct !{!73, !71, !72}
!74 = !{!75, !56, i64 16}
!75 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayItEE", !64, i64 0}
!76 = !{!"function_entry_count", i64 42470003}
!77 = !{!54, !56, i64 16}
!78 = !{!"branch_weights", i32 52000, i32 42418003}
!79 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!80 = !{!"function_entry_count", i64 41614}
!81 = !{!"branch_weights", i32 0, i32 41614}
!82 = !{!54, !56, i64 8}
!83 = !{!"branch_weights", i32 12, i32 41602}
!84 = !{!"branch_weights", i32 5, i32 7}
!85 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!86 = !{!"branch_weights", i32 354, i32 41248}
!87 = !{!"branch_weights", i32 40889, i32 359}
!88 = !{!"branch_weights", i32 40581, i32 1021}
!89 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!90 = !{!"function_entry_count", i64 22}
!91 = !{!"branch_weights", i32 64551590, i32 18}
!92 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!93 = !{!"branch_weights", i32 18, i32 0}
!94 = !{!"branch_weights", i32 4, i32 64551586}
!95 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!96 = !{!"function_entry_count", i64 155828046}
!97 = !{!"branch_weights", i32 0, i32 155828046}
!98 = !{!"branch_weights", i32 133170777, i32 22657269}
!99 = !{!"branch_weights", i32 20, i32 133170757}
!100 = !{!"branch_weights", i32 1, i32 19024395}
!101 = !{!"branch_weights", i32 19024395, i32 -26420601}
!102 = distinct !{!102, !71, !72}
!103 = !{!"branch_weights", i32 20748786, i32 1908483}
!104 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!105 = !{!"branch_weights", i32 20748786, i32 0}
!106 = !{!"branch_weights", i32 0, i32 20748786}
!107 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!108 = !{!"branch_weights", i32 0, i32 1908483}
!109 = !{!"branch_weights", i32 1, i32 1908482}
!110 = !{!"branch_weights", i32 1908482, i32 49797853}
!111 = distinct !{!111, !71, !72}
!112 = !{!"branch_weights", i32 1908482, i32 1}
!113 = distinct !{!113, !71, !72}
!114 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!115 = distinct !{!115, !71, !72}
!116 = !{!"function_entry_count", i64 124150652}
!117 = !{!"branch_weights", i32 124150652, i32 0}
!118 = !{!"function_entry_count", i64 64551586}
!119 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!120 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!121 = !{!"branch_weights", i32 42418193, i32 22133393}
!122 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
