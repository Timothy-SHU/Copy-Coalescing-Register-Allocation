; ModuleID = 'GenerateEvent.cpp'
source_filename = "GenerateEvent.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::GenerateEvent" = type { i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString", i32, i32, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtPNS2_13AttributeListE = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtPNS2_13AttributeListE
@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPKNS2_13AttributeListE = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPKNS2_13AttributeListE
@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtjj = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtjj
@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtS6_ = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtS6_
@_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKt = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr), ptr @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKt

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store i32 %1, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  %5 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
          to label %8 unwind label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
          to label %10 unwind label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr null, ptr %11, align 8, !tbaa !60
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #5
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #5
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !61 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtPNS2_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store i32 %1, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef -1) #4
          to label %10 unwind label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr %4, ptr %13, align 8, !tbaa !60
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %9) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #5
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPKNS2_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store i32 %1, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1) #4
          to label %10 unwind label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr %4, ptr %13, align 8, !tbaa !60
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %9) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #5
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtjj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store i32 %1, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds i16, ptr %3, i64 %8
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %5) #4
  %10 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 %4, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 %5, ptr %11, align 4, !tbaa !59
  %12 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
          to label %13 unwind label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
          to label %15 unwind label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr null, ptr %16, align 8, !tbaa !60
  ret void

17:                                               ; preds = %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %12) #5
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #5
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtS6_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store i32 %1, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef -1) #4
          to label %10 unwind label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef -1) #4
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr null, ptr %13, align 8, !tbaa !60
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %9) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #5
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1013GenerateEventC2ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store i32 %1, ptr %0, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  %6 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !58
  %7 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
          to label %9 unwind label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef -1) #4
          to label %11 unwind label %15

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %0, i64 0, i32 7
  store ptr null, ptr %12, align 8, !tbaa !60
  ret void

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #5
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #5
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #4
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !63
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !64

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #4
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #4
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #4
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #4
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #6
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !66 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #6
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !68

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #4
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !69, !llvm.loop !70

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !72 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #4
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !73 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #4
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #4
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !77 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSN11xalanc_1_1013GenerateEventE", !50, i64 0, !53, i64 8, !57, i64 48, !57, i64 52, !53, i64 56, !53, i64 96, !55, i64 136}
!50 = !{!"_ZTSN11xalanc_1_1013GenerateEvent9EventTypeE", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C++ TBAA"}
!53 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !54, i64 0, !57, i64 32}
!54 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !55, i64 0, !56, i64 8, !56, i64 16, !55, i64 24}
!55 = !{!"any pointer", !51, i64 0}
!56 = !{!"long", !51, i64 0}
!57 = !{!"int", !51, i64 0}
!58 = !{!49, !57, i64 48}
!59 = !{!49, !57, i64 52}
!60 = !{!49, !55, i64 136}
!61 = !{!"function_entry_count", i64 43398227}
!62 = !{!"function_entry_count", i64 128698679}
!63 = !{!54, !56, i64 16}
!64 = !{!"branch_weights", i32 43398290, i32 85300391}
!65 = !{!54, !55, i64 24}
!66 = !{!"function_entry_count", i64 6521798493}
!67 = !{!"function_entry_count", i64 85300390}
!68 = !{!"branch_weights", i32 1, i32 12185770}
!69 = !{!"branch_weights", i32 12185770, i32 -193930396}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"function_entry_count", i64 227375739}
!73 = !{!"function_entry_count", i64 568333389}
!74 = !{!54, !55, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"vtable pointer", !52, i64 0}
!77 = !{!"function_entry_count", i64 30137156660}
!78 = !{!"function_entry_count", i64 825654971}
!79 = !{!54, !56, i64 8}
