; ModuleID = 'FunctionSystemProperty.cpp'
source_filename = "FunctionSystemProperty.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::FunctionSystemProperty" = type { %"class.xalanc_1_10::Function", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::Function" = type { ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSystemPropertyEN11xercesc_2_713MemoryManagerEEEPT_RS3_RKS4_RT0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1022FunctionSystemPropertyE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022FunctionSystemPropertyE, ptr @_ZN11xalanc_1_1022FunctionSystemPropertyD2Ev, ptr @_ZN11xalanc_1_1022FunctionSystemPropertyD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022FunctionSystemProperty7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022FunctionSystemProperty5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1022FunctionSystemProperty8getErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [37 x i8] c"http://www.w3.org/1999/XSL/Transform\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"vendor-url\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Apache Software Foundation\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"http://xml.apache.org/xalan-c\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"system-property()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022FunctionSystemPropertyE = dso_local constant [40 x i8] c"N11xalanc_1_1022FunctionSystemPropertyE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1022FunctionSystemPropertyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022FunctionSystemPropertyE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FunctionSystemProperty.cpp, ptr null }]

@_ZN11xalanc_1_1022FunctionSystemPropertyC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1022FunctionSystemPropertyC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1022FunctionSystemPropertyC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1022FunctionSystemPropertyC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1022FunctionSystemPropertyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022FunctionSystemPropertyD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022FunctionSystemPropertyC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionSystemPropertyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %4 unwind label %15, !prof !52

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %6 unwind label %17, !prof !52

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %8 unwind label %19, !prof !52

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %10 unwind label %21, !prof !52

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %12 unwind label %23, !prof !52

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %14 unwind label %25, !prof !52

14:                                               ; preds = %12
  ret void

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %35

17:                                               ; preds = %4
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %33

19:                                               ; preds = %6
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %31

21:                                               ; preds = %8
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %29

23:                                               ; preds = %10
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %12
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #12
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #12
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %22, %21 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %20, %19 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  br label %35

35:                                               ; preds = %33, %15
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %36
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022FunctionSystemPropertyC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionSystemPropertyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %6 unwind label %22, !prof !52

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %9 unwind label %24, !prof !52

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %12 unwind label %26, !prof !52

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %15 unwind label %28, !prof !52

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %18 unwind label %30, !prof !52

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %21 unwind label %32, !prof !52

21:                                               ; preds = %18
  ret void

22:                                               ; preds = %3
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %42

24:                                               ; preds = %6
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %40

26:                                               ; preds = %9
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %38

28:                                               ; preds = %12
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %36

30:                                               ; preds = %15
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %34

32:                                               ; preds = %18
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #12
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #12
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %29, %28 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #12
  br label %38

38:                                               ; preds = %36, %26
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %27, %26 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  br label %40

40:                                               ; preds = %38, %24
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %25, %24 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  br label %42

42:                                               ; preds = %40, %22
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %23, %22 ]
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %43
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022FunctionSystemPropertyD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !53 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionSystemPropertyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %5 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  %6 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #12
  %7 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022FunctionSystemPropertyD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1022FunctionSystemPropertyD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) #12
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022FunctionSystemProperty7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %7 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %8 = load ptr, ptr %4, align 8, !tbaa !54
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !58
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !63
  %19 = icmp eq i64 %18, 0
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = select i1 %19, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %21
  br label %23

23:                                               ; preds = %26, %16
  %24 = phi ptr [ %22, %16 ], [ %27, %26 ]
  %25 = load i16, ptr %24, align 2, !tbaa !64
  switch i16 %25, label %26 [
    i16 58, label %28
    i16 0, label %28
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds i16, ptr %24, i64 1
  br label %23, !llvm.loop !66

28:                                               ; preds = %23, %23
  %29 = ptrtoint ptr %24 to i64
  %30 = ptrtoint ptr %22 to i64
  %31 = sub i64 %29, %30
  %32 = lshr exact i64 %31, 1
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %6, %28
  %35 = phi i32 [ %33, %28 ], [ 0, %6 ]
  %36 = icmp ult i32 %35, %14
  br i1 %36, label %37, label %197

37:                                               ; preds = %34
  %38 = load ptr, ptr %2, align 8, !tbaa !49
  %39 = getelementptr inbounds ptr, ptr %38, i64 23
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef nonnull align 8 dereferenceable(36) ptr %40(ptr noundef nonnull align 8 dereferenceable(24) %2)
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %41, i32 noundef 0, i32 noundef %35)
          to label %42 unwind label %99

42:                                               ; preds = %37
  %43 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %44 unwind label %99

44:                                               ; preds = %42
  br i1 %43, label %73, label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %2, align 8, !tbaa !49
  %47 = getelementptr inbounds ptr, ptr %46, i64 23
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef nonnull align 8 dereferenceable(36) ptr %48(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %50 unwind label %99

50:                                               ; preds = %45
  %51 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %49, i32 noundef 81, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %52 unwind label %64

52:                                               ; preds = %50
  %53 = load ptr, ptr %2, align 8, !tbaa !49
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef %3, ptr noundef %5)
          to label %56 unwind label %64

56:                                               ; preds = %52
  %57 = load ptr, ptr %2, align 8, !tbaa !49
  %58 = getelementptr inbounds ptr, ptr %57, i64 24
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef zeroext i1 %59(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %73 unwind label %61

61:                                               ; preds = %56
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #14
  unreachable

64:                                               ; preds = %52, %50
  %65 = landingpad { ptr, i32 }
          cleanup
  %66 = load ptr, ptr %2, align 8, !tbaa !49
  %67 = getelementptr inbounds ptr, ptr %66, i64 24
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef zeroext i1 %68(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %188 unwind label %70

70:                                               ; preds = %64
  %71 = landingpad { ptr, i32 }
          catch ptr null
  %72 = extractvalue { ptr, i32 } %71, 0
  tail call void @__clang_call_terminate(ptr %72) #14
  unreachable

73:                                               ; preds = %56, %44
  %74 = load ptr, ptr %2, align 8, !tbaa !49
  %75 = getelementptr inbounds ptr, ptr %74, i64 31
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %78 unwind label %101

78:                                               ; preds = %73
  %79 = icmp eq ptr %77, null
  br i1 %79, label %80, label %114

80:                                               ; preds = %78
  %81 = load ptr, ptr %2, align 8, !tbaa !49
  %82 = getelementptr inbounds ptr, ptr %81, i64 23
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef nonnull align 8 dereferenceable(36) ptr %83(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %85 unwind label %103

85:                                               ; preds = %80
  %86 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %84, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %87 unwind label %105

87:                                               ; preds = %85
  %88 = load ptr, ptr %2, align 8, !tbaa !49
  %89 = getelementptr inbounds ptr, ptr %88, i64 2
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %86, ptr noundef %3, ptr noundef %5)
          to label %91 unwind label %105

91:                                               ; preds = %87
  %92 = load ptr, ptr %2, align 8, !tbaa !49
  %93 = getelementptr inbounds ptr, ptr %92, i64 24
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef zeroext i1 %94(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %84)
          to label %180 unwind label %96

96:                                               ; preds = %91
  %97 = landingpad { ptr, i32 }
          catch ptr null
  %98 = extractvalue { ptr, i32 } %97, 0
  tail call void @__clang_call_terminate(ptr %98) #14
  unreachable

99:                                               ; preds = %45, %42, %37
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %188

101:                                              ; preds = %173, %167, %161, %151, %123, %120, %114, %155, %118, %73
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %188

103:                                              ; preds = %80
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %188

105:                                              ; preds = %87, %85
  %106 = landingpad { ptr, i32 }
          cleanup
  %107 = load ptr, ptr %2, align 8, !tbaa !49
  %108 = getelementptr inbounds ptr, ptr %107, i64 24
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef zeroext i1 %109(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %84)
          to label %188 unwind label %111

111:                                              ; preds = %105
  %112 = landingpad { ptr, i32 }
          catch ptr null
  %113 = extractvalue { ptr, i32 } %112, 0
  tail call void @__clang_call_terminate(ptr %113) #14
  unreachable

114:                                              ; preds = %78
  %115 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 1
  %116 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %77, ptr noundef nonnull align 8 dereferenceable(36) %115)
          to label %117 unwind label %101

117:                                              ; preds = %114
  br i1 %116, label %118, label %180

118:                                              ; preds = %117
  %119 = add i32 %35, 1
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %41, i32 noundef %119, i32 noundef -1)
          to label %120 unwind label %101

120:                                              ; preds = %118
  %121 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %122 unwind label %101

122:                                              ; preds = %120
  br i1 %121, label %151, label %123

123:                                              ; preds = %122
  %124 = load ptr, ptr %2, align 8, !tbaa !49
  %125 = getelementptr inbounds ptr, ptr %124, i64 23
  %126 = load ptr, ptr %125, align 8
  %127 = invoke noundef nonnull align 8 dereferenceable(36) ptr %126(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %128 unwind label %101

128:                                              ; preds = %123
  %129 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %127, i32 noundef 81, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %130 unwind label %142

130:                                              ; preds = %128
  %131 = load ptr, ptr %2, align 8, !tbaa !49
  %132 = getelementptr inbounds ptr, ptr %131, i64 2
  %133 = load ptr, ptr %132, align 8
  invoke void %133(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %129, ptr noundef %3, ptr noundef %5)
          to label %134 unwind label %142

134:                                              ; preds = %130
  %135 = load ptr, ptr %2, align 8, !tbaa !49
  %136 = getelementptr inbounds ptr, ptr %135, i64 24
  %137 = load ptr, ptr %136, align 8
  %138 = invoke noundef zeroext i1 %137(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %127)
          to label %151 unwind label %139

139:                                              ; preds = %134
  %140 = landingpad { ptr, i32 }
          catch ptr null
  %141 = extractvalue { ptr, i32 } %140, 0
  tail call void @__clang_call_terminate(ptr %141) #14
  unreachable

142:                                              ; preds = %130, %128
  %143 = landingpad { ptr, i32 }
          cleanup
  %144 = load ptr, ptr %2, align 8, !tbaa !49
  %145 = getelementptr inbounds ptr, ptr %144, i64 24
  %146 = load ptr, ptr %145, align 8
  %147 = invoke noundef zeroext i1 %146(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %127)
          to label %188 unwind label %148

148:                                              ; preds = %142
  %149 = landingpad { ptr, i32 }
          catch ptr null
  %150 = extractvalue { ptr, i32 } %149, 0
  tail call void @__clang_call_terminate(ptr %150) #14
  unreachable

151:                                              ; preds = %134, %122
  %152 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 2
  %153 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(36) %152)
          to label %154 unwind label %101

154:                                              ; preds = %151
  br i1 %153, label %155, label %161

155:                                              ; preds = %154
  %156 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !69
  %158 = load ptr, ptr %157, align 8, !tbaa !49
  %159 = getelementptr inbounds ptr, ptr %158, i64 7
  %160 = load ptr, ptr %159, align 8
  invoke void %160(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %157, double noundef 1.000000e+00)
          to label %328 unwind label %101

161:                                              ; preds = %154
  %162 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 3
  %163 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(36) %162)
          to label %164 unwind label %101

164:                                              ; preds = %161
  br i1 %163, label %165, label %167

165:                                              ; preds = %164
  %166 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 5
  br label %173

167:                                              ; preds = %164
  %168 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 4
  %169 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(36) %168)
          to label %170 unwind label %101

170:                                              ; preds = %167
  %171 = getelementptr inbounds %"class.xalanc_1_10::FunctionSystemProperty", ptr %1, i64 0, i32 6
  %172 = select i1 %169, ptr %171, ptr @_ZN11xalanc_1_10L13s_emptyStringE
  br label %173

173:                                              ; preds = %170, %165
  %174 = phi ptr [ %166, %165 ], [ %172, %170 ]
  %175 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !69
  %177 = load ptr, ptr %176, align 8, !tbaa !49
  %178 = getelementptr inbounds ptr, ptr %177, i64 13
  %179 = load ptr, ptr %178, align 8
  invoke void %179(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %176, ptr noundef nonnull align 8 dereferenceable(36) %174)
          to label %328 unwind label %101

180:                                              ; preds = %117, %91
  %181 = load ptr, ptr %2, align 8, !tbaa !49
  %182 = getelementptr inbounds ptr, ptr %181, i64 24
  %183 = load ptr, ptr %182, align 8
  %184 = invoke noundef zeroext i1 %183(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %322 unwind label %185

185:                                              ; preds = %180
  %186 = landingpad { ptr, i32 }
          catch ptr null
  %187 = extractvalue { ptr, i32 } %186, 0
  tail call void @__clang_call_terminate(ptr %187) #14
  unreachable

188:                                              ; preds = %142, %105, %64, %99, %101, %103
  %189 = phi { ptr, i32 } [ %100, %99 ], [ %102, %101 ], [ %104, %103 ], [ %65, %64 ], [ %106, %105 ], [ %143, %142 ]
  %190 = load ptr, ptr %2, align 8, !tbaa !49
  %191 = getelementptr inbounds ptr, ptr %190, i64 24
  %192 = load ptr, ptr %191, align 8
  %193 = invoke noundef zeroext i1 %192(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %226 unwind label %194

194:                                              ; preds = %188
  %195 = landingpad { ptr, i32 }
          catch ptr null
  %196 = extractvalue { ptr, i32 } %195, 0
  tail call void @__clang_call_terminate(ptr %196) #14
  unreachable

197:                                              ; preds = %34
  %198 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %12)
  br i1 %198, label %228, label %199

199:                                              ; preds = %197
  %200 = load ptr, ptr %2, align 8, !tbaa !49
  %201 = getelementptr inbounds ptr, ptr %200, i64 23
  %202 = load ptr, ptr %201, align 8
  %203 = tail call noundef nonnull align 8 dereferenceable(36) ptr %202(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %204 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %203, i32 noundef 81, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %205 unwind label %217

205:                                              ; preds = %199
  %206 = load ptr, ptr %2, align 8, !tbaa !49
  %207 = getelementptr inbounds ptr, ptr %206, i64 2
  %208 = load ptr, ptr %207, align 8
  invoke void %208(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %204, ptr noundef %3, ptr noundef %5)
          to label %209 unwind label %217

209:                                              ; preds = %205
  %210 = load ptr, ptr %2, align 8, !tbaa !49
  %211 = getelementptr inbounds ptr, ptr %210, i64 24
  %212 = load ptr, ptr %211, align 8
  %213 = invoke noundef zeroext i1 %212(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %203)
          to label %228 unwind label %214

214:                                              ; preds = %209
  %215 = landingpad { ptr, i32 }
          catch ptr null
  %216 = extractvalue { ptr, i32 } %215, 0
  tail call void @__clang_call_terminate(ptr %216) #14
  unreachable

217:                                              ; preds = %205, %199
  %218 = landingpad { ptr, i32 }
          cleanup
  %219 = load ptr, ptr %2, align 8, !tbaa !49
  %220 = getelementptr inbounds ptr, ptr %219, i64 24
  %221 = load ptr, ptr %220, align 8
  %222 = invoke noundef zeroext i1 %221(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %203)
          to label %226 unwind label %223

223:                                              ; preds = %217
  %224 = landingpad { ptr, i32 }
          catch ptr null
  %225 = extractvalue { ptr, i32 } %224, 0
  tail call void @__clang_call_terminate(ptr %225) #14
  unreachable

226:                                              ; preds = %309, %188, %217
  %227 = phi { ptr, i32 } [ %218, %217 ], [ %297, %309 ], [ %189, %188 ]
  resume { ptr, i32 } %227

228:                                              ; preds = %197, %209
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #12
  %229 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !72
  store ptr %230, ptr %7, align 8, !tbaa !73
  %231 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 1
  %232 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %233 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %234 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %231, i8 0, i64 24, i1 false)
  %235 = load i64, ptr %234, align 8, !tbaa !63
  %236 = icmp eq i64 %235, 0
  %237 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8
  %239 = select i1 %236, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %238
  %240 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %239, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext true)
          to label %241 unwind label %283

241:                                              ; preds = %228
  %242 = load i64, ptr %231, align 8, !tbaa !75
  %243 = icmp eq i64 %242, 0
  %244 = load ptr, ptr %233, align 8
  %245 = select i1 %243, ptr null, ptr %244
  %246 = call ptr @getenv(ptr noundef %245) #12
  %247 = icmp eq ptr %246, null
  br i1 %247, label %310, label %248

248:                                              ; preds = %241
  %249 = load ptr, ptr %2, align 8, !tbaa !49
  %250 = getelementptr inbounds ptr, ptr %249, i64 23
  %251 = load ptr, ptr %250, align 8
  %252 = invoke noundef nonnull align 8 dereferenceable(36) ptr %251(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %253 unwind label %285

253:                                              ; preds = %248
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %252, i32 noundef 0, i32 noundef -1)
          to label %254 unwind label %287

254:                                              ; preds = %253
  %255 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %252, ptr noundef nonnull %246, i32 noundef -1)
          to label %256 unwind label %287

256:                                              ; preds = %254
  %257 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !69
  %259 = load ptr, ptr %258, align 8, !tbaa !49
  %260 = getelementptr inbounds ptr, ptr %259, i64 9
  %261 = load ptr, ptr %260, align 8
  invoke void %261(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %258, ptr noundef nonnull align 8 dereferenceable(36) %252)
          to label %262 unwind label %287

262:                                              ; preds = %256
  %263 = load ptr, ptr %2, align 8, !tbaa !49
  %264 = getelementptr inbounds ptr, ptr %263, i64 24
  %265 = load ptr, ptr %264, align 8
  %266 = invoke noundef zeroext i1 %265(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %252)
          to label %270 unwind label %267

267:                                              ; preds = %262
  %268 = landingpad { ptr, i32 }
          catch ptr null
  %269 = extractvalue { ptr, i32 } %268, 0
  call void @__clang_call_terminate(ptr %269) #14
  unreachable

270:                                              ; preds = %262
  %271 = load i64, ptr %232, align 8, !tbaa !76
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %282, label %273

273:                                              ; preds = %270
  %274 = load ptr, ptr %233, align 8, !tbaa !77
  %275 = load ptr, ptr %7, align 8, !tbaa !73
  %276 = load ptr, ptr %275, align 8, !tbaa !49
  %277 = getelementptr inbounds ptr, ptr %276, i64 3
  %278 = load ptr, ptr %277, align 8
  invoke void %278(ptr noundef nonnull align 8 dereferenceable(8) %275, ptr noundef %274)
          to label %282 unwind label %279

279:                                              ; preds = %273
  %280 = landingpad { ptr, i32 }
          catch ptr null
  %281 = extractvalue { ptr, i32 } %280, 0
  call void @__clang_call_terminate(ptr %281) #14
  unreachable

282:                                              ; preds = %270, %273
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  br label %336

283:                                              ; preds = %228
  %284 = landingpad { ptr, i32 }
          cleanup
  br label %296

285:                                              ; preds = %248
  %286 = landingpad { ptr, i32 }
          cleanup
  br label %296

287:                                              ; preds = %254, %253, %256
  %288 = landingpad { ptr, i32 }
          cleanup
  %289 = load ptr, ptr %2, align 8, !tbaa !49
  %290 = getelementptr inbounds ptr, ptr %289, i64 24
  %291 = load ptr, ptr %290, align 8
  %292 = invoke noundef zeroext i1 %291(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %252)
          to label %296 unwind label %293

293:                                              ; preds = %287
  %294 = landingpad { ptr, i32 }
          catch ptr null
  %295 = extractvalue { ptr, i32 } %294, 0
  call void @__clang_call_terminate(ptr %295) #14
  unreachable

296:                                              ; preds = %285, %287, %283
  %297 = phi { ptr, i32 } [ %284, %283 ], [ %286, %285 ], [ %288, %287 ]
  %298 = load i64, ptr %232, align 8, !tbaa !76
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %309, label %300

300:                                              ; preds = %296
  %301 = load ptr, ptr %233, align 8, !tbaa !77
  %302 = load ptr, ptr %7, align 8, !tbaa !73
  %303 = load ptr, ptr %302, align 8, !tbaa !49
  %304 = getelementptr inbounds ptr, ptr %303, i64 3
  %305 = load ptr, ptr %304, align 8
  invoke void %305(ptr noundef nonnull align 8 dereferenceable(8) %302, ptr noundef %301)
          to label %309 unwind label %306

306:                                              ; preds = %300
  %307 = landingpad { ptr, i32 }
          catch ptr null
  %308 = extractvalue { ptr, i32 } %307, 0
  call void @__clang_call_terminate(ptr %308) #14
  unreachable

309:                                              ; preds = %296, %300
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  br label %226

310:                                              ; preds = %241
  %311 = load i64, ptr %232, align 8, !tbaa !76
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %310
  %314 = load ptr, ptr %7, align 8, !tbaa !73
  %315 = load ptr, ptr %314, align 8, !tbaa !49
  %316 = getelementptr inbounds ptr, ptr %315, i64 3
  %317 = load ptr, ptr %316, align 8
  invoke void %317(ptr noundef nonnull align 8 dereferenceable(8) %314, ptr noundef %244)
          to label %321 unwind label %318

318:                                              ; preds = %313
  %319 = landingpad { ptr, i32 }
          catch ptr null
  %320 = extractvalue { ptr, i32 } %319, 0
  call void @__clang_call_terminate(ptr %320) #14
  unreachable

321:                                              ; preds = %310, %313
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  br label %322

322:                                              ; preds = %180, %321
  %323 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !69
  %325 = load ptr, ptr %324, align 8, !tbaa !49
  %326 = getelementptr inbounds ptr, ptr %325, i64 13
  %327 = load ptr, ptr %326, align 8
  call void %327(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %324, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE)
  br label %336

328:                                              ; preds = %173, %155
  %329 = load ptr, ptr %2, align 8, !tbaa !49
  %330 = getelementptr inbounds ptr, ptr %329, i64 24
  %331 = load ptr, ptr %330, align 8
  %332 = invoke noundef zeroext i1 %331(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %336 unwind label %333

333:                                              ; preds = %328
  %334 = landingpad { ptr, i32 }
          catch ptr null
  %335 = extractvalue { ptr, i32 } %334, 0
  tail call void @__clang_call_terminate(ptr %335) #14
  unreachable

336:                                              ; preds = %328, %282, %322
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022FunctionSystemProperty5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 !prof !48 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSystemPropertyEN11xercesc_2_713MemoryManagerEEEPT_RS3_RKS4_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSystemPropertyEN11xercesc_2_713MemoryManagerEEEPT_RS3_RKS4_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !48 {
  %4 = load ptr, ptr %0, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 248), !prof !78
  invoke void @_ZN11xalanc_1_1022FunctionSystemPropertyC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %7, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %8 unwind label %9, !prof !52

8:                                                ; preds = %3
  ret ptr %7

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = icmp eq ptr %7, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %7)
          to label %19 unwind label %16

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #14
  unreachable

19:                                               ; preds = %9, %12
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022FunctionSystemProperty8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #3 align 2 !prof !47 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 83, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #0

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !80
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !81

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = load ptr, ptr %0, align 8, !tbaa !83
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !84

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !47 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_FunctionSystemProperty.cpp() #10 section ".text.startup" !prof !48 !PGOFuncName !85 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xalanc_1_1022FunctionSystemPropertyC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1022FunctionSystemPropertyC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj, i64 6}
!37 = !{ptr @_ZN11xalanc_1_1022FunctionSystemPropertyC2ERKS0_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 6}
!38 = !{ptr @_ZN11xalanc_1_1022FunctionSystemPropertyD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 12}
!39 = !{ptr @_ZN11xalanc_1_1022FunctionSystemPropertyD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!40 = !{ptr @_ZNK11xalanc_1_1022FunctionSystemProperty5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSystemPropertyEN11xercesc_2_713MemoryManagerEEEPT_RS3_RKS4_RT0_, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSystemPropertyEN11xercesc_2_713MemoryManagerEEEPT_RS3_RKS4_RT0_, ptr @_ZN11xalanc_1_1022FunctionSystemPropertyC2ERKS0_RN11xercesc_2_713MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!43 = !{ptr @_GLOBAL__sub_I_FunctionSystemProperty.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!44 = !{ptr @_GLOBAL__sub_I_FunctionSystemProperty.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!45 = !{ptr @_GLOBAL__sub_I_FunctionSystemProperty.cpp, ptr @__cxa_atexit, i64 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!"branch_weights", i32 1, i32 0}
!53 = !{!"function_entry_count", i64 2}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !51, i64 0}
!58 = !{!59, !62, i64 32}
!59 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !60, i64 0, !62, i64 32}
!60 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !56, i64 0, !61, i64 8, !61, i64 16, !56, i64 24}
!61 = !{!"long", !57, i64 0}
!62 = !{!"int", !57, i64 0}
!63 = !{!60, !61, i64 8}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !57, i64 0}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!70, !56, i64 16}
!70 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !71, i64 0, !56, i64 16}
!71 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !56, i64 8}
!72 = !{!71, !56, i64 8}
!73 = !{!74, !56, i64 0}
!74 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !56, i64 0, !61, i64 8, !61, i64 16, !56, i64 24}
!75 = !{!74, !61, i64 8}
!76 = !{!74, !61, i64 16}
!77 = !{!74, !56, i64 24}
!78 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!79 = !{!"function_entry_count", i64 42470003}
!80 = !{!60, !61, i64 16}
!81 = !{!"branch_weights", i32 52000, i32 42418003}
!82 = !{!60, !56, i64 24}
!83 = !{!60, !56, i64 0}
!84 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!85 = !{!"FunctionSystemProperty.cpp;_GLOBAL__sub_I_FunctionSystemProperty.cpp"}
