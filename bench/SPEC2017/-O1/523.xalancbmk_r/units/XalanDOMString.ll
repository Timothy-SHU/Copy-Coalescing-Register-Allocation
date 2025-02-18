; ModuleID = 'XalanDOMString.cpp'
source_filename = "XalanDOMString.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"struct.xalanc_1_10::ConstructValueWithNoMemoryManager" = type { i8 }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::ConstructValueWithNoMemoryManager.1" = type { i16 }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray.2" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<char>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<char>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EmRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtRKt = comdat any

$_ZN11xalanc_1_1010reset_funcIPKcEEvRNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerET_ = comdat any

$_ZN11xalanc_1_1010reset_funcIPKtEEvRNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerET_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString16TranscodingErrorC2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMString16TranscodingErrorD0Ev = comdat any

$_ZN11xalanc_1_1017doXercesTranscodeItcEEvPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEbc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1024XalanMemMngArrayAllocateItE8allocateEmRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev = comdat any

$_ZN11xalanc_1_1017doXercesTranscodeItcEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb = comdat any

$_ZN11xalanc_1_1017doXercesTranscodeIctEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb = comdat any

$_ZN11xalanc_1_1024XalanMemMngArrayAllocateIcE8allocateEmRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayIcED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZTSN11xalanc_1_1014XalanDOMString16TranscodingErrorE = comdat any

$_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE = comdat any

$_ZTVN11xalanc_1_1014XalanDOMString16TranscodingErrorE = comdat any

@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = dso_local constant i16 0, align 2
@_ZN11xalanc_1_1014XalanDOMString4nposE = dso_local local_unnamed_addr constant i32 -1, align 4
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014XalanDOMString16TranscodingErrorE = linkonce_odr dso_local constant [50 x i8] c"N11xalanc_1_1014XalanDOMString16TranscodingErrorE\00", comdat, align 1
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014XalanDOMString16TranscodingErrorE, ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE }, comdat, align 8
@_ZTVN11xalanc_1_1014XalanDOMString16TranscodingErrorE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE, ptr @_ZN11xalanc_1_1017XalanDOMExceptionD2Ev, ptr @_ZN11xalanc_1_1014XalanDOMString16TranscodingErrorD0Ev, ptr @_ZNK11xalanc_1_1017XalanDOMException16getExceptionCodeEv] }, comdat, align 8

@_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014XalanDOMStringC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1014XalanDOMStringC2ERKS0_RN11xercesc_2_713MemoryManagerEjj
@_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN11xalanc_1_1014XalanDOMStringC2EPKtRN11xercesc_2_713MemoryManagerEj
@_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN11xalanc_1_1014XalanDOMStringC2EPKcRN11xercesc_2_713MemoryManagerEj
@_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, i16, ptr), ptr @_ZN11xalanc_1_1014XalanDOMStringC2EjtRN11xercesc_2_713MemoryManagerE

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !67 {
  store ptr %1, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMStringC2ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  store ptr %2, ptr %0, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  %8 = load i32, ptr %7, align 8, !tbaa !75
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10, !prof !78

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !79
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15, !prof !80
  %17 = zext i32 %3 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %18, i32 noundef %4)
          to label %22 unwind label %20, !prof !81

20:                                               ; preds = %10
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #23
  resume { ptr, i32 } %21

22:                                               ; preds = %10, %5
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !83
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !84

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = load ptr, ptr %0, align 8, !tbaa !68
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !88

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMStringC2EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  store ptr %2, ptr %0, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  %6 = load i16, ptr %1, align 2, !tbaa !90
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8, !prof !92

8:                                                ; preds = %4
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1, i32 noundef %3)
          to label %12 unwind label %10, !prof !93

10:                                               ; preds = %8
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #23
  resume { ptr, i32 } %11

12:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull returned align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %4 = alloca i16, align 2
  %5 = icmp eq i32 %2, -1
  br i1 %5, label %6, label %17, !prof !95

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %10, %6 ], [ %1, %3 ]
  %8 = load i16, ptr %7, align 2, !tbaa !90
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds i16, ptr %7, i64 1
  br i1 %9, label %11, label %6, !prof !96, !llvm.loop !97

11:                                               ; preds = %6
  %12 = ptrtoint ptr %7 to i64
  %13 = ptrtoint ptr %1 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %3, %11
  %18 = phi i32 [ %16, %11 ], [ %2, %3 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %67, label %20, !prof !100

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !79
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %57, !prof !101

24:                                               ; preds = %20
  %25 = add i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !83
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %49, !prof !102

30:                                               ; preds = %24
  %31 = load ptr, ptr %0, align 8, !tbaa !68
  %32 = shl nuw nsw i64 %26, 1
  %33 = load ptr, ptr %31, align 8, !tbaa !86
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef %32), !prof !103
  %37 = load ptr, ptr %0, align 8, !tbaa !68
  %38 = load i64, ptr %27, align 8, !tbaa !83
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !85
  store ptr %31, ptr %0, align 8, !tbaa !68
  store i64 0, ptr %21, align 8, !tbaa !79
  store i64 %26, ptr %27, align 8, !tbaa !83
  store ptr %36, ptr %39, align 8, !tbaa !85
  %41 = icmp eq i64 %38, 0
  br i1 %41, label %49, label %42, !prof !104

42:                                               ; preds = %30
  %43 = load ptr, ptr %37, align 8, !tbaa !86
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %40)
          to label %49 unwind label %46, !prof !105

46:                                               ; preds = %42
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  tail call void @__clang_call_terminate(ptr %48) #24
  unreachable

49:                                               ; preds = %42, %30, %24
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !85
  %52 = load i64, ptr %21, align 8, !tbaa !79
  %53 = getelementptr inbounds i16, ptr %51, i64 %52
  %54 = zext i32 %18 to i64
  %55 = getelementptr inbounds i16, ptr %1, i64 %54
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %53, ptr noundef %1, ptr noundef nonnull %55)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #23
  store i16 0, ptr %4, align 2, !tbaa !90
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #23
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %18, ptr %56, align 8, !tbaa !75
  br label %67

57:                                               ; preds = %20
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds i16, ptr %59, i64 %22
  %61 = getelementptr inbounds i16, ptr %60, i64 -1
  %62 = zext i32 %18 to i64
  %63 = getelementptr inbounds i16, ptr %1, i64 %62
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %61, ptr noundef %1, ptr noundef nonnull %63)
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !75
  %66 = add i32 %65, %2
  store i32 %66, ptr %64, align 8, !tbaa !75
  br label %67

67:                                               ; preds = %49, %57, %17
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMStringC2EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  store ptr %2, ptr %0, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  %6 = load i8, ptr %1, align 1, !tbaa !107
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8, !prof !108

8:                                                ; preds = %4
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1, i32 noundef %3)
          to label %12 unwind label %10, !prof !109

10:                                               ; preds = %8
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #23
  resume { ptr, i32 } %11

12:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull returned align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %4 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %5 = icmp eq i32 %2, -1
  br i1 %5, label %6, label %9, !prof !109

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi i32 [ %8, %6 ], [ %2, %3 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %59, label %12, !prof !108

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !75
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !109

16:                                               ; preds = %12
  tail call fastcc void @_ZN11xalanc_1_10L11doTranscodeEPKcjRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %1, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true)
  br label %54

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %18 = load ptr, ptr %0, align 8, !tbaa !68
  store ptr %18, ptr %4, align 8, !tbaa !68
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN11xalanc_1_10L11doTranscodeEPKcjRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %1, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %22 unwind label %40

22:                                               ; preds = %17
  %23 = load ptr, ptr %21, align 8, !tbaa !85
  %24 = load i64, ptr %19, align 8, !tbaa !79
  %25 = trunc i64 %24 to i32
  %26 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %23, i32 noundef %25)
          to label %27 unwind label %40

27:                                               ; preds = %22
  %28 = load i64, ptr %20, align 8, !tbaa !83
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %21, align 8, !tbaa !85
  %32 = load ptr, ptr %4, align 8, !tbaa !68
  %33 = load ptr, ptr %32, align 8, !tbaa !86
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %39 unwind label %36

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #24
  unreachable

39:                                               ; preds = %27, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %54

40:                                               ; preds = %22, %17
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = load i64, ptr %20, align 8, !tbaa !83
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %21, align 8, !tbaa !85
  %46 = load ptr, ptr %4, align 8, !tbaa !68
  %47 = load ptr, ptr %46, align 8, !tbaa !86
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %53 unwind label %50

50:                                               ; preds = %44
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  call void @__clang_call_terminate(ptr %52) #24
  unreachable

53:                                               ; preds = %40, %44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  resume { ptr, i32 } %41

54:                                               ; preds = %39, %16
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !79
  %57 = trunc i64 %56 to i32
  %58 = add i32 %57, -1
  store i32 %58, ptr %13, align 8, !tbaa !75
  br label %59

59:                                               ; preds = %54, %9
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XalanDOMString5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %3 = load ptr, ptr %1, align 8, !tbaa !86
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 40)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC2ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1)
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret ptr %6

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = icmp eq ptr %6, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 8, !tbaa !86
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %6)
          to label %18 unwind label %15

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #24
  unreachable

18:                                               ; preds = %8, %11
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMStringC2EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %5 = alloca i16, align 2
  %6 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store i16 %2, ptr %5, align 2, !tbaa !90
  store ptr %3, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %11 = icmp eq i32 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  br i1 %11, label %42, label %12, !prof !112

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #23
  %13 = add i32 %1, 1
  %14 = zext i32 %13 to i64
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EmRKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %14, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %15 unwind label %40, !prof !113

15:                                               ; preds = %12
  %16 = load ptr, ptr %6, align 8, !tbaa !68
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !79
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !83
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = load ptr, ptr %0, align 8, !tbaa !68
  store ptr %23, ptr %6, align 8, !tbaa !68
  %24 = load i64, ptr %7, align 8, !tbaa !79
  store i64 %24, ptr %17, align 8, !tbaa !79
  %25 = load i64, ptr %8, align 8, !tbaa !83
  store i64 %25, ptr %19, align 8, !tbaa !83
  %26 = load ptr, ptr %9, align 8, !tbaa !85
  store ptr %26, ptr %21, align 8, !tbaa !85
  store ptr %16, ptr %0, align 8, !tbaa !68
  store i64 %18, ptr %7, align 8, !tbaa !79
  store i64 %20, ptr %8, align 8, !tbaa !83
  store ptr %22, ptr %9, align 8, !tbaa !85
  %27 = icmp eq i64 %25, 0
  br i1 %27, label %35, label %28, !prof !113

28:                                               ; preds = %15
  %29 = load ptr, ptr %23, align 8, !tbaa !86
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %26)
          to label %35 unwind label %32

32:                                               ; preds = %28
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #24
  unreachable

35:                                               ; preds = %15, %28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  %36 = load ptr, ptr %9, align 8, !tbaa !85
  %37 = load i64, ptr %7, align 8, !tbaa !79
  %38 = getelementptr i16, ptr %36, i64 %37
  %39 = getelementptr i16, ptr %38, i64 -1
  store i16 0, ptr %39, align 2, !tbaa !90
  store i32 %1, ptr %10, align 8, !tbaa !75
  br label %42

40:                                               ; preds = %12
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #23
  resume { ptr, i32 } %41

42:                                               ; preds = %35, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EmRKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %3, ptr %0, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  store ptr %3, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2)
          to label %10 unwind label %30, !prof !113

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  %14 = load i64, ptr %6, align 8, !tbaa !79
  %15 = load i64, ptr %12, align 8, !tbaa !83
  %16 = load ptr, ptr %11, align 8, !tbaa !85
  %17 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %17, ptr %0, align 8, !tbaa !68
  %18 = load i64, ptr %7, align 8, !tbaa !79
  store i64 %18, ptr %6, align 8, !tbaa !79
  %19 = load i64, ptr %8, align 8, !tbaa !83
  store i64 %19, ptr %12, align 8, !tbaa !83
  %20 = load ptr, ptr %9, align 8, !tbaa !85
  store ptr %20, ptr %11, align 8, !tbaa !85
  store ptr %13, ptr %5, align 8, !tbaa !68
  store i64 %14, ptr %7, align 8, !tbaa !79
  store i64 %15, ptr %8, align 8, !tbaa !83
  store ptr %16, ptr %9, align 8, !tbaa !85
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %29, label %22, !prof !113

22:                                               ; preds = %10
  %23 = load ptr, ptr %13, align 8, !tbaa !86
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %16)
          to label %29 unwind label %26

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #24
  unreachable

29:                                               ; preds = %10, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  ret void

30:                                               ; preds = %4
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load i64, ptr %8, align 8, !tbaa !83
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 8, !tbaa !85
  %36 = load ptr, ptr %5, align 8, !tbaa !68
  %37 = load ptr, ptr %36, align 8, !tbaa !86
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMString6resizeEjt(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #4 align 2 !prof !110 {
  %4 = alloca i16, align 2
  store i16 %2, ptr %4, align 2, !tbaa !90
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !75
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = add i32 %1, 1
  %10 = zext i32 %9 to i64
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %4)
  store i32 %1, ptr %5, align 8, !tbaa !75
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !79
  %15 = getelementptr i16, ptr %12, i64 %14
  %16 = getelementptr i16, ptr %15, i64 -1
  store i16 0, ptr %16, align 2, !tbaa !90
  br label %17

17:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #1 comdat align 2 !prof !114 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !79
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7, !prof !115

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %35, !prof !116

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !83
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14, !prof !116

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = getelementptr inbounds i16, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !79
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %35, label %20, !prof !117

20:                                               ; preds = %14
  %21 = getelementptr inbounds i16, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %26, %22 ], [ %21, %20 ]
  %24 = phi i64 [ %27, %22 ], [ %18, %20 ]
  %25 = load i16, ptr %2, align 2, !tbaa !90
  store i16 %25, ptr %23, align 2, !tbaa !90
  %26 = getelementptr inbounds i16, ptr %23, i64 1
  %27 = add i64 %24, 1
  %28 = icmp eq ptr %26, %17
  br i1 %28, label %33, label %22, !prof !118, !llvm.loop !119

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !79
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi i64 [ %32, %29 ], [ %27, %22 ]
  store i64 %34, ptr %4, align 8, !tbaa !79
  br label %35

35:                                               ; preds = %33, %14, %7
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr nocapture noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !120 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp ne i32 %1, 0
  %7 = icmp ugt i32 %5, %2
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %16, label %9, !prof !121

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !79
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %46, label %13, !prof !122

13:                                               ; preds = %9
  %14 = load i64, ptr %10, align 8, !tbaa !79
  %15 = sub i64 %14, %11
  store i64 %15, ptr %10, align 8, !tbaa !79
  br label %46

16:                                               ; preds = %3
  %17 = icmp eq i32 %2, -1
  %18 = sub i32 %5, %1
  %19 = select i1 %17, i32 %18, i32 %2, !prof !123
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds i16, ptr %21, i64 %22
  %24 = zext i32 %19 to i64
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  %26 = icmp eq i32 %19, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !79
  %30 = getelementptr inbounds i16, ptr %21, i64 %29
  %31 = icmp eq ptr %30, %25
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = ptrtoint ptr %25 to i64
  %34 = ptrtoint ptr %30 to i64
  %35 = sub i64 %34, %33
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %23, ptr nonnull align 2 %25, i64 %35, i1 false)
  br label %36

36:                                               ; preds = %27, %32
  %37 = load i64, ptr %28, align 8, !tbaa !79
  %38 = sub i64 %37, %24
  store i64 %38, ptr %28, align 8, !tbaa !79
  br label %39

39:                                               ; preds = %36, %16
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !79
  %42 = trunc i64 %41 to i32
  %43 = icmp ult i32 %42, 2
  %44 = add i32 %42, -1
  %45 = select i1 %43, i32 0, i32 %44
  br label %46

46:                                               ; preds = %39, %9, %13
  %47 = phi i32 [ 0, %13 ], [ 0, %9 ], [ %45, %39 ]
  store i32 %47, ptr %4, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull returned align 8 dereferenceable(36) %0, ptr noundef nonnull readonly align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !124 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %22, label %6, !prof !125

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !79
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11, !prof !122

11:                                               ; preds = %6
  store i64 0, ptr %8, align 8, !tbaa !79
  br label %12

12:                                               ; preds = %6, %11
  store i32 0, ptr %7, align 8, !tbaa !75
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !79
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17, !prof !125
  %19 = zext i32 %2 to i64
  %20 = getelementptr inbounds i16, ptr %18, i64 %19
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %20, i32 noundef %3)
  br label %36

22:                                               ; preds = %4
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !75
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  tail call void @_ZN11xalanc_1_1014XalanDOMString6resizeEjt(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %3, i16 noundef zeroext 0)
  br label %36

29:                                               ; preds = %22
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds i16, ptr %31, i64 %32
  %34 = zext i32 %3 to i64
  %35 = shl nuw nsw i64 %34, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %33, i64 %35, i1 false)
  tail call void @_ZN11xalanc_1_1014XalanDOMString6resizeEjt(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %3, i16 noundef zeroext 0)
  br label %36

36:                                               ; preds = %29, %28, %24, %12
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPtS1_(ptr noundef nonnull returned align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !110 {
  %4 = alloca i16, align 2
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 1
  %9 = add nsw i64 %8, 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !83
  %12 = icmp ult i64 %11, %9
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %9)
  br label %14

14:                                               ; preds = %3, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !79
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i64 0, ptr %15, align 8, !tbaa !79
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %21, ptr noundef %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #23
  store i16 0, ptr %4, align 2, !tbaa !90
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #23
  %22 = load i64, ptr %15, align 8, !tbaa !79
  %23 = trunc i64 %22 to i32
  %24 = add i32 %23, -1
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !75
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) local_unnamed_addr #8 align 2 !prof !126 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !90
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !127, !llvm.loop !97

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !129

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !79
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !83
  br i1 %18, label %21, label %39, !prof !130

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !131

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !132

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !85
  %28 = load i64, ptr %12, align 8, !tbaa !79
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !90
  store i16 %34, ptr %32, align 2, !tbaa !90
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !133, !llvm.loop !134

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !135

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %42 = load ptr, ptr %0, align 8, !tbaa !68
  store ptr %42, ptr %5, align 8, !tbaa !68
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !79
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !83
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !86
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !136
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !85
  %51 = load i64, ptr %43, align 8, !tbaa !79
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !85
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !137

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !85
  %56 = load i64, ptr %43, align 8, !tbaa !79
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !137

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !85
  %60 = load i64, ptr %43, align 8, !tbaa !79
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !85
  %63 = load i64, ptr %12, align 8, !tbaa !79
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !137

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !68
  %67 = load i64, ptr %12, align 8, !tbaa !79
  %68 = load i64, ptr %19, align 8, !tbaa !83
  %69 = load ptr, ptr %15, align 8, !tbaa !85
  %70 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %70, ptr %0, align 8, !tbaa !68
  %71 = load i64, ptr %43, align 8, !tbaa !79
  store i64 %71, ptr %12, align 8, !tbaa !79
  %72 = load i64, ptr %44, align 8, !tbaa !83
  store i64 %72, ptr %19, align 8, !tbaa !83
  %73 = load ptr, ptr %50, align 8, !tbaa !85
  store ptr %73, ptr %15, align 8, !tbaa !85
  store ptr %66, ptr %5, align 8, !tbaa !68
  store i64 %67, ptr %43, align 8, !tbaa !79
  store i64 %68, ptr %44, align 8, !tbaa !83
  store ptr %69, ptr %50, align 8, !tbaa !85
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !138

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !86
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !139

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #24
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !83
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !85
  %89 = load ptr, ptr %5, align 8, !tbaa !68
  %90 = load ptr, ptr %89, align 8, !tbaa !86
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #24
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !140

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !141

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !141

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !142, !llvm.loop !143

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !144, !llvm.loop !145

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !146
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
  br i1 %123, label %124, label %120, !llvm.loop !147

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
  store i64 %36, ptr %12, align 8, !tbaa !79
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr nocapture noundef readonly %0) local_unnamed_addr #9 align 2 !prof !110 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress uwtable
define internal fastcc void @_ZN11xalanc_1_10L11doTranscodeEPKcjRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #10 personality ptr @__gxx_personality_v0 !prof !106 !PGOFuncName !148 {
  %5 = icmp eq i32 %1, -1
  br i1 %5, label %6, label %13, !prof !108

6:                                                ; preds = %4
  %7 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L28doTranscodeFromLocalCodePageEPKcjbRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  br i1 %7, label %20, label %8

8:                                                ; preds = %6
  %9 = tail call ptr @__cxa_allocate_exception(i64 16) #23
  invoke void @_ZN11xalanc_1_1014XalanDOMString16TranscodingErrorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD2Ev) #26
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %21

13:                                               ; preds = %4
  %14 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L28doTranscodeFromLocalCodePageEPKcjbRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  br i1 %14, label %20, label %15, !prof !109

15:                                               ; preds = %13
  %16 = tail call ptr @__cxa_allocate_exception(i64 16) #23
  invoke void @_ZN11xalanc_1_1014XalanDOMString16TranscodingErrorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %16)
          to label %17 unwind label %18

17:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD2Ev) #26
  unreachable

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %13, %6
  ret void

21:                                               ; preds = %18, %11
  %22 = phi ptr [ %16, %18 ], [ %9, %11 ]
  %23 = phi { ptr, i32 } [ %19, %18 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %22) #23
  resume { ptr, i32 } %23
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #4 align 2 !prof !110 {
  %4 = alloca i16, align 2
  store i16 %2, ptr %4, align 2, !tbaa !90
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !79
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds i16, ptr %9, i64 %6
  br i1 %7, label %11, label %19

11:                                               ; preds = %3
  %12 = add i32 %1, 1
  %13 = zext i32 %12 to i64
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10, i64 noundef %13, ptr noundef nonnull align 2 dereferenceable(2) %4)
  %14 = load ptr, ptr %8, align 8, !tbaa !85
  %15 = load i64, ptr %5, align 8, !tbaa !79
  %16 = getelementptr i16, ptr %14, i64 %15
  %17 = getelementptr i16, ptr %16, i64 -1
  store i16 0, ptr %17, align 2, !tbaa !90
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %1, ptr %18, align 8, !tbaa !75
  br label %25

19:                                               ; preds = %3
  %20 = getelementptr inbounds i16, ptr %10, i64 -1
  %21 = zext i32 %1 to i64
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %20, i64 noundef %21, ptr noundef nonnull align 2 dereferenceable(2) %4)
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !75
  %24 = add i32 %23, %1
  store i32 %24, ptr %22, align 8, !tbaa !75
  br label %25

25:                                               ; preds = %19, %11
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = getelementptr inbounds i16, ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !83
  br i1 %12, label %15, label %31, !prof !113

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !113

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #27
  br label %18

18:                                               ; preds = %15, %17
  %19 = load i64, ptr %6, align 8, !tbaa !79
  %20 = icmp eq i64 %2, 0
  br i1 %20, label %141, label %21, !prof !149

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8, !tbaa !85
  %23 = getelementptr inbounds i16, ptr %22, i64 %19
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %21 ]
  %26 = phi i64 [ %29, %24 ], [ 0, %21 ]
  %27 = load i16, ptr %3, align 2, !tbaa !90
  store i16 %27, ptr %25, align 2, !tbaa !90
  %28 = getelementptr inbounds i16, ptr %25, i64 1
  %29 = add nuw i64 %26, 1
  %30 = icmp eq i64 %29, %2
  br i1 %30, label %139, label %24, !prof !150, !llvm.loop !151

31:                                               ; preds = %4
  %32 = icmp ugt i64 %8, %14
  br i1 %32, label %33, label %89

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  store ptr %34, ptr %5, align 8, !tbaa !68
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %35, align 8, !tbaa !79
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %8, ptr %36, align 8, !tbaa !83
  %37 = shl i64 %8, 1
  %38 = load ptr, ptr %34, align 8, !tbaa !86
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %37)
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !85
  %43 = load i64, ptr %35, align 8, !tbaa !79
  %44 = getelementptr inbounds i16, ptr %41, i64 %43
  %45 = load ptr, ptr %9, align 8, !tbaa !85
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %44, ptr noundef %45, ptr noundef %1)
          to label %46 unwind label %75

46:                                               ; preds = %33
  %47 = load ptr, ptr %42, align 8, !tbaa !85
  %48 = load i64, ptr %35, align 8, !tbaa !79
  %49 = getelementptr inbounds i16, ptr %47, i64 %48
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %49, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3)
          to label %50 unwind label %75

50:                                               ; preds = %46
  %51 = load ptr, ptr %42, align 8, !tbaa !85
  %52 = load i64, ptr %35, align 8, !tbaa !79
  %53 = getelementptr inbounds i16, ptr %51, i64 %52
  %54 = load ptr, ptr %9, align 8, !tbaa !85
  %55 = load i64, ptr %6, align 8, !tbaa !79
  %56 = getelementptr inbounds i16, ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %53, ptr noundef %1, ptr noundef %56)
          to label %57 unwind label %75

57:                                               ; preds = %50
  %58 = load ptr, ptr %0, align 8, !tbaa !68
  %59 = load i64, ptr %6, align 8, !tbaa !79
  %60 = load i64, ptr %13, align 8, !tbaa !83
  %61 = load ptr, ptr %9, align 8, !tbaa !85
  %62 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %62, ptr %0, align 8, !tbaa !68
  %63 = load i64, ptr %35, align 8, !tbaa !79
  store i64 %63, ptr %6, align 8, !tbaa !79
  %64 = load i64, ptr %36, align 8, !tbaa !83
  store i64 %64, ptr %13, align 8, !tbaa !83
  %65 = load ptr, ptr %42, align 8, !tbaa !85
  store ptr %65, ptr %9, align 8, !tbaa !85
  store ptr %58, ptr %5, align 8, !tbaa !68
  store i64 %59, ptr %35, align 8, !tbaa !79
  store i64 %60, ptr %36, align 8, !tbaa !83
  store ptr %61, ptr %42, align 8, !tbaa !85
  %66 = icmp eq i64 %60, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %57
  %68 = load ptr, ptr %58, align 8, !tbaa !86
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %61)
          to label %74 unwind label %71

71:                                               ; preds = %67
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #24
  unreachable

74:                                               ; preds = %57, %67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %141

75:                                               ; preds = %50, %46, %33
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = load i64, ptr %36, align 8, !tbaa !83
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %42, align 8, !tbaa !85
  %81 = load ptr, ptr %5, align 8, !tbaa !68
  %82 = load ptr, ptr %81, align 8, !tbaa !86
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8
  invoke void %84(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %80)
          to label %88 unwind label %85

85:                                               ; preds = %79
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #24
  unreachable

88:                                               ; preds = %75, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %76

89:                                               ; preds = %31
  %90 = ptrtoint ptr %11 to i64
  %91 = ptrtoint ptr %1 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 1
  %94 = icmp ugt i64 %93, %2
  br i1 %94, label %115, label %95

95:                                               ; preds = %89
  %96 = sub i64 %2, %93
  %97 = icmp eq i64 %93, %2
  br i1 %97, label %98, label %100

98:                                               ; preds = %100, %95
  %99 = icmp eq ptr %11, %1
  br i1 %99, label %108, label %104

100:                                              ; preds = %95, %100
  %101 = phi i64 [ %102, %100 ], [ 0, %95 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %3)
  %102 = add nuw i64 %101, 1
  %103 = icmp eq i64 %102, %96
  br i1 %103, label %98, label %100, !llvm.loop !152

104:                                              ; preds = %98, %104
  %105 = phi ptr [ %106, %104 ], [ %1, %98 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %105)
  %106 = getelementptr inbounds i16, ptr %105, i64 1
  %107 = icmp eq ptr %106, %11
  br i1 %107, label %108, label %104, !llvm.loop !153

108:                                              ; preds = %104, %98
  %109 = load i16, ptr %3, align 2, !tbaa !90
  %110 = icmp eq ptr %11, %1
  br i1 %110, label %141, label %111

111:                                              ; preds = %108, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %108 ]
  store i16 %109, ptr %112, align 2, !tbaa !90
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %11
  br i1 %114, label %141, label %111, !llvm.loop !154

115:                                              ; preds = %89
  %116 = sub i64 0, %2
  %117 = getelementptr inbounds i16, ptr %11, i64 %116
  %118 = icmp eq i64 %2, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %117, %115 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %120)
  %121 = getelementptr inbounds i16, ptr %120, i64 1
  %122 = icmp eq ptr %121, %11
  br i1 %122, label %123, label %119, !llvm.loop !155

123:                                              ; preds = %119, %115
  %124 = icmp eq ptr %117, %1
  br i1 %124, label %131, label %125

125:                                              ; preds = %123
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %126, %91
  %128 = ashr exact i64 %127, 1
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds i16, ptr %11, i64 %129
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %130, ptr align 2 %1, i64 %127, i1 false)
  br label %131

131:                                              ; preds = %123, %125
  %132 = getelementptr inbounds i16, ptr %1, i64 %2
  %133 = load i16, ptr %3, align 2, !tbaa !90
  %134 = icmp eq i64 %2, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %131, %135
  %136 = phi ptr [ %137, %135 ], [ %1, %131 ]
  store i16 %133, ptr %136, align 2, !tbaa !90
  %137 = getelementptr inbounds i16, ptr %136, i64 1
  %138 = icmp eq ptr %137, %132
  br i1 %138, label %141, label %135, !llvm.loop !154

139:                                              ; preds = %24
  %140 = add i64 %19, %2
  store i64 %140, ptr %6, align 8, !tbaa !79
  br label %141

141:                                              ; preds = %111, %135, %108, %131, %18, %139, %74
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 !prof !110 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !79
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %2, i32 noundef %3)
  br label %20

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = zext i32 %1 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = zext i32 %3 to i64
  %16 = getelementptr inbounds i16, ptr %2, i64 %15
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %14, ptr noundef %2, ptr noundef %16)
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !75
  %19 = add i32 %18, %3
  store i32 %19, ptr %17, align 8, !tbaa !75
  br label %20

20:                                               ; preds = %10, %8
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjjt(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #4 align 2 !prof !110 {
  %5 = alloca i16, align 2
  store i16 %3, ptr %5, align 2, !tbaa !90
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %2, i16 noundef zeroext %3)
  br label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14
  %16 = zext i32 %2 to i64
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %15, i64 noundef %16, ptr noundef nonnull align 2 dereferenceable(2) %5)
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !75
  %19 = add i32 %18, %2
  store i32 %19, ptr %17, align 8, !tbaa !75
  br label %20

20:                                               ; preds = %11, %9
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XalanDOMString6insertEPtt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #4 align 2 !prof !110 {
  %4 = alloca i16, align 2
  store i16 %2, ptr %4, align 2, !tbaa !90
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !79
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 1, i16 noundef zeroext %2)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %17

12:                                               ; preds = %3
  %13 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %4)
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !75
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !75
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi ptr [ %11, %8 ], [ %13, %12 ]
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #4 comdat align 2 !prof !110 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef 1, ptr noundef nonnull align 2 dereferenceable(2) %2)
  br label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef 1, ptr noundef nonnull align 2 dereferenceable(2) %2)
  %16 = load ptr, ptr %11, align 8, !tbaa !85
  %17 = getelementptr inbounds i8, ptr %16, i64 %15
  br label %18

18:                                               ; preds = %10, %9
  %19 = phi ptr [ %1, %9 ], [ %17, %10 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMString6insertEPtjt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #4 align 2 !prof !110 {
  %5 = alloca i16, align 2
  store i16 %3, ptr %5, align 2, !tbaa !90
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %2, i16 noundef zeroext %3)
  br label %16

11:                                               ; preds = %4
  %12 = zext i32 %2 to i64
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %12, ptr noundef nonnull align 2 dereferenceable(2) %5)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !75
  %15 = add i32 %14, %2
  store i32 %15, ptr %13, align 8, !tbaa !75
  br label %16

16:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMString6insertEPtS1_S1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !110 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !79
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPtS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %2, ptr noundef %3)
  br label %15

10:                                               ; preds = %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %11 = load i64, ptr %5, align 8, !tbaa !79
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, -1
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !75
  br label %15

15:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString7compareEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #11 align 2 !prof !110 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !75
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %15, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %14, %9 ], [ %1, %2 ]
  %12 = load i16, ptr %11, align 2, !tbaa !90
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds i16, ptr %11, i64 1
  %15 = add i32 %10, 1
  br i1 %13, label %16, label %9, !llvm.loop !97

16:                                               ; preds = %9
  %17 = icmp eq i64 %4, 0
  %18 = select i1 %17, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6
  %19 = ptrtoint ptr %11 to i64
  %20 = ptrtoint ptr %1 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = or i32 %8, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %16
  %27 = tail call i32 @llvm.umin.i32(i32 %8, i32 %23)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  br label %31

31:                                               ; preds = %29, %39
  %32 = phi i32 [ %40, %39 ], [ 0, %29 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i16, ptr %18, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !90
  %36 = getelementptr inbounds i16, ptr %1, i64 %33
  %37 = load i16, ptr %36, align 2, !tbaa !90
  %38 = icmp eq i16 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = add nuw i32 %32, 1
  %41 = icmp eq i32 %40, %30
  br i1 %41, label %42, label %31, !llvm.loop !156

42:                                               ; preds = %31, %39
  %43 = phi i32 [ %30, %39 ], [ %32, %31 ]
  %44 = zext i16 %35 to i32
  %45 = zext i16 %37 to i32
  br label %46

46:                                               ; preds = %42, %26
  %47 = phi i32 [ 0, %26 ], [ %43, %42 ]
  %48 = phi i32 [ 0, %26 ], [ %44, %42 ]
  %49 = phi i32 [ 0, %26 ], [ %45, %42 ]
  %50 = icmp eq i32 %47, %8
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = icmp ne i32 %47, %23
  %53 = sext i1 %52 to i32
  br label %58

54:                                               ; preds = %46
  %55 = icmp eq i32 %47, %23
  %56 = sub nsw i32 %48, %49
  %57 = select i1 %55, i32 1, i32 %56
  br label %58

58:                                               ; preds = %54, %16, %51
  %59 = phi i32 [ 0, %16 ], [ %53, %51 ], [ %57, %54 ]
  ret i32 %59
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString7compareEjjPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #11 align 2 !prof !110 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = or i32 %4, %2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %5
  %17 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %16, %27
  %20 = phi i32 [ %28, %27 ], [ 0, %16 ]
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i16, ptr %13, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !90
  %24 = getelementptr inbounds i16, ptr %3, i64 %21
  %25 = load i16, ptr %24, align 2, !tbaa !90
  %26 = icmp eq i16 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = add nuw i32 %20, 1
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %30, label %19, !llvm.loop !156

30:                                               ; preds = %19, %27
  %31 = phi i32 [ %17, %27 ], [ %20, %19 ]
  %32 = zext i16 %23 to i32
  %33 = zext i16 %25 to i32
  br label %34

34:                                               ; preds = %30, %16
  %35 = phi i32 [ 0, %16 ], [ %31, %30 ]
  %36 = phi i32 [ 0, %16 ], [ %32, %30 ]
  %37 = phi i32 [ 0, %16 ], [ %33, %30 ]
  %38 = icmp eq i32 %35, %2
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = icmp ne i32 %35, %4
  %41 = sext i1 %40 to i32
  br label %46

42:                                               ; preds = %34
  %43 = icmp eq i32 %35, %4
  %44 = sub nsw i32 %36, %37
  %45 = select i1 %43, i32 1, i32 %44
  br label %46

46:                                               ; preds = %42, %5, %39
  %47 = phi i32 [ 0, %5 ], [ %41, %39 ], [ %45, %42 ]
  ret i32 %47
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !157 {
  tail call void @_ZN11xalanc_1_1010reset_funcIPKcEEvRNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerET_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010reset_funcIPKcEEvRNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerET_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !157 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #23
  call void @_ZN11xalanc_1_1014XalanDOMStringC2EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
  %5 = load ptr, ptr %0, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = load ptr, ptr %4, align 8, !tbaa !68
  store ptr %12, ptr %0, align 8, !tbaa !68
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !79
  store i64 %14, ptr %6, align 8, !tbaa !79
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !83
  store i64 %16, ptr %8, align 8, !tbaa !83
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  store ptr %18, ptr %10, align 8, !tbaa !85
  store ptr %5, ptr %4, align 8, !tbaa !68
  store i64 %7, ptr %13, align 8, !tbaa !79
  store i64 %9, ptr %15, align 8, !tbaa !83
  store ptr %11, ptr %17, align 8, !tbaa !85
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %21 = load i32, ptr %19, align 8, !tbaa !158
  %22 = load i32, ptr %20, align 8, !tbaa !158
  store i32 %22, ptr %19, align 8, !tbaa !158
  store i32 %21, ptr %20, align 8, !tbaa !158
  %23 = icmp eq i64 %9, 0
  br i1 %23, label %31, label %24, !prof !159

24:                                               ; preds = %3
  %25 = load ptr, ptr %5, align 8, !tbaa !86
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %31 unwind label %28

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #24
  unreachable

31:                                               ; preds = %3, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !160 {
  tail call void @_ZN11xalanc_1_1010reset_funcIPKtEEvRNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerET_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010reset_funcIPKtEEvRNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerET_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !160 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #23
  call void @_ZN11xalanc_1_1014XalanDOMStringC2EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
  %5 = load ptr, ptr %0, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = load ptr, ptr %4, align 8, !tbaa !68
  store ptr %12, ptr %0, align 8, !tbaa !68
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !79
  store i64 %14, ptr %6, align 8, !tbaa !79
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !83
  store i64 %16, ptr %8, align 8, !tbaa !83
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  store ptr %18, ptr %10, align 8, !tbaa !85
  store ptr %5, ptr %4, align 8, !tbaa !68
  store i64 %7, ptr %13, align 8, !tbaa !79
  store i64 %9, ptr %15, align 8, !tbaa !83
  store ptr %11, ptr %17, align 8, !tbaa !85
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %21 = load i32, ptr %19, align 8, !tbaa !158
  %22 = load i32, ptr %20, align 8, !tbaa !158
  store i32 %22, ptr %19, align 8, !tbaa !158
  store i32 %21, ptr %20, align 8, !tbaa !158
  %23 = icmp eq i64 %9, 0
  br i1 %23, label %31, label %24, !prof !161

24:                                               ; preds = %3
  %25 = load ptr, ptr %5, align 8, !tbaa !86
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %31 unwind label %28

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #24
  unreachable

31:                                               ; preds = %3, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !79
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !75
  %11 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L26doTranscodeToLocalCodePageEPKtjbRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %8, i32 noundef %10, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true)
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 16) #23
  invoke void @_ZN11xalanc_1_1014XalanDOMString16TranscodingErrorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %13)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD2Ev) #26
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #23
  resume { ptr, i32 } %16

17:                                               ; preds = %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtjRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #4 !prof !110 {
  %5 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L26doTranscodeToLocalCodePageEPKtjbRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  ret i1 %5
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString16TranscodingErrorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #4 comdat align 2 !prof !110 {
  tail call void @_ZN11xalanc_1_1017XalanDOMExceptionC2ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 202)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1014XalanDOMString16TranscodingErrorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #12

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #8 align 2 !prof !162 {
  %5 = icmp eq i32 %1, %3
  br i1 %5, label %6, label %24, !prof !163

6:                                                ; preds = %4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %24, label %8, !prof !164

8:                                                ; preds = %6
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds i16, ptr %0, i64 %9
  %11 = load i16, ptr %0, align 2, !tbaa !90
  %12 = load i16, ptr %2, align 2, !tbaa !90
  %13 = icmp eq i16 %11, %12
  br i1 %13, label %19, label %24, !prof !165

14:                                               ; preds = %19
  %15 = getelementptr inbounds i16, ptr %21, i64 1
  %16 = load i16, ptr %22, align 2, !tbaa !90
  %17 = load i16, ptr %15, align 2, !tbaa !90
  %18 = icmp eq i16 %16, %17
  br i1 %18, label %19, label %24, !prof !166, !llvm.loop !167

19:                                               ; preds = %8, %14
  %20 = phi ptr [ %22, %14 ], [ %0, %8 ]
  %21 = phi ptr [ %15, %14 ], [ %2, %8 ]
  %22 = getelementptr inbounds i16, ptr %20, i64 1
  %23 = icmp eq ptr %22, %10
  br i1 %23, label %24, label %14, !prof !168

24:                                               ; preds = %14, %19, %8, %6, %4
  %25 = phi i1 [ false, %4 ], [ true, %6 ], [ %13, %8 ], [ true, %19 ], [ %18, %14 ]
  ret i1 %25
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) local_unnamed_addr #13 align 2 !prof !169 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !75
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %38, !prof !170

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %38, label %10, !prof !171

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !79
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15, !prof !172
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !79
  %19 = icmp eq i64 %18, 0
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = select i1 %19, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %21, !prof !172
  %23 = zext i32 %4 to i64
  %24 = getelementptr inbounds i16, ptr %22, i64 %23
  %25 = load i16, ptr %22, align 2, !tbaa !90
  %26 = load i16, ptr %16, align 2, !tbaa !90
  %27 = icmp eq i16 %25, %26
  br i1 %27, label %33, label %38, !prof !173

28:                                               ; preds = %33
  %29 = getelementptr inbounds i16, ptr %35, i64 1
  %30 = load i16, ptr %36, align 2, !tbaa !90
  %31 = load i16, ptr %29, align 2, !tbaa !90
  %32 = icmp eq i16 %30, %31
  br i1 %32, label %33, label %38, !prof !174, !llvm.loop !167

33:                                               ; preds = %10, %28
  %34 = phi ptr [ %36, %28 ], [ %22, %10 ]
  %35 = phi ptr [ %29, %28 ], [ %16, %10 ]
  %36 = getelementptr inbounds i16, ptr %34, i64 1
  %37 = icmp eq ptr %36, %24
  br i1 %37, label %38, label %28, !prof !175

38:                                               ; preds = %28, %33, %10, %8, %2
  %39 = phi i1 [ false, %2 ], [ true, %8 ], [ %27, %10 ], [ true, %33 ], [ %32, %28 ]
  ret i1 %39
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1014XalanDOMString4hashEPKtj(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 align 2 !prof !176 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds i16, ptr %0, i64 %3
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %18, label %6, !prof !177

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %16, %6 ], [ %0, %2 ]
  %8 = phi i32 [ %15, %6 ], [ 0, %2 ]
  %9 = mul i32 %8, 37
  %10 = lshr i32 %8, 24
  %11 = load i16, ptr %7, align 2, !tbaa !90
  %12 = zext i16 %11 to i32
  %13 = add i32 %10, %8
  %14 = add i32 %13, %9
  %15 = add i32 %14, %12
  %16 = getelementptr inbounds i16, ptr %7, i64 1
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %18, label %6, !prof !178, !llvm.loop !179

18:                                               ; preds = %6, %2
  %19 = phi i32 [ 0, %2 ], [ %15, %6 ]
  ret i32 %19
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtjRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEbc(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i8 noundef signext %4) local_unnamed_addr #4 !prof !110 {
  tail call fastcc void @_ZN11xalanc_1_10L26doTranscodeToLocalCodePageEPKtjbRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEbc(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i8 noundef signext %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZN11xalanc_1_10L26doTranscodeToLocalCodePageEPKtjbRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEbc(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4, i8 noundef signext %5) unnamed_addr #4 !prof !110 {
  %7 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 1
  %8 = icmp eq ptr %0, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i16, ptr %0, align 2, !tbaa !90
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9, %6
  br i1 %4, label %13, label %20

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #23
  store i8 0, ptr %7, align 1, !tbaa !180
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #23
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !184
  %18 = getelementptr i8, ptr %15, i64 %17
  %19 = getelementptr i8, ptr %18, i64 -1
  store i8 0, ptr %19, align 1, !tbaa !107
  br label %26

20:                                               ; preds = %12
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !184
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %25

24:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1017doXercesTranscodeItcEEvPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEbc(ptr noundef nonnull %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4, i8 noundef signext %5)
  br label %26

25:                                               ; preds = %20
  store i64 0, ptr %21, align 8, !tbaa !184
  br label %26

26:                                               ; preds = %25, %20, %13, %24
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEbc(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i8 noundef signext %3) local_unnamed_addr #4 !prof !110 {
  tail call fastcc void @_ZN11xalanc_1_10L26doTranscodeToLocalCodePageEPKtjbRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEbc(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i8 noundef signext %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN11xalanc_1_10L26doTranscodeToLocalCodePageEPKtjbRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4) unnamed_addr #4 !prof !110 {
  %6 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i16, ptr %0, align 2, !tbaa !90
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8, %5
  br i1 %4, label %12, label %19

12:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #23
  store i8 0, ptr %6, align 1, !tbaa !180
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #23
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !184
  %17 = getelementptr i8, ptr %14, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -1
  store i8 0, ptr %18, align 1, !tbaa !107
  br label %26

19:                                               ; preds = %11
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !184
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %25

23:                                               ; preds = %8
  %24 = tail call noundef zeroext i1 @_ZN11xalanc_1_1017doXercesTranscodeItcEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb(ptr noundef nonnull %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4)
  br label %26

25:                                               ; preds = %19
  store i64 0, ptr %20, align 8, !tbaa !184
  br label %26

26:                                               ; preds = %25, %19, %12, %23
  %27 = phi i1 [ %24, %23 ], [ true, %12 ], [ true, %19 ], [ true, %25 ]
  ret i1 %27
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #4 !prof !110 {
  %4 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L26doTranscodeToLocalCodePageEPKtjbRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2)
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1026TranscodeFromLocalCodePageEPKcjRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #4 !prof !110 {
  %5 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L28doTranscodeFromLocalCodePageEPKcjbRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  ret i1 %5
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN11xalanc_1_10L28doTranscodeFromLocalCodePageEPKcjbRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4) unnamed_addr #4 !prof !106 !PGOFuncName !185 {
  %6 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager.1", align 2
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8, !prof !108

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !107
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %23, !prof !108

11:                                               ; preds = %8, %5
  br i1 %4, label %12, label %19

12:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #23
  store i16 0, ptr %6, align 2, !tbaa !186
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 1, ptr noundef nonnull align 2 dereferenceable(2) %6)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #23
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !79
  %17 = getelementptr i16, ptr %14, i64 %16
  %18 = getelementptr i16, ptr %17, i64 -1
  store i16 0, ptr %18, align 2, !tbaa !90
  br label %26

19:                                               ; preds = %11
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !79
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %25

23:                                               ; preds = %8
  %24 = tail call noundef zeroext i1 @_ZN11xalanc_1_1017doXercesTranscodeIctEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb(ptr noundef nonnull %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4)
  br label %26

25:                                               ; preds = %19
  store i64 0, ptr %20, align 8, !tbaa !79
  br label %26

26:                                               ; preds = %25, %19, %12, %23
  %27 = phi i1 [ %24, %23 ], [ true, %12 ], [ true, %19 ], [ true, %25 ]
  ret i1 %27
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1026TranscodeFromLocalCodePageEPKcRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #4 !prof !110 {
  %4 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L28doTranscodeFromLocalCodePageEPKcjbRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2)
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026TranscodeFromLocalCodePageERKNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEERNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #4 !prof !110 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !184
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  br label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = getelementptr i8, ptr %9, i64 %4
  %11 = getelementptr i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !107
  %13 = icmp eq i8 %12, 0
  %14 = trunc i64 %4 to i32
  br i1 %13, label %15, label %18

15:                                               ; preds = %7
  %16 = add i32 %14, -1
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %9, i32 noundef %16)
  br label %20

18:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %9, i32 noundef %14)
  br label %20

20:                                               ; preds = %15, %18, %6
  ret ptr %1
}

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC2ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #16

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString16TranscodingErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #17 comdat align 2 !prof !110 {
  tail call void @_ZN11xalanc_1_1017XalanDOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #28
  ret void
}

declare noundef i32 @_ZNK11xalanc_1_1017XalanDOMException16getExceptionCodeEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #16

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doXercesTranscodeItcEEvPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEbc(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4, i8 noundef signext %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !110 {
  %7 = alloca i8, align 1
  %8 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", align 8
  %9 = alloca i8, align 1
  %10 = alloca [2 x i16], align 2
  %11 = alloca [10 x i8], align 1
  store i8 %5, ptr %7, align 1, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %8, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %8, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %2, label %14, label %27

14:                                               ; preds = %6, %14
  %15 = phi ptr [ %18, %14 ], [ %0, %6 ]
  %16 = load i16, ptr %15, align 2, !tbaa !90
  %17 = icmp eq i16 %16, 0
  %18 = getelementptr inbounds i16, ptr %15, i64 1
  br i1 %17, label %19, label %14, !llvm.loop !97

19:                                               ; preds = %14
  %20 = ptrtoint ptr %15 to i64
  %21 = ptrtoint ptr %0 to i64
  %22 = sub i64 %20, %21
  %23 = lshr exact i64 %22, 1
  %24 = trunc i64 %23 to i32
  br label %59

25:                                               ; preds = %41, %27
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %122

27:                                               ; preds = %6
  %28 = load ptr, ptr %3, align 8, !tbaa !188
  %29 = add i32 %1, 1
  %30 = zext i32 %29 to i64
  %31 = invoke noundef ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateItE8allocateEmRN11xercesc_2_713MemoryManagerE(i64 noundef %30, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %32 unwind label %25

32:                                               ; preds = %27
  %33 = load ptr, ptr %8, align 8, !tbaa !189
  %34 = icmp ne ptr %33, null
  %35 = load ptr, ptr %12, align 8
  %36 = icmp ne ptr %35, null
  %37 = select i1 %34, i1 %36, i1 false
  %38 = load i64, ptr %13, align 8
  %39 = icmp ne i64 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load ptr, ptr %33, align 8, !tbaa !86
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %35)
          to label %45 unwind label %25

45:                                               ; preds = %41, %32
  store ptr %28, ptr %8, align 8, !tbaa !189
  store ptr %31, ptr %12, align 8, !tbaa !191
  store i64 %30, ptr %13, align 8, !tbaa !192
  %46 = icmp eq i32 %1, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = zext i32 %1 to i64
  br label %52

49:                                               ; preds = %52, %45
  %50 = zext i32 %1 to i64
  %51 = getelementptr inbounds i16, ptr %31, i64 %50
  store i16 0, ptr %51, align 2, !tbaa !90
  br label %59

52:                                               ; preds = %47, %52
  %53 = phi i64 [ 0, %47 ], [ %57, %52 ]
  %54 = getelementptr inbounds i16, ptr %0, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !90
  %56 = getelementptr inbounds i16, ptr %31, i64 %53
  store i16 %55, ptr %56, align 2, !tbaa !90
  %57 = add nuw nsw i64 %53, 1
  %58 = icmp eq i64 %57, %48
  br i1 %58, label %49, label %52, !llvm.loop !193

59:                                               ; preds = %19, %49
  %60 = phi i32 [ %1, %49 ], [ %24, %19 ]
  %61 = phi ptr [ %31, %49 ], [ %0, %19 ]
  %62 = shl i32 %60, 1
  %63 = add i32 %62, 2
  %64 = zext i32 %63 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #23
  store i8 0, ptr %9, align 1, !tbaa !107
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %64, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %65 unwind label %83

65:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #23
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !182
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !184
  %70 = trunc i64 %69 to i32
  %71 = add i32 %70, -1
  %72 = load ptr, ptr %3, align 8, !tbaa !188
  %73 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKtPcjPNS_13MemoryManagerE(ptr noundef %61, ptr noundef %67, i32 noundef %71, ptr noundef nonnull %72)
          to label %74 unwind label %85

74:                                               ; preds = %65
  br i1 %73, label %107, label %75

75:                                               ; preds = %74
  %76 = load i64, ptr %68, align 8, !tbaa !184
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i64 0, ptr %68, align 8, !tbaa !184
  br label %79

79:                                               ; preds = %78, %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #23
  %80 = getelementptr inbounds [2 x i16], ptr %10, i64 0, i64 1
  store i16 0, ptr %80, align 2, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %11) #23
  %81 = zext i32 %60 to i64
  br label %87

82:                                               ; preds = %104
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  br label %107

83:                                               ; preds = %59
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #23
  br label %122

85:                                               ; preds = %65
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %122

87:                                               ; preds = %79, %104
  %88 = phi i64 [ 0, %79 ], [ %105, %104 ]
  %89 = getelementptr inbounds i16, ptr %61, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !90
  store i16 %90, ptr %10, align 2, !tbaa !90
  store i8 0, ptr %11, align 1, !tbaa !107
  %91 = load ptr, ptr %3, align 8, !tbaa !188
  %92 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKtPcjPNS_13MemoryManagerE(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 9, ptr noundef nonnull %91)
          to label %93 unwind label %95

93:                                               ; preds = %87
  br i1 %92, label %97, label %94

94:                                               ; preds = %93
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %104 unwind label %95

95:                                               ; preds = %94, %97, %87
  %96 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  br label %122

97:                                               ; preds = %93
  %98 = load ptr, ptr %66, align 8, !tbaa !182
  %99 = load i64, ptr %68, align 8, !tbaa !184
  %100 = getelementptr inbounds i8, ptr %98, i64 %99
  %101 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #25
  %102 = and i64 %101, 4294967295
  %103 = getelementptr inbounds i8, ptr %11, i64 %102
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %100, ptr noundef nonnull %11, ptr noundef nonnull %103)
          to label %104 unwind label %95

104:                                              ; preds = %97, %94
  %105 = add nuw nsw i64 %88, 1
  %106 = icmp eq i64 %88, %81
  br i1 %106, label %82, label %87, !llvm.loop !194

107:                                              ; preds = %82, %74
  br i1 %4, label %121, label %108

108:                                              ; preds = %107
  %109 = load ptr, ptr %66, align 8, !tbaa !182
  %110 = getelementptr i8, ptr %109, i64 -1
  %111 = load i64, ptr %68, align 8, !tbaa !184
  %112 = getelementptr i8, ptr %110, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !107
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108, %115
  %116 = phi i64 [ %117, %115 ], [ %111, %108 ]
  %117 = add i64 %116, -1
  store i64 %117, ptr %68, align 8, !tbaa !184
  %118 = getelementptr i8, ptr %110, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !107
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %115, label %121

121:                                              ; preds = %115, %108, %107
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  ret void

122:                                              ; preds = %85, %95, %83, %25
  %123 = phi { ptr, i32 } [ %84, %83 ], [ %26, %25 ], [ %96, %95 ], [ %86, %85 ]
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  resume { ptr, i32 } %123
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat align 2 !prof !195 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !184
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7, !prof !196

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %33, !prof !197

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !198
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14, !prof !199

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds i8, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !184
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %33, label %20, !prof !199

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %20 ]
  %24 = load i8, ptr %2, align 1, !tbaa !107
  store i8 %24, ptr %23, align 1, !tbaa !107
  %25 = getelementptr inbounds i8, ptr %23, i64 1
  %26 = load i64, ptr %4, align 8, !tbaa !184
  %27 = add i64 %26, 1
  store i64 %27, ptr %4, align 8, !tbaa !184
  %28 = icmp eq ptr %25, %17
  br i1 %28, label %33, label %22, !prof !200, !llvm.loop !201

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !184
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  store i64 %32, ptr %4, align 8, !tbaa !184
  br label %33

33:                                               ; preds = %22, %14, %29, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !188
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !188
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !184
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !198
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = load ptr, ptr %3, align 8, !tbaa !188
  store ptr %12, ptr %0, align 8, !tbaa !188
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !184
  store i64 %14, ptr %6, align 8, !tbaa !184
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !198
  store i64 %16, ptr %8, align 8, !tbaa !198
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !182
  store ptr %18, ptr %10, align 8, !tbaa !182
  store ptr %5, ptr %3, align 8, !tbaa !188
  store i64 %7, ptr %13, align 8, !tbaa !184
  store i64 %9, ptr %15, align 8, !tbaa !198
  store ptr %11, ptr %17, align 8, !tbaa !182
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !203

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !86
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #24
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !188
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !184
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !203

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !188
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !184
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !198
  %16 = load ptr, ptr %2, align 8, !tbaa !86
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !182
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !182
  %23 = load i64, ptr %9, align 8, !tbaa !184
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !188
  %27 = load i64, ptr %6, align 8, !tbaa !184
  %28 = load i64, ptr %7, align 8, !tbaa !198
  %29 = load ptr, ptr %8, align 8, !tbaa !182
  %30 = load ptr, ptr %5, align 8, !tbaa !188
  store ptr %30, ptr %0, align 8, !tbaa !188
  %31 = load i64, ptr %14, align 8, !tbaa !184
  store i64 %31, ptr %6, align 8, !tbaa !184
  %32 = load i64, ptr %15, align 8, !tbaa !198
  store i64 %32, ptr %7, align 8, !tbaa !198
  %33 = load ptr, ptr %20, align 8, !tbaa !182
  store ptr %33, ptr %8, align 8, !tbaa !182
  store ptr %26, ptr %5, align 8, !tbaa !188
  store i64 %27, ptr %14, align 8, !tbaa !184
  store i64 %28, ptr %15, align 8, !tbaa !198
  store ptr %29, ptr %20, align 8, !tbaa !182
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !86
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #24
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !198
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !182
  %49 = load ptr, ptr %5, align 8, !tbaa !188
  %50 = load ptr, ptr %49, align 8, !tbaa !86
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #24
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !204

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !86
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !205
  store ptr %63, ptr %8, align 8, !tbaa !182
  store i64 %3, ptr %7, align 8, !tbaa !198
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %130, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !184
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !198
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
  %26 = load ptr, ptr %14, align 8, !tbaa !182
  %27 = load i64, ptr %11, align 8, !tbaa !184
  %28 = getelementptr i8, ptr %26, i64 %27
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %36, %29 ], [ %2, %25 ]
  %31 = phi ptr [ %33, %29 ], [ %28, %25 ]
  %32 = load i8, ptr %30, align 1, !tbaa !107
  store i8 %32, ptr %31, align 1, !tbaa !107
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  %34 = load i64, ptr %11, align 8, !tbaa !184
  %35 = add i64 %34, 1
  store i64 %35, ptr %11, align 8, !tbaa !184
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %130, label %29, !llvm.loop !206

38:                                               ; preds = %10
  %39 = icmp ugt i64 %13, %19
  br i1 %39, label %40, label %95

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %41 = load ptr, ptr %0, align 8, !tbaa !188
  store ptr %41, ptr %5, align 8, !tbaa !188
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !184
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %43, align 8, !tbaa !198
  %44 = load ptr, ptr %41, align 8, !tbaa !86
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %13)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !182
  %49 = load i64, ptr %42, align 8, !tbaa !184
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = load ptr, ptr %14, align 8, !tbaa !182
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %50, ptr noundef %51, ptr noundef %1)
          to label %52 unwind label %81

52:                                               ; preds = %40
  %53 = load ptr, ptr %48, align 8, !tbaa !182
  %54 = load i64, ptr %42, align 8, !tbaa !184
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %2, ptr noundef %3)
          to label %56 unwind label %81

56:                                               ; preds = %52
  %57 = load ptr, ptr %48, align 8, !tbaa !182
  %58 = load i64, ptr %42, align 8, !tbaa !184
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  %60 = load ptr, ptr %14, align 8, !tbaa !182
  %61 = load i64, ptr %11, align 8, !tbaa !184
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %59, ptr noundef %1, ptr noundef %62)
          to label %63 unwind label %81

63:                                               ; preds = %56
  %64 = load ptr, ptr %0, align 8, !tbaa !188
  %65 = load i64, ptr %11, align 8, !tbaa !184
  %66 = load i64, ptr %18, align 8, !tbaa !198
  %67 = load ptr, ptr %14, align 8, !tbaa !182
  %68 = load ptr, ptr %5, align 8, !tbaa !188
  store ptr %68, ptr %0, align 8, !tbaa !188
  %69 = load i64, ptr %42, align 8, !tbaa !184
  store i64 %69, ptr %11, align 8, !tbaa !184
  %70 = load i64, ptr %43, align 8, !tbaa !198
  store i64 %70, ptr %18, align 8, !tbaa !198
  %71 = load ptr, ptr %48, align 8, !tbaa !182
  store ptr %71, ptr %14, align 8, !tbaa !182
  store ptr %64, ptr %5, align 8, !tbaa !188
  store i64 %65, ptr %42, align 8, !tbaa !184
  store i64 %66, ptr %43, align 8, !tbaa !198
  store ptr %67, ptr %48, align 8, !tbaa !182
  %72 = icmp eq i64 %66, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load ptr, ptr %64, align 8, !tbaa !86
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %67)
          to label %80 unwind label %77

77:                                               ; preds = %73
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #24
  unreachable

80:                                               ; preds = %63, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %130

81:                                               ; preds = %56, %52, %40
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load i64, ptr %43, align 8, !tbaa !198
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %48, align 8, !tbaa !182
  %87 = load ptr, ptr %5, align 8, !tbaa !188
  %88 = load ptr, ptr %87, align 8, !tbaa !86
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #24
  unreachable

94:                                               ; preds = %81, %85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
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
  br i1 %108, label %103, label %105, !llvm.loop !207

109:                                              ; preds = %103, %109
  %110 = phi ptr [ %111, %109 ], [ %1, %103 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %110)
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = icmp eq ptr %111, %16
  br i1 %112, label %113, label %109, !llvm.loop !208

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
  br i1 %121, label %122, label %118, !llvm.loop !209

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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !184
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !198
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !113

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !107
  store i8 %13, ptr %12, align 1, !tbaa !107
  %14 = load i64, ptr %4, align 8, !tbaa !184
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !184
  br label %61

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %22 = load ptr, ptr %0, align 8, !tbaa !188
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %23 unwind label %45

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !188
  %25 = load i64, ptr %4, align 8, !tbaa !184
  %26 = load i64, ptr %6, align 8, !tbaa !198
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !182
  %29 = load ptr, ptr %3, align 8, !tbaa !188
  store ptr %29, ptr %0, align 8, !tbaa !188
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !184
  store i64 %31, ptr %4, align 8, !tbaa !184
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !198
  store i64 %33, ptr %6, align 8, !tbaa !198
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !182
  store ptr %35, ptr %27, align 8, !tbaa !182
  store ptr %24, ptr %3, align 8, !tbaa !188
  store i64 %25, ptr %30, align 8, !tbaa !184
  store i64 %26, ptr %32, align 8, !tbaa !198
  store ptr %28, ptr %34, align 8, !tbaa !182
  %36 = icmp eq i64 %26, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %23
  %38 = load ptr, ptr %24, align 8, !tbaa !86
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %28)
          to label %44 unwind label %41

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #24
  unreachable

44:                                               ; preds = %23, %37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %61

45:                                               ; preds = %16
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !198
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !182
  %53 = load ptr, ptr %3, align 8, !tbaa !188
  %54 = load ptr, ptr %53, align 8, !tbaa !86
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %52)
          to label %60 unwind label %57

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #24
  unreachable

60:                                               ; preds = %45, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %46

61:                                               ; preds = %44, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 comdat !prof !110 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #23
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateItE8allocateEmRN11xercesc_2_713MemoryManagerE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = shl i64 %0, 1
  %5 = load ptr, ptr %1, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %4)
  store ptr %1, ptr %3, align 8, !tbaa !189
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %3, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !191
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %3, i64 0, i32 2
  store i64 %0, ptr %10, align 8, !tbaa !192
  %11 = icmp eq i64 %0, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = shl nuw i64 %0, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %8, i8 0, i64 %13, i1 false), !tbaa !90
  %14 = shl nuw i64 %0, 1
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i64 [ %0, %2 ], [ %14, %12 ]
  store i64 %16, ptr %10, align 8, !tbaa !210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret ptr %8
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKtPcjPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
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
  %13 = load ptr, ptr %2, align 8, !tbaa !86
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
  tail call void @__clang_call_terminate(ptr %19) #24
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doXercesTranscodeItcEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !110 {
  %6 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<unsigned short>::MemMgrAutoPtrArrayData", ptr %6, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %2, label %11, label %24

11:                                               ; preds = %5, %11
  %12 = phi ptr [ %15, %11 ], [ %0, %5 ]
  %13 = load i16, ptr %12, align 2, !tbaa !90
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds i16, ptr %12, i64 1
  br i1 %14, label %16, label %11, !llvm.loop !97

16:                                               ; preds = %11
  %17 = ptrtoint ptr %12 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %56

22:                                               ; preds = %38, %24
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %109

24:                                               ; preds = %5
  %25 = load ptr, ptr %3, align 8, !tbaa !188
  %26 = add i32 %1, 1
  %27 = zext i32 %26 to i64
  %28 = invoke noundef ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateItE8allocateEmRN11xercesc_2_713MemoryManagerE(i64 noundef %27, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %29 unwind label %22

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !tbaa !189
  %31 = icmp ne ptr %30, null
  %32 = load ptr, ptr %9, align 8
  %33 = icmp ne ptr %32, null
  %34 = select i1 %31, i1 %33, i1 false
  %35 = load i64, ptr %10, align 8
  %36 = icmp ne i64 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load ptr, ptr %30, align 8, !tbaa !86
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %32)
          to label %42 unwind label %22

42:                                               ; preds = %38, %29
  store ptr %25, ptr %6, align 8, !tbaa !189
  store ptr %28, ptr %9, align 8, !tbaa !191
  store i64 %27, ptr %10, align 8, !tbaa !192
  %43 = icmp eq i32 %1, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = zext i32 %1 to i64
  br label %49

46:                                               ; preds = %49, %42
  %47 = zext i32 %1 to i64
  %48 = getelementptr inbounds i16, ptr %28, i64 %47
  store i16 0, ptr %48, align 2, !tbaa !90
  br label %56

49:                                               ; preds = %44, %49
  %50 = phi i64 [ 0, %44 ], [ %54, %49 ]
  %51 = getelementptr inbounds i16, ptr %0, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !90
  %53 = getelementptr inbounds i16, ptr %28, i64 %50
  store i16 %52, ptr %53, align 2, !tbaa !90
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %54, %45
  br i1 %55, label %46, label %49, !llvm.loop !212

56:                                               ; preds = %16, %46
  %57 = phi ptr [ %28, %46 ], [ %0, %16 ]
  %58 = phi i32 [ %1, %46 ], [ %21, %16 ]
  %59 = add i32 %58, 1
  %60 = zext i32 %59 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #23
  store i8 0, ptr %7, align 1, !tbaa !107
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %60, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %61 unwind label %75

61:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #23
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  br label %64

64:                                               ; preds = %86, %61
  %65 = phi i32 [ 0, %61 ], [ %87, %86 ]
  %66 = load ptr, ptr %62, align 8, !tbaa !182
  %67 = load i64, ptr %63, align 8, !tbaa !184
  %68 = trunc i64 %67 to i32
  %69 = add i32 %68, -1
  %70 = load ptr, ptr %3, align 8, !tbaa !188
  %71 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKtPcjPNS_13MemoryManagerE(ptr noundef %57, ptr noundef %66, i32 noundef %69, ptr noundef nonnull %70)
          to label %72 unwind label %77

72:                                               ; preds = %64
  br i1 %71, label %86, label %73

73:                                               ; preds = %72
  %74 = icmp ugt i32 %65, 2
  br i1 %74, label %88, label %79

75:                                               ; preds = %56
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #23
  br label %109

77:                                               ; preds = %64
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %109

79:                                               ; preds = %73
  %80 = load i64, ptr %63, align 8, !tbaa !184
  %81 = add i64 %80, 10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #23
  store i8 0, ptr %8, align 1, !tbaa !107
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %81, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %82 unwind label %84

82:                                               ; preds = %79
  %83 = add nuw nsw i32 %65, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #23
  br label %86

84:                                               ; preds = %79
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #23
  br label %109

86:                                               ; preds = %72, %82
  %87 = phi i32 [ %83, %82 ], [ %65, %72 ]
  br i1 %71, label %92, label %64, !llvm.loop !213

88:                                               ; preds = %73
  br i1 %71, label %92, label %89

89:                                               ; preds = %88
  %90 = load i64, ptr %63, align 8, !tbaa !184
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %108, label %107

92:                                               ; preds = %86, %88
  br i1 %4, label %108, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !182
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i64, ptr %63, align 8, !tbaa !184
  %98 = getelementptr i8, ptr %96, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !107
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %93, %101
  %102 = phi i64 [ %103, %101 ], [ %97, %93 ]
  %103 = add i64 %102, -1
  store i64 %103, ptr %63, align 8, !tbaa !184
  %104 = getelementptr i8, ptr %96, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !107
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %101, label %108

107:                                              ; preds = %89
  store i64 0, ptr %63, align 8, !tbaa !184
  br label %108

108:                                              ; preds = %101, %93, %107, %89, %92
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  ret i1 %71

109:                                              ; preds = %77, %84, %75, %22
  %110 = phi { ptr, i32 } [ %76, %75 ], [ %23, %22 ], [ %78, %77 ], [ %85, %84 ]
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  resume { ptr, i32 } %110
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doXercesTranscodeIctEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !106 {
  %6 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtrArray.2", align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<char>::MemMgrAutoPtrArrayData", ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<char>::MemMgrAutoPtrArrayData", ptr %6, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %2, label %11, label %14, !prof !108

11:                                               ; preds = %5
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %13 = trunc i64 %12 to i32
  br label %51

14:                                               ; preds = %5
  %15 = load ptr, ptr %3, align 8, !tbaa !68
  %16 = add i32 %1, 1
  %17 = zext i32 %16 to i64
  %18 = invoke noundef ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateIcE8allocateEmRN11xercesc_2_713MemoryManagerE(i64 noundef %17, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %19 unwind label %41, !prof !109

19:                                               ; preds = %14
  %20 = load ptr, ptr %6, align 8, !tbaa !214
  %21 = icmp ne ptr %20, null
  %22 = load ptr, ptr %9, align 8
  %23 = icmp ne ptr %22, null
  %24 = select i1 %21, i1 %23, i1 false, !prof !108
  %25 = load i64, ptr %10, align 8
  %26 = icmp ne i64 %25, 0
  %27 = select i1 %24, i1 %26, i1 false, !prof !108
  br i1 %27, label %28, label %32, !prof !108

28:                                               ; preds = %19
  %29 = load ptr, ptr %20, align 8, !tbaa !86
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %22)
          to label %32 unwind label %41

32:                                               ; preds = %28, %19
  store ptr %15, ptr %6, align 8, !tbaa !214
  store ptr %18, ptr %9, align 8, !tbaa !216
  store i64 %17, ptr %10, align 8, !tbaa !217
  %33 = icmp eq i32 %1, 0
  br i1 %33, label %36, label %34, !prof !218

34:                                               ; preds = %32
  %35 = zext i32 %1 to i64
  br label %43

36:                                               ; preds = %43, %32
  %37 = zext i32 %1 to i64
  %38 = load ptr, ptr %9, align 8, !tbaa !219
  %39 = getelementptr inbounds i8, ptr %38, i64 %37
  store i8 0, ptr %39, align 1, !tbaa !107
  %40 = load ptr, ptr %9, align 8, !tbaa !219
  br label %51

41:                                               ; preds = %28, %14
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %105

43:                                               ; preds = %34, %43
  %44 = phi i64 [ 0, %34 ], [ %49, %43 ]
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !107
  %47 = load ptr, ptr %9, align 8, !tbaa !219
  %48 = getelementptr inbounds i8, ptr %47, i64 %44
  store i8 %46, ptr %48, align 1, !tbaa !107
  %49 = add nuw nsw i64 %44, 1
  %50 = icmp eq i64 %49, %35
  br i1 %50, label %36, label %43, !prof !221, !llvm.loop !222

51:                                               ; preds = %36, %11
  %52 = phi ptr [ %0, %11 ], [ %40, %36 ]
  %53 = phi i32 [ %13, %11 ], [ %1, %36 ]
  %54 = add i32 %53, 1
  %55 = zext i32 %54 to i64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #23
  store i16 0, ptr %7, align 2, !tbaa !90
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %55, ptr noundef nonnull align 2 dereferenceable(2) %7)
          to label %56 unwind label %70, !prof !109

56:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #23
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  br label %59

59:                                               ; preds = %81, %56
  %60 = phi i32 [ 0, %56 ], [ %82, %81 ]
  %61 = load ptr, ptr %57, align 8, !tbaa !85
  %62 = load i64, ptr %58, align 8, !tbaa !79
  %63 = trunc i64 %62 to i32
  %64 = add i32 %63, -1
  %65 = load ptr, ptr %3, align 8, !tbaa !68
  %66 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef %52, ptr noundef %61, i32 noundef %64, ptr noundef nonnull %65)
          to label %67 unwind label %72, !prof !109

67:                                               ; preds = %59
  br i1 %66, label %81, label %68, !prof !109

68:                                               ; preds = %67
  %69 = icmp ugt i32 %60, 2
  br i1 %69, label %83, label %74

70:                                               ; preds = %51
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #23
  br label %105

72:                                               ; preds = %59
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %105

74:                                               ; preds = %68
  %75 = load i64, ptr %58, align 8, !tbaa !79
  %76 = add i64 %75, 10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #23
  store i16 0, ptr %8, align 2, !tbaa !90
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %76, ptr noundef nonnull align 2 dereferenceable(2) %8)
          to label %77 unwind label %79

77:                                               ; preds = %74
  %78 = add nuw nsw i32 %60, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #23
  br label %81

79:                                               ; preds = %74
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #23
  br label %105

81:                                               ; preds = %67, %77
  %82 = phi i32 [ %78, %77 ], [ %60, %67 ]
  br i1 %66, label %87, label %59, !prof !109, !llvm.loop !223

83:                                               ; preds = %68
  br i1 %66, label %87, label %84

84:                                               ; preds = %83
  %85 = load i64, ptr %58, align 8, !tbaa !79
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %104, label %102

87:                                               ; preds = %81, %83
  br i1 %4, label %104, label %88, !prof !109

88:                                               ; preds = %87
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !85
  %91 = getelementptr i16, ptr %90, i64 -1
  %92 = load i64, ptr %58, align 8, !tbaa !79
  %93 = getelementptr i16, ptr %91, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !90
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %88, %96
  %97 = phi i64 [ %98, %96 ], [ %92, %88 ]
  %98 = add i64 %97, -1
  %99 = getelementptr i16, ptr %91, i64 %98
  %100 = load i16, ptr %99, align 2, !tbaa !90
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %96, label %102

102:                                              ; preds = %96, %84
  %103 = phi i64 [ 0, %84 ], [ %98, %96 ]
  store i64 %103, ptr %58, align 8, !tbaa !79
  br label %104

104:                                              ; preds = %102, %88, %84, %87
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayIcED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  ret i1 %66

105:                                              ; preds = %72, %79, %70, %41
  %106 = phi { ptr, i32 } [ %71, %70 ], [ %42, %41 ], [ %73, %72 ], [ %80, %79 ]
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayIcED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  resume { ptr, i32 } %106
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateIcE8allocateEmRN11xercesc_2_713MemoryManagerE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtrArray.2", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = load ptr, ptr %1, align 8, !tbaa !86
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %0), !prof !224
  store ptr %1, ptr %3, align 8, !tbaa !214
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<char>::MemMgrAutoPtrArrayData", ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !216
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<char>::MemMgrAutoPtrArrayData", ptr %3, i64 0, i32 2
  store i64 %0, ptr %9, align 8, !tbaa !217
  %10 = icmp eq i64 %0, 0
  br i1 %10, label %11, label %13, !prof !218

11:                                               ; preds = %13, %2
  %12 = load ptr, ptr %8, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayIcED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret ptr %12

13:                                               ; preds = %2, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %2 ]
  %15 = getelementptr inbounds i8, ptr %7, i64 %14
  store i8 0, ptr %15, align 1, !tbaa !107
  %16 = load i64, ptr %9, align 8, !tbaa !225
  %17 = add i64 %16, 1
  store i64 %17, ptr %9, align 8, !tbaa !225
  %18 = add nuw i64 %14, 1
  %19 = icmp eq i64 %18, %0
  br i1 %19, label %11, label %13, !prof !226, !llvm.loop !227
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayIcED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 !prof !228 {
  %2 = load ptr, ptr %0, align 8, !tbaa !214
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<char>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false, !prof !229
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<char>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = select i1 %7, i1 %10, i1 false, !prof !229
  br i1 %11, label %12, label %16, !prof !229

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !tbaa !86
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %5)
          to label %16 unwind label %17, !prof !230

16:                                               ; preds = %1, %12
  ret void

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !231 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !79
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !232

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !68
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !79
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !83
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !86
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !233
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !85
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  %20 = load i64, ptr %5, align 8, !tbaa !79
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !234

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !68
  %24 = load i64, ptr %10, align 8, !tbaa !79
  %25 = load i64, ptr %11, align 8, !tbaa !83
  %26 = load ptr, ptr %17, align 8, !tbaa !85
  store ptr %4, ptr %3, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !83
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !85
  %33 = load ptr, ptr %3, align 8, !tbaa !68
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #24
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !235

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !86
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !236
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !68
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !83
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  store ptr %53, ptr %0, align 8, !tbaa !68
  store i64 %52, ptr %5, align 8, !tbaa !79
  store i64 %51, ptr %55, align 8, !tbaa !83
  store ptr %50, ptr %57, align 8, !tbaa !85
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !104

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !86
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !105

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #24
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !79
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !232

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !68
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !79
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !83
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !86
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !233
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !85
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = load i64, ptr %9, align 8, !tbaa !79
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !234

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !68
  %28 = load i64, ptr %6, align 8, !tbaa !79
  %29 = load i64, ptr %7, align 8, !tbaa !83
  %30 = load ptr, ptr %8, align 8, !tbaa !85
  %31 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %31, ptr %0, align 8, !tbaa !68
  %32 = load i64, ptr %14, align 8, !tbaa !79
  store i64 %32, ptr %6, align 8, !tbaa !79
  %33 = load i64, ptr %15, align 8, !tbaa !83
  store i64 %33, ptr %7, align 8, !tbaa !83
  %34 = load ptr, ptr %21, align 8, !tbaa !85
  store ptr %34, ptr %8, align 8, !tbaa !85
  store ptr %27, ptr %5, align 8, !tbaa !68
  store i64 %28, ptr %14, align 8, !tbaa !79
  store i64 %29, ptr %15, align 8, !tbaa !83
  store ptr %30, ptr %21, align 8, !tbaa !85
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !234

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !86
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !83
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !85
  %50 = load ptr, ptr %5, align 8, !tbaa !68
  %51 = load ptr, ptr %50, align 8, !tbaa !86
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #24
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !235

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !86
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !238
  store ptr %65, ptr %8, align 8, !tbaa !85
  store i64 %3, ptr %7, align 8, !tbaa !83
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !239 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !83
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !240

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !90
  store i16 %13, ptr %12, align 2, !tbaa !90
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !79
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %21 = load ptr, ptr %0, align 8, !tbaa !68
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !68
  %24 = load i64, ptr %4, align 8, !tbaa !79
  %25 = load i64, ptr %6, align 8, !tbaa !83
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  %28 = load ptr, ptr %3, align 8, !tbaa !68
  store ptr %28, ptr %0, align 8, !tbaa !68
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !79
  store i64 %30, ptr %4, align 8, !tbaa !79
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !83
  store i64 %32, ptr %6, align 8, !tbaa !83
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !85
  store ptr %34, ptr %26, align 8, !tbaa !85
  store ptr %23, ptr %3, align 8, !tbaa !68
  store i64 %24, ptr %29, align 8, !tbaa !79
  store i64 %25, ptr %31, align 8, !tbaa !83
  store ptr %27, ptr %33, align 8, !tbaa !85
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !86
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !83
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !85
  %52 = load ptr, ptr %3, align 8, !tbaa !68
  %53 = load ptr, ptr %52, align 8, !tbaa !86
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #24
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { noreturn }
attributes #27 = { "function-inline-cost-multiplier"="2" }
attributes #28 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!66}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringC2ERKS0_RN11xercesc_2_713MemoryManagerEjj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 254}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!37 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringC2EPKtRN11xercesc_2_713MemoryManagerEj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 655270}
!38 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, ptr @__clang_call_terminate, i64 21}
!39 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 93193082}
!40 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 70535813}
!41 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringC2EPKcRN11xercesc_2_713MemoryManagerEj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj, i64 145}
!42 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj, ptr @strlen, i64 145}
!43 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj, ptr @_ZN11xalanc_1_10L11doTranscodeEPKcjRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb, i64 145}
!44 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringC2EjtRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EmRKtRN11xercesc_2_713MemoryManagerE, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EmRKtRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 152}
!47 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 243962}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!52 = !{ptr @_ZN11xalanc_1_10L11doTranscodeEPKcjRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb, ptr @_ZN11xalanc_1_10L28doTranscodeFromLocalCodePageEPKcjbRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb, i64 145}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc, ptr @_ZN11xalanc_1_1010reset_funcIPKcEEvRNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerET_, i64 137}
!55 = !{ptr @_ZN11xalanc_1_1010reset_funcIPKcEEvRNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerET_, ptr @_ZN11xalanc_1_1014XalanDOMStringC2EPKcRN11xercesc_2_713MemoryManagerEj, i64 137}
!56 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt, ptr @_ZN11xalanc_1_1010reset_funcIPKtEEvRNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerET_, i64 12}
!57 = !{ptr @_ZN11xalanc_1_1010reset_funcIPKtEEvRNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerET_, ptr @_ZN11xalanc_1_1014XalanDOMStringC2EPKtRN11xercesc_2_713MemoryManagerEj, i64 12}
!58 = !{ptr @_ZN11xalanc_1_10L28doTranscodeFromLocalCodePageEPKcjbRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb, ptr @_ZN11xalanc_1_1017doXercesTranscodeIctEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb, i64 145}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 2}
!61 = !{ptr @_ZN11xalanc_1_1017doXercesTranscodeIctEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb, ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateIcE8allocateEmRN11xercesc_2_713MemoryManagerE, i64 145}
!62 = !{ptr @_ZN11xalanc_1_1017doXercesTranscodeIctEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, i64 145}
!63 = !{ptr @_ZN11xalanc_1_1017doXercesTranscodeIctEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb, ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE, i64 145}
!64 = !{ptr @_ZN11xalanc_1_1017doXercesTranscodeIctEEbPKT_jbRNS_11XalanVectorIT0_NS_31MemoryManagedConstructionTraitsIS5_EEEEb, ptr @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayIcED2Ev, i64 145}
!65 = !{ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateIcE8allocateEmRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayIcED2Ev, i64 145}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = !{!"function_entry_count", i64 42340236}
!68 = !{!69, !70, i64 0}
!69 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !70, i64 0, !73, i64 8, !73, i64 16, !70, i64 24}
!70 = !{!"any pointer", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C++ TBAA"}
!73 = !{!"long", !71, i64 0}
!74 = !{!"function_entry_count", i64 402794}
!75 = !{!76, !77, i64 32}
!76 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !69, i64 0, !77, i64 32}
!77 = !{!"int", !71, i64 0}
!78 = !{!"branch_weights", i32 402540, i32 254}
!79 = !{!69, !73, i64 8}
!80 = !{!"branch_weights", i32 0, i32 254}
!81 = !{!"branch_weights", i32 254, i32 0}
!82 = !{!"function_entry_count", i64 42470003}
!83 = !{!69, !73, i64 16}
!84 = !{!"branch_weights", i32 52000, i32 42418003}
!85 = !{!69, !70, i64 24}
!86 = !{!87, !87, i64 0}
!87 = !{!"vtable pointer", !72, i64 0}
!88 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!89 = !{!"function_entry_count", i64 655270}
!90 = !{!91, !91, i64 0}
!91 = !{!"short", !71, i64 0}
!92 = !{!"branch_weights", i32 0, i32 655270}
!93 = !{!"branch_weights", i32 655270, i32 0}
!94 = !{!"function_entry_count", i64 93193103}
!95 = !{!"branch_weights", i32 298, i32 93192805}
!96 = !{!"branch_weights", i32 298, i32 3045}
!97 = distinct !{!97, !98, !99}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!"branch_weights", i32 0, i32 93193103}
!101 = !{!"branch_weights", i32 70535834, i32 22657269}
!102 = !{!"branch_weights", i32 64551404, i32 5984430}
!103 = !{!"VP", i32 0, i64 64551382, i64 8345045103670217670, i64 64551382}
!104 = !{!"branch_weights", i32 42418193, i32 22133393}
!105 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!106 = !{!"function_entry_count", i64 145}
!107 = !{!71, !71, i64 0}
!108 = !{!"branch_weights", i32 0, i32 145}
!109 = !{!"branch_weights", i32 145, i32 0}
!110 = !{!"function_entry_count", i64 0}
!111 = !{!"function_entry_count", i64 1}
!112 = !{!"branch_weights", i32 0, i32 1}
!113 = !{!"branch_weights", i32 1, i32 0}
!114 = !{!"function_entry_count", i64 152}
!115 = !{!"branch_weights", i32 0, i32 152}
!116 = !{!"branch_weights", i32 152, i32 0}
!117 = !{!"branch_weights", i32 1, i32 151}
!118 = !{!"branch_weights", i32 151, i32 8215}
!119 = distinct !{!119, !98, !99}
!120 = !{!"function_entry_count", i64 72273260}
!121 = !{!"branch_weights", i32 0, i32 -1787401089}
!122 = !{!"branch_weights", i32 46408271, i32 26108951}
!123 = !{!"branch_weights", i32 72517222, i32 0}
!124 = !{!"function_entry_count", i64 243962}
!125 = !{!"branch_weights", i32 0, i32 243962}
!126 = !{!"function_entry_count", i64 2024314}
!127 = !{!"branch_weights", i32 2024314, i32 7036218}
!128 = !{!"function_entry_count", i64 155828046}
!129 = !{!"branch_weights", i32 0, i32 155828046}
!130 = !{!"branch_weights", i32 133170777, i32 22657269}
!131 = !{!"branch_weights", i32 20, i32 133170757}
!132 = !{!"branch_weights", i32 1, i32 19024395}
!133 = !{!"branch_weights", i32 19024395, i32 -26420601}
!134 = distinct !{!134, !98, !99}
!135 = !{!"branch_weights", i32 20748786, i32 1908483}
!136 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!137 = !{!"branch_weights", i32 20748786, i32 0}
!138 = !{!"branch_weights", i32 0, i32 20748786}
!139 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!140 = !{!"branch_weights", i32 0, i32 1908483}
!141 = !{!"branch_weights", i32 1, i32 1908482}
!142 = !{!"branch_weights", i32 1908482, i32 49797853}
!143 = distinct !{!143, !98, !99}
!144 = !{!"branch_weights", i32 1908482, i32 1}
!145 = distinct !{!145, !98, !99}
!146 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!147 = distinct !{!147, !98, !99}
!148 = !{!"XalanDOMString.cpp;_ZN11xalanc_1_10L11doTranscodeEPKcjRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb"}
!149 = !{!"branch_weights", i32 1, i32 127}
!150 = !{!"branch_weights", i32 127, i32 641}
!151 = distinct !{!151, !98, !99}
!152 = distinct !{!152, !98, !99}
!153 = distinct !{!153, !98, !99}
!154 = distinct !{!154, !98, !99}
!155 = distinct !{!155, !98, !99}
!156 = distinct !{!156, !98, !99}
!157 = !{!"function_entry_count", i64 137}
!158 = !{!77, !77, i64 0}
!159 = !{!"branch_weights", i32 137, i32 0}
!160 = !{!"function_entry_count", i64 12}
!161 = !{!"branch_weights", i32 12, i32 0}
!162 = !{!"function_entry_count", i64 403723}
!163 = !{!"branch_weights", i32 318, i32 403405}
!164 = !{!"branch_weights", i32 0, i32 318}
!165 = !{!"branch_weights", i32 161, i32 1}
!166 = !{!"branch_weights", i32 2311, i32 161}
!167 = distinct !{!167, !98, !99}
!168 = !{!"branch_weights", i32 237, i32 999}
!169 = !{!"function_entry_count", i64 555646850}
!170 = !{!"branch_weights", i32 408796614, i32 146850236}
!171 = !{!"branch_weights", i32 201394622, i32 207401992}
!172 = !{!"branch_weights", i32 0, i32 207401992}
!173 = !{!"branch_weights", i32 688663, i32 1}
!174 = !{!"branch_weights", i32 -1855879323, i32 688663}
!175 = !{!"branch_weights", i32 206713328, i32 -2061903988}
!176 = !{!"function_entry_count", i64 3830553}
!177 = !{!"branch_weights", i32 1, i32 3830552}
!178 = !{!"branch_weights", i32 3830552, i32 37308033}
!179 = distinct !{!179, !98, !99}
!180 = !{!181, !71, i64 0}
!181 = !{!"_ZTSN11xalanc_1_1033ConstructValueWithNoMemoryManagerIcEE", !71, i64 0}
!182 = !{!183, !70, i64 24}
!183 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !70, i64 0, !73, i64 8, !73, i64 16, !70, i64 24}
!184 = !{!183, !73, i64 8}
!185 = !{!"XalanDOMString.cpp;_ZN11xalanc_1_10L28doTranscodeFromLocalCodePageEPKcjbRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb"}
!186 = !{!187, !91, i64 0}
!187 = !{!"_ZTSN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEE", !91, i64 0}
!188 = !{!183, !70, i64 0}
!189 = !{!190, !70, i64 0}
!190 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayItE22MemMgrAutoPtrArrayDataE", !70, i64 0, !70, i64 8, !73, i64 16}
!191 = !{!190, !70, i64 8}
!192 = !{!190, !73, i64 16}
!193 = distinct !{!193, !98, !99}
!194 = distinct !{!194, !98, !99}
!195 = !{!"function_entry_count", i64 244781}
!196 = !{!"branch_weights", i32 122391, i32 122390}
!197 = !{!"branch_weights", i32 122389, i32 1}
!198 = !{!183, !73, i64 16}
!199 = !{!"branch_weights", i32 1, i32 122388}
!200 = !{!"branch_weights", i32 122388, i32 62663681}
!201 = distinct !{!201, !98, !99}
!202 = !{!"function_entry_count", i64 2}
!203 = !{!"branch_weights", i32 2, i32 0}
!204 = !{!"branch_weights", i32 0, i32 2}
!205 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!206 = distinct !{!206, !98, !99}
!207 = distinct !{!207, !98, !99}
!208 = distinct !{!208, !98, !99}
!209 = distinct !{!209, !98, !99}
!210 = !{!211, !73, i64 16}
!211 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayItEE", !190, i64 0}
!212 = distinct !{!212, !98, !99}
!213 = distinct !{!213, !98, !99}
!214 = !{!215, !70, i64 0}
!215 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayIcE22MemMgrAutoPtrArrayDataE", !70, i64 0, !70, i64 8, !73, i64 16}
!216 = !{!215, !70, i64 8}
!217 = !{!215, !73, i64 16}
!218 = !{!"branch_weights", i32 1, i32 144}
!219 = !{!220, !70, i64 8}
!220 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayIcEE", !215, i64 0}
!221 = !{!"branch_weights", i32 144, i32 1421}
!222 = distinct !{!222, !98, !99}
!223 = distinct !{!223, !98, !99}
!224 = !{!"VP", i32 0, i64 145, i64 8345045103670217670, i64 145}
!225 = !{!220, !73, i64 16}
!226 = !{!"branch_weights", i32 144, i32 1566}
!227 = distinct !{!227, !98, !99}
!228 = !{!"function_entry_count", i64 290}
!229 = !{!"branch_weights", i32 145, i32 145}
!230 = !{!"VP", i32 0, i64 145, i64 -7405368087501025645, i64 145}
!231 = !{!"function_entry_count", i64 182}
!232 = !{!"branch_weights", i32 64551590, i32 18}
!233 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!234 = !{!"branch_weights", i32 18, i32 0}
!235 = !{!"branch_weights", i32 4, i32 64551586}
!236 = !{!"VP", i32 0, i64 181, i64 8345045103670217670, i64 181}
!237 = !{!"function_entry_count", i64 22}
!238 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!239 = !{!"function_entry_count", i64 124150652}
!240 = !{!"branch_weights", i32 124150652, i32 0}
