; ModuleID = 'GenerateEvent.cpp'
source_filename = "GenerateEvent.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::GenerateEvent" = type { i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString", i32, i32, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtPNS2_13AttributeListE = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtPNS2_13AttributeListE
@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPKNS2_13AttributeListE = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPKNS2_13AttributeListE
@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtjj = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtjj
@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtS6_ = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtS6_
@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKt = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKt

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store i32 %1, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %5 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %8 unwind label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %10 unwind label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr null, ptr %11, align 8, !tbaa !50
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #4
  resume { ptr, i32 } %17
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtPNS2_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store i32 %1, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !49
  %9 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef -1)
          to label %10 unwind label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr %4, ptr %13, align 8, !tbaa !50
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #4
  resume { ptr, i32 } %19
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPKNS2_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store i32 %1, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !49
  %9 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %10 unwind label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr %4, ptr %13, align 8, !tbaa !50
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #4
  resume { ptr, i32 } %19
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtjj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store i32 %1, ptr %0, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds i16, ptr %3, i64 %8
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %5)
  %10 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 %4, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 %5, ptr %11, align 4, !tbaa !49
  %12 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %13 unwind label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %15 unwind label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr null, ptr %16, align 8, !tbaa !50
  ret void

17:                                               ; preds = %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #4
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtS6_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store i32 %1, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !49
  %9 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef -1)
          to label %10 unwind label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef -1)
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr null, ptr %13, align 8, !tbaa !50
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #4
  resume { ptr, i32 } %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store i32 %1, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !49
  %8 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %9 unwind label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef -1)
          to label %11 unwind label %15

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr null, ptr %12, align 8, !tbaa !50
  ret void

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #4
  resume { ptr, i32 } %18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !52
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !53

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = load ptr, ptr %0, align 8, !tbaa !55
  %9 = load ptr, ptr %8, align 8, !tbaa !56
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
  tail call void @__clang_call_terminate(ptr %15) #5
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #4
  tail call void @_ZSt9terminatev() #5
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSN11xalanc_1_1013GenerateEventE", !40, i64 0, !43, i64 8, !47, i64 48, !47, i64 52, !43, i64 56, !43, i64 96, !45, i64 136}
!40 = !{!"_ZTSN11xalanc_1_1013GenerateEvent9EventTypeE", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !44, i64 0, !47, i64 32}
!44 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !45, i64 0, !46, i64 8, !46, i64 16, !45, i64 24}
!45 = !{!"any pointer", !41, i64 0}
!46 = !{!"long", !41, i64 0}
!47 = !{!"int", !41, i64 0}
!48 = !{!39, !47, i64 48}
!49 = !{!39, !47, i64 52}
!50 = !{!39, !45, i64 136}
!51 = !{!"function_entry_count", i64 42470003}
!52 = !{!44, !46, i64 16}
!53 = !{!"branch_weights", i32 52000, i32 42418003}
!54 = !{!44, !45, i64 24}
!55 = !{!44, !45, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !42, i64 0}
!58 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
