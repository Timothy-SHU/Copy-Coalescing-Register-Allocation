; ModuleID = 'XalanDecimalFormatSymbols.cpp'
source_filename = "XalanDecimalFormatSymbols.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDecimalFormatSymbols" = type { %"class.xalanc_1_10::XalanDOMString", i16, i16, i16, [2 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i16, i16, [4 x i8], %"class.xalanc_1_10::XalanDOMString", i16, i16, i16, i16 }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

@_ZN11xalanc_1_10L17theCurrencySymbolE = internal global [2 x i16] [i16 36, i16 0], align 2
@_ZN11xalanc_1_10L18theInfinityDefaultE = internal global [9 x i16] [i16 73, i16 110, i16 102, i16 105, i16 110, i16 105, i16 116, i16 121, i16 0], align 16
@_ZN11xalanc_1_10L13theNaNDefaultE = internal global [4 x i16] [i16 78, i16 97, i16 78, i16 0], align 2

@_ZN11xalanc_1_1025XalanDecimalFormatSymbolsC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1025XalanDecimalFormatSymbolsC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1025XalanDecimalFormatSymbolsD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZN11xalanc_1_10L17theCurrencySymbolE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 1
  store i16 46, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 2
  store i16 35, ptr %4, align 2, !tbaa !56
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 3
  store i16 44, ptr %5, align 4, !tbaa !57
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @_ZN11xalanc_1_10L18theInfinityDefaultE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %7 unwind label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %9 unwind label %20

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 7
  store i16 45, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 8
  store i16 46, ptr %11, align 2, !tbaa !59
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 10
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull @_ZN11xalanc_1_10L13theNaNDefaultE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %13 unwind label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 11
  store i16 59, ptr %14, align 8, !tbaa !60
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 12
  store i16 37, ptr %15, align 2, !tbaa !61
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 13
  store i16 8240, ptr %16, align 4, !tbaa !62
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 14
  store i16 48, ptr %17, align 2, !tbaa !63
  ret void

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %26

20:                                               ; preds = %7
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %9
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #12
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #12
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %19, %18 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  resume { ptr, i32 } %27
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !46
  store i16 %6, ptr %4, align 8, !tbaa !46
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !56
  store i16 %9, ptr %7, align 2, !tbaa !56
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 4, !tbaa !57
  store i16 %12, ptr %10, align 4, !tbaa !57
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %15 unwind label %40

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %18 unwind label %42

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 7
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 7
  %21 = load i16, ptr %20, align 8, !tbaa !58
  store i16 %21, ptr %19, align 8, !tbaa !58
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 8
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 8
  %24 = load i16, ptr %23, align 2, !tbaa !59
  store i16 %24, ptr %22, align 2, !tbaa !59
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 10
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 10
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %25, ptr noundef nonnull align 8 dereferenceable(36) %26, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %27 unwind label %44

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 11
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 11
  %30 = load i16, ptr %29, align 8, !tbaa !60
  store i16 %30, ptr %28, align 8, !tbaa !60
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 12
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 12
  %33 = load i16, ptr %32, align 2, !tbaa !61
  store i16 %33, ptr %31, align 2, !tbaa !61
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 13
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 13
  %36 = load i16, ptr %35, align 4, !tbaa !62
  store i16 %36, ptr %34, align 4, !tbaa !62
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 14
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 14
  %39 = load i16, ptr %38, align 2, !tbaa !63
  store i16 %39, ptr %37, align 2, !tbaa !63
  ret void

40:                                               ; preds = %3
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %48

42:                                               ; preds = %15
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %46

44:                                               ; preds = %18
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #12
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #12
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %41, %40 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  resume { ptr, i32 } %49
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 10
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(184) ptr @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) local_unnamed_addr #0 align 2 !prof !45 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %54, label %4

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 1
  store i16 %10, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !56
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 2
  store i16 %13, ptr %14, align 2, !tbaa !56
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 3
  %16 = load i16, ptr %15, align 4, !tbaa !57
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 3
  store i16 %16, ptr %17, align 4, !tbaa !57
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 5
  %20 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 5, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !64
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 5, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !64
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 6
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 6
  %26 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %25)
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 6, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !64
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 6, i32 1
  store i32 %28, ptr %29, align 8, !tbaa !64
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 7
  %31 = load i16, ptr %30, align 8, !tbaa !58
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 7
  store i16 %31, ptr %32, align 8, !tbaa !58
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 8
  %34 = load i16, ptr %33, align 2, !tbaa !59
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 8
  store i16 %34, ptr %35, align 2, !tbaa !59
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 10
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 10
  %38 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %37)
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 10, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !64
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 10, i32 1
  store i32 %40, ptr %41, align 8, !tbaa !64
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 11
  %43 = load i16, ptr %42, align 8, !tbaa !60
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 11
  store i16 %43, ptr %44, align 8, !tbaa !60
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 12
  %46 = load i16, ptr %45, align 2, !tbaa !61
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 12
  store i16 %46, ptr %47, align 2, !tbaa !61
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 13
  %49 = load i16, ptr %48, align 4, !tbaa !62
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 13
  store i16 %49, ptr %50, align 4, !tbaa !62
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 14
  %52 = load i16, ptr %51, align 2, !tbaa !63
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 14
  store i16 %52, ptr %53, align 2, !tbaa !63
  br label %54

54:                                               ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1025XalanDecimalFormatSymbolseqERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) local_unnamed_addr #0 align 2 !prof !45 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br i1 %3, label %4, label %70

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !46
  %9 = icmp eq i16 %6, %8
  br i1 %9, label %10, label %70

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !56
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 2
  %14 = load i16, ptr %13, align 2, !tbaa !56
  %15 = icmp eq i16 %12, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %10
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 3
  %18 = load i16, ptr %17, align 4, !tbaa !57
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 3
  %20 = load i16, ptr %19, align 4, !tbaa !57
  %21 = icmp eq i16 %18, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 5
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 5
  %25 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %23, ptr noundef nonnull align 8 dereferenceable(36) %24)
  br i1 %25, label %26, label %70

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 6
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 6
  %29 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %28)
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 7
  %32 = load i16, ptr %31, align 8, !tbaa !58
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 7
  %34 = load i16, ptr %33, align 8, !tbaa !58
  %35 = icmp eq i16 %32, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %30
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 8
  %38 = load i16, ptr %37, align 2, !tbaa !59
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 8
  %40 = load i16, ptr %39, align 2, !tbaa !59
  %41 = icmp eq i16 %38, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 10
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 10
  %45 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %43, ptr noundef nonnull align 8 dereferenceable(36) %44)
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 11
  %48 = load i16, ptr %47, align 8, !tbaa !60
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 11
  %50 = load i16, ptr %49, align 8, !tbaa !60
  %51 = icmp eq i16 %48, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 12
  %54 = load i16, ptr %53, align 2, !tbaa !61
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 12
  %56 = load i16, ptr %55, align 2, !tbaa !61
  %57 = icmp eq i16 %54, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 13
  %60 = load i16, ptr %59, align 4, !tbaa !62
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 13
  %62 = load i16, ptr %61, align 4, !tbaa !62
  %63 = icmp eq i16 %60, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 14
  %66 = load i16, ptr %65, align 2, !tbaa !63
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %1, i64 0, i32 14
  %68 = load i16, ptr %67, align 2, !tbaa !63
  %69 = icmp eq i16 %66, %68
  br label %70

70:                                               ; preds = %64, %58, %52, %46, %42, %36, %30, %26, %22, %16, %10, %4, %2
  %71 = phi i1 [ false, %58 ], [ false, %52 ], [ false, %46 ], [ false, %42 ], [ false, %36 ], [ false, %30 ], [ false, %26 ], [ false, %22 ], [ false, %16 ], [ false, %10 ], [ false, %4 ], [ false, %2 ], [ %69, %64 ]
  ret i1 %71
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !66
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !67

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = load ptr, ptr %0, align 8, !tbaa !69
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !72

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !45 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !74

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !75
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !76

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %12 = load ptr, ptr %0, align 8, !tbaa !69
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !69
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !75
  %16 = load i64, ptr %6, align 8, !tbaa !66
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %19, ptr %0, align 8, !tbaa !69
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !75
  store i64 %21, ptr %14, align 8, !tbaa !75
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !66
  store i64 %23, ptr %6, align 8, !tbaa !66
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  store ptr %25, ptr %17, align 8, !tbaa !68
  store ptr %13, ptr %3, align 8, !tbaa !69
  store i64 %15, ptr %20, align 8, !tbaa !75
  store i64 %16, ptr %22, align 8, !tbaa !66
  store ptr %18, ptr %24, align 8, !tbaa !68
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !77

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !70
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !78

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #13
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !68
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !75
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !79

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !80

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !68
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !75
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !75
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !68
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !81

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !68
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !82
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !69
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !75
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !84

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !69
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !75
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !66
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !70
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !85
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !68
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = load i64, ptr %9, align 8, !tbaa !75
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !86

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !69
  %28 = load i64, ptr %6, align 8, !tbaa !75
  %29 = load i64, ptr %7, align 8, !tbaa !66
  %30 = load ptr, ptr %8, align 8, !tbaa !68
  %31 = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %31, ptr %0, align 8, !tbaa !69
  %32 = load i64, ptr %14, align 8, !tbaa !75
  store i64 %32, ptr %6, align 8, !tbaa !75
  %33 = load i64, ptr %15, align 8, !tbaa !66
  store i64 %33, ptr %7, align 8, !tbaa !66
  %34 = load ptr, ptr %21, align 8, !tbaa !68
  store ptr %34, ptr %8, align 8, !tbaa !68
  store ptr %27, ptr %5, align 8, !tbaa !69
  store i64 %28, ptr %14, align 8, !tbaa !75
  store i64 %29, ptr %15, align 8, !tbaa !66
  store ptr %30, ptr %21, align 8, !tbaa !68
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !86

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !70
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #13
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !66
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !68
  %50 = load ptr, ptr %5, align 8, !tbaa !69
  %51 = load ptr, ptr %50, align 8, !tbaa !70
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #13
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !87

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !70
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !88
  store ptr %65, ptr %8, align 8, !tbaa !68
  store i64 %3, ptr %7, align 8, !tbaa !66
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !90

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !75
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !66
  br i1 %18, label %21, label %39, !prof !91

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !92

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !93

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !68
  %28 = load i64, ptr %12, align 8, !tbaa !75
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !94
  store i16 %34, ptr %32, align 2, !tbaa !94
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !95, !llvm.loop !96

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !99

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %42 = load ptr, ptr %0, align 8, !tbaa !69
  store ptr %42, ptr %5, align 8, !tbaa !69
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !75
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !66
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !70
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !100
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !68
  %51 = load i64, ptr %43, align 8, !tbaa !75
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !68
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !101

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !68
  %56 = load i64, ptr %43, align 8, !tbaa !75
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !101

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !68
  %60 = load i64, ptr %43, align 8, !tbaa !75
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !68
  %63 = load i64, ptr %12, align 8, !tbaa !75
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !101

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !69
  %67 = load i64, ptr %12, align 8, !tbaa !75
  %68 = load i64, ptr %19, align 8, !tbaa !66
  %69 = load ptr, ptr %15, align 8, !tbaa !68
  %70 = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %70, ptr %0, align 8, !tbaa !69
  %71 = load i64, ptr %43, align 8, !tbaa !75
  store i64 %71, ptr %12, align 8, !tbaa !75
  %72 = load i64, ptr %44, align 8, !tbaa !66
  store i64 %72, ptr %19, align 8, !tbaa !66
  %73 = load ptr, ptr %50, align 8, !tbaa !68
  store ptr %73, ptr %15, align 8, !tbaa !68
  store ptr %66, ptr %5, align 8, !tbaa !69
  store i64 %67, ptr %43, align 8, !tbaa !75
  store i64 %68, ptr %44, align 8, !tbaa !66
  store ptr %69, ptr %50, align 8, !tbaa !68
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !102

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !70
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !103

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #13
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !66
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !68
  %89 = load ptr, ptr %5, align 8, !tbaa !69
  %90 = load ptr, ptr %89, align 8, !tbaa !70
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #13
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !104

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !105

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !105

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !106, !llvm.loop !107

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !108, !llvm.loop !109

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !110
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
  br i1 %123, label %124, label %120, !llvm.loop !111

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
  store i64 %36, ptr %12, align 8, !tbaa !75
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !112 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !66
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !113

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !94
  store i16 %13, ptr %12, align 2, !tbaa !94
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !75
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %21 = load ptr, ptr %0, align 8, !tbaa !69
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !69
  %24 = load i64, ptr %4, align 8, !tbaa !75
  %25 = load i64, ptr %6, align 8, !tbaa !66
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %28, ptr %0, align 8, !tbaa !69
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !75
  store i64 %30, ptr %4, align 8, !tbaa !75
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !66
  store i64 %32, ptr %6, align 8, !tbaa !66
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !68
  store ptr %34, ptr %26, align 8, !tbaa !68
  store ptr %23, ptr %3, align 8, !tbaa !69
  store i64 %24, ptr %29, align 8, !tbaa !75
  store i64 %25, ptr %31, align 8, !tbaa !66
  store ptr %27, ptr %33, align 8, !tbaa !68
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !70
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #13
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !66
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !68
  %52 = load ptr, ptr %3, align 8, !tbaa !69
  %53 = load ptr, ptr %52, align 8, !tbaa !70
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #13
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !114 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !69
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !75
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !84

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !69
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !66
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !115
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !68
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = load i64, ptr %5, align 8, !tbaa !75
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !86

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !69
  %24 = load i64, ptr %10, align 8, !tbaa !75
  %25 = load i64, ptr %11, align 8, !tbaa !66
  %26 = load ptr, ptr %17, align 8, !tbaa !68
  store ptr %4, ptr %3, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !66
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !68
  %33 = load ptr, ptr %3, align 8, !tbaa !69
  %34 = load ptr, ptr %33, align 8, !tbaa !70
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #13
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !87

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !70
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !116
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !69
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !66
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !68
  store ptr %53, ptr %0, align 8, !tbaa !69
  store i64 %52, ptr %5, align 8, !tbaa !75
  store i64 %51, ptr %55, align 8, !tbaa !66
  store ptr %50, ptr %57, align 8, !tbaa !68
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !117

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !70
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !118

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #13
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
!46 = !{!47, !55, i64 40}
!47 = !{!"_ZTSN11xalanc_1_1025XalanDecimalFormatSymbolsE", !48, i64 0, !55, i64 40, !55, i64 42, !55, i64 44, !48, i64 48, !48, i64 88, !55, i64 128, !55, i64 130, !48, i64 136, !55, i64 176, !55, i64 178, !55, i64 180, !55, i64 182}
!48 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !49, i64 0, !54, i64 32}
!49 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !50, i64 0, !53, i64 8, !53, i64 16, !50, i64 24}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C++ TBAA"}
!53 = !{!"long", !51, i64 0}
!54 = !{!"int", !51, i64 0}
!55 = !{!"short", !51, i64 0}
!56 = !{!47, !55, i64 42}
!57 = !{!47, !55, i64 44}
!58 = !{!47, !55, i64 128}
!59 = !{!47, !55, i64 130}
!60 = !{!47, !55, i64 176}
!61 = !{!47, !55, i64 178}
!62 = !{!47, !55, i64 180}
!63 = !{!47, !55, i64 182}
!64 = !{!48, !54, i64 32}
!65 = !{!"function_entry_count", i64 42470003}
!66 = !{!49, !53, i64 16}
!67 = !{!"branch_weights", i32 52000, i32 42418003}
!68 = !{!49, !50, i64 24}
!69 = !{!49, !50, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"vtable pointer", !52, i64 0}
!72 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!73 = !{!"function_entry_count", i64 41614}
!74 = !{!"branch_weights", i32 0, i32 41614}
!75 = !{!49, !53, i64 8}
!76 = !{!"branch_weights", i32 12, i32 41602}
!77 = !{!"branch_weights", i32 5, i32 7}
!78 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!79 = !{!"branch_weights", i32 354, i32 41248}
!80 = !{!"branch_weights", i32 40889, i32 359}
!81 = !{!"branch_weights", i32 40581, i32 1021}
!82 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!83 = !{!"function_entry_count", i64 22}
!84 = !{!"branch_weights", i32 64551590, i32 18}
!85 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!86 = !{!"branch_weights", i32 18, i32 0}
!87 = !{!"branch_weights", i32 4, i32 64551586}
!88 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!89 = !{!"function_entry_count", i64 155828046}
!90 = !{!"branch_weights", i32 0, i32 155828046}
!91 = !{!"branch_weights", i32 133170777, i32 22657269}
!92 = !{!"branch_weights", i32 20, i32 133170757}
!93 = !{!"branch_weights", i32 1, i32 19024395}
!94 = !{!55, !55, i64 0}
!95 = !{!"branch_weights", i32 19024395, i32 -26420601}
!96 = distinct !{!96, !97, !98}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !{!"branch_weights", i32 20748786, i32 1908483}
!100 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!101 = !{!"branch_weights", i32 20748786, i32 0}
!102 = !{!"branch_weights", i32 0, i32 20748786}
!103 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!104 = !{!"branch_weights", i32 0, i32 1908483}
!105 = !{!"branch_weights", i32 1, i32 1908482}
!106 = !{!"branch_weights", i32 1908482, i32 49797853}
!107 = distinct !{!107, !97, !98}
!108 = !{!"branch_weights", i32 1908482, i32 1}
!109 = distinct !{!109, !97, !98}
!110 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!111 = distinct !{!111, !97, !98}
!112 = !{!"function_entry_count", i64 124150652}
!113 = !{!"branch_weights", i32 124150652, i32 0}
!114 = !{!"function_entry_count", i64 64551586}
!115 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!116 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!117 = !{!"branch_weights", i32 42418193, i32 22133393}
!118 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
