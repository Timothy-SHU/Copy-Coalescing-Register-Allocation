; ModuleID = 'XalanSourceTreeHelper.cpp'
source_filename = "XalanSourceTreeHelper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanSourceTreeElement" = type { %"class.xalanc_1_10::XalanElement", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

$_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPT_RPNS_9XalanNodeES5_ = comdat any

$_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPT_RPNS_9XalanNodeES5_ = comdat any

$_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPT_RPNS_9XalanNodeES5_ = comdat any

$_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeES5_ = comdat any

$_ZN11xalanc_1_1021doAppendToLastSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1021doAppendToLastSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1021doAppendToLastSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1021doAppendToLastSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeCommentEEEvPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeElementEEEvPS1_RPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1022doAppendSiblingToChildINS_36XalanSourceTreeProcessingInstructionEEEvPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeCommentEEEvPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeElementEEEvPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1022doAppendSiblingToChildINS_36XalanSourceTreeProcessingInstructionEEEvPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_ = comdat any

$_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_ = comdat any

@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_23XalanSourceTreeDocumentERPNS_9XalanNodeES4_(ptr noundef readnone %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !49
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %14, label %9, !prof !50

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %10, i32 noundef 4)
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %40

14:                                               ; preds = %3
  %15 = load ptr, ptr %2, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !51
  switch i32 %18, label %34 [
    i32 8, label %19
    i32 1, label %24
    i32 7, label %29
  ], !prof !52

19:                                               ; preds = %14
  %20 = load ptr, ptr %1, align 8, !tbaa !53
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %39

23:                                               ; preds = %19
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %20, ptr noundef nonnull %2)
  br label %39

24:                                               ; preds = %14
  %25 = load ptr, ptr %1, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !50

27:                                               ; preds = %24
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %39

28:                                               ; preds = %24
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %25, ptr noundef nonnull %2)
  br label %39

29:                                               ; preds = %14
  %30 = load ptr, ptr %1, align 8, !tbaa !53
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %39

33:                                               ; preds = %29
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %30, ptr noundef nonnull %2)
  br label %39

34:                                               ; preds = %14
  %35 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %35, i32 noundef 3)
          to label %36 unwind label %37

36:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %40

39:                                               ; preds = %33, %32, %28, %27, %23, %22
  ret void

40:                                               ; preds = %37, %12
  %41 = phi ptr [ %35, %37 ], [ %10, %12 ]
  %42 = phi { ptr, i32 } [ %38, %37 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %41) #6
  resume { ptr, i32 } %42
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeCommentERPNS_9XalanNodeES4_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPT_RPNS_9XalanNodeES5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPT_RPNS_9XalanNodeES5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !56 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %2)
  switch i32 %7, label %36 [
    i32 8, label %8
    i32 1, label %15
    i32 7, label %22
    i32 3, label %29
  ]

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  store ptr %2, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %0, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPS0_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0)
  br label %41

14:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %9, ptr noundef nonnull %2)
  br label %41

15:                                               ; preds = %3
  %16 = load ptr, ptr %1, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  store ptr %2, ptr %1, align 8, !tbaa !53
  %19 = icmp eq ptr %0, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %0)
  br label %41

21:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %16, ptr noundef nonnull %2)
  br label %41

22:                                               ; preds = %3
  %23 = load ptr, ptr %1, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  store ptr %2, ptr %1, align 8, !tbaa !53
  %26 = icmp eq ptr %0, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %25
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction18setPreviousSiblingEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %0)
  br label %41

28:                                               ; preds = %22
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %23, ptr noundef nonnull %2)
  br label %41

29:                                               ; preds = %3
  %30 = load ptr, ptr %1, align 8, !tbaa !53
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  store ptr %2, ptr %1, align 8, !tbaa !53
  %33 = icmp eq ptr %0, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %32
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %0)
  br label %41

35:                                               ; preds = %29
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %30, ptr noundef nonnull %2)
  br label %41

36:                                               ; preds = %3
  %37 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %37, i32 noundef 3)
          to label %38 unwind label %39

38:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %37) #6
  resume { ptr, i32 } %40

41:                                               ; preds = %35, %34, %32, %28, %27, %25, %21, %20, %18, %14, %13, %11
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES4_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !57 {
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPT_RPNS_9XalanNodeES5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPT_RPNS_9XalanNodeES5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !57 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !58
  switch i32 %7, label %36 [
    i32 8, label %8
    i32 1, label %15
    i32 7, label %22
    i32 3, label %29
  ], !prof !59

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  store ptr %2, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %0, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0)
  br label %41

14:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %9, ptr noundef nonnull %2)
  br label %41

15:                                               ; preds = %3
  %16 = load ptr, ptr %1, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  store ptr %2, ptr %1, align 8, !tbaa !53
  %19 = icmp eq ptr %0, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %0)
  br label %41

21:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %16, ptr noundef nonnull %2)
  br label %41

22:                                               ; preds = %3
  %23 = load ptr, ptr %1, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  store ptr %2, ptr %1, align 8, !tbaa !53
  %26 = icmp eq ptr %0, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %25
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction18setPreviousSiblingEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %0)
  br label %41

28:                                               ; preds = %22
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %23, ptr noundef nonnull %2)
  br label %41

29:                                               ; preds = %3
  %30 = load ptr, ptr %1, align 8, !tbaa !53
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35, !prof !60

32:                                               ; preds = %29
  store ptr %2, ptr %1, align 8, !tbaa !53
  %33 = icmp eq ptr %0, null
  br i1 %33, label %41, label %34, !prof !61

34:                                               ; preds = %32
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %0)
  br label %41

35:                                               ; preds = %29
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %30, ptr noundef nonnull %2)
  br label %41

36:                                               ; preds = %3
  %37 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %37, i32 noundef 3)
          to label %38 unwind label %39

38:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %37) #6
  resume { ptr, i32 } %40

41:                                               ; preds = %35, %34, %32, %28, %27, %25, %21, %20, %18, %14, %13, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_36XalanSourceTreeProcessingInstructionERPNS_9XalanNodeES4_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPT_RPNS_9XalanNodeES5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPT_RPNS_9XalanNodeES5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !56 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %2)
  switch i32 %7, label %36 [
    i32 8, label %8
    i32 1, label %15
    i32 7, label %22
    i32 3, label %29
  ]

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  store ptr %2, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %0, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0)
  br label %41

14:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %9, ptr noundef nonnull %2)
  br label %41

15:                                               ; preds = %3
  %16 = load ptr, ptr %1, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  store ptr %2, ptr %1, align 8, !tbaa !53
  %19 = icmp eq ptr %0, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %0)
  br label %41

21:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %16, ptr noundef nonnull %2)
  br label %41

22:                                               ; preds = %3
  %23 = load ptr, ptr %1, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  store ptr %2, ptr %1, align 8, !tbaa !53
  %26 = icmp eq ptr %0, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %25
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction18setPreviousSiblingEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %0)
  br label %41

28:                                               ; preds = %22
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %23, ptr noundef nonnull %2)
  br label %41

29:                                               ; preds = %3
  %30 = load ptr, ptr %1, align 8, !tbaa !53
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  store ptr %2, ptr %1, align 8, !tbaa !53
  %33 = icmp eq ptr %0, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %32
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %0)
  br label %41

35:                                               ; preds = %29
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %30, ptr noundef nonnull %2)
  br label %41

36:                                               ; preds = %3
  %37 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %37, i32 noundef 3)
          to label %38 unwind label %39

38:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %37) #6
  resume { ptr, i32 } %40

41:                                               ; preds = %35, %34, %32, %28, %27, %25, %21, %20, %18, %14, %13, %11
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_19XalanSourceTreeTextERPNS_9XalanNodeES4_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !57 {
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeES5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeES5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !57 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !62
  switch i32 %7, label %36 [
    i32 8, label %8
    i32 1, label %15
    i32 7, label %22
    i32 3, label %29
  ], !prof !63

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  store ptr %2, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %0, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0)
  br label %41

14:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %9, ptr noundef nonnull %2)
  br label %41

15:                                               ; preds = %3
  %16 = load ptr, ptr %1, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21, !prof !60

18:                                               ; preds = %15
  store ptr %2, ptr %1, align 8, !tbaa !53
  %19 = icmp eq ptr %0, null
  br i1 %19, label %41, label %20, !prof !61

20:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %0)
  br label %41

21:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %16, ptr noundef nonnull %2)
  br label %41

22:                                               ; preds = %3
  %23 = load ptr, ptr %1, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  store ptr %2, ptr %1, align 8, !tbaa !53
  %26 = icmp eq ptr %0, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %25
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction18setPreviousSiblingEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %0)
  br label %41

28:                                               ; preds = %22
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %23, ptr noundef nonnull %2)
  br label %41

29:                                               ; preds = %3
  %30 = load ptr, ptr %1, align 8, !tbaa !53
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  store ptr %2, ptr %1, align 8, !tbaa !53
  %33 = icmp eq ptr %0, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %32
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %0)
  br label %41

35:                                               ; preds = %29
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %30, ptr noundef nonnull %2)
  br label %41

36:                                               ; preds = %3
  %37 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %37, i32 noundef 3)
          to label %38 unwind label %39

38:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %37) #6
  resume { ptr, i32 } %40

41:                                               ; preds = %35, %34, %32, %28, %27, %25, %21, %20, %18, %14, %13, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1021doAppendToLastSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021doAppendToLastSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0)
  switch i32 %6, label %11 [
    i32 8, label %7
    i32 1, label %8
    i32 7, label %9
    i32 3, label %10
  ]

7:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  br label %16

8:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  br label %16

9:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  br label %16

10:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1)
  br label %16

11:                                               ; preds = %2
  %12 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef 3)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #6
  resume { ptr, i32 } %15

16:                                               ; preds = %10, %9, %8, %7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !57 {
  tail call void @_ZN11xalanc_1_1021doAppendToLastSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021doAppendToLastSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !57 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !58
  switch i32 %6, label %11 [
    i32 8, label %7
    i32 1, label %8
    i32 7, label %9
    i32 3, label %10
  ], !prof !59

7:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  br label %16

8:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  br label %16

9:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  br label %16

10:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1)
  br label %16

11:                                               ; preds = %2
  %12 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef 3)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #6
  resume { ptr, i32 } %15

16:                                               ; preds = %10, %9, %8, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1021doAppendToLastSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021doAppendToLastSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0)
  switch i32 %6, label %11 [
    i32 8, label %7
    i32 1, label %8
    i32 7, label %9
    i32 3, label %10
  ]

7:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  br label %16

8:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  br label %16

9:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  br label %16

10:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1)
  br label %16

11:                                               ; preds = %2
  %12 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef 3)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #6
  resume { ptr, i32 } %15

16:                                               ; preds = %10, %9, %8, %7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !57 {
  tail call void @_ZN11xalanc_1_1021doAppendToLastSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021doAppendToLastSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !57 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !62
  switch i32 %6, label %11 [
    i32 8, label %7
    i32 1, label %8
    i32 7, label %9
    i32 3, label %10
  ], !prof !63

7:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  br label %16

8:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  br label %16

9:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  br label %16

10:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1)
  br label %16

11:                                               ; preds = %2
  %12 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef 3)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #6
  resume { ptr, i32 } %15

16:                                               ; preds = %10, %9, %8, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1016doGetLastSiblingEPNS_9XalanNodeE(ptr noundef %0) local_unnamed_addr #0 !prof !56 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 10
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %3 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 10
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !64

16:                                               ; preds = %9, %3, %1
  %17 = phi ptr [ null, %1 ], [ %0, %3 ], [ %10, %9 ]
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeCommentEEEvPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeCommentEEEvPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !56 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(56) %2)
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 10
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !64

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %11, %14 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %28, ptr noundef nonnull %2)
  br label %29

29:                                               ; preds = %27, %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES2_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeElementEEEvPS1_RPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeElementEEEvPS1_RPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !56 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(72) %2)
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %2, i64 0, i32 4
  store ptr %0, ptr %10, align 8, !tbaa !67
  br label %11

11:                                               ; preds = %9, %3
  %12 = load ptr, ptr %1, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %30

15:                                               ; preds = %11
  %16 = load ptr, ptr %12, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 10
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %15, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %15 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds ptr, ptr %23, i64 10
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %21, !llvm.loop !64

28:                                               ; preds = %21, %15
  %29 = phi ptr [ %12, %15 ], [ %22, %21 ]
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %29, ptr noundef nonnull %2)
  br label %30

30:                                               ; preds = %28, %14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_36XalanSourceTreeProcessingInstructionEEEvPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_36XalanSourceTreeProcessingInstructionEEEvPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !56 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 10
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !64

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %11, %14 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %28, ptr noundef nonnull %2)
  br label %29

29:                                               ; preds = %27, %13
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !72 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(48) %2), !prof !73
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !74

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !74

13:                                               ; preds = %10
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 10
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !64

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %11, %14 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %28, ptr noundef nonnull %2)
  br label %29

29:                                               ; preds = %13, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeCommentEEEvPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeCommentEEEvPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !56 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(56) %2)
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 10
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !64

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %11, %14 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %28, ptr noundef nonnull %2)
  br label %29

29:                                               ; preds = %27, %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeElementEEEvPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_22XalanSourceTreeElementEEEvPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !56 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(72) %2)
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 10
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !64

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %11, %14 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %28, ptr noundef nonnull %2)
  br label %29

29:                                               ; preds = %27, %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_36XalanSourceTreeProcessingInstructionEEEvPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022doAppendSiblingToChildINS_36XalanSourceTreeProcessingInstructionEEEvPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !56 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 10
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !64

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %11, %14 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %28, ptr noundef nonnull %2)
  br label %29

29:                                               ; preds = %27, %13
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !75 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(48) %2), !prof !76
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !77

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr %1, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !78

13:                                               ; preds = %10
  store ptr %2, ptr %1, align 8, !tbaa !53
  br label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 10
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !64

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %11, %14 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_(ptr noundef nonnull %28, ptr noundef nonnull %2)
  br label %29

29:                                               ; preds = %13, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper14getLastSiblingEPNS_9XalanNodeE(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !56 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 10
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %3 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 10
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !64

16:                                               ; preds = %9, %3, %1
  %17 = phi ptr [ null, %1 ], [ %0, %3 ], [ %10, %9 ]
  ret ptr %17
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeCommentEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 10
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 10
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !64

17:                                               ; preds = %10, %4, %2
  %18 = phi ptr [ null, %2 ], [ %0, %4 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %18)
  switch i32 %22, label %27 [
    i32 8, label %23
    i32 1, label %24
    i32 7, label %25
    i32 3, label %26
  ]

23:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef %1)
  br label %32

24:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef %1)
  br label %32

25:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef %1)
  br label %32

26:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %1)
  br label %32

27:                                               ; preds = %17
  %28 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %28, i32 noundef 3)
          to label %29 unwind label %30

29:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

30:                                               ; preds = %27
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %28) #6
  resume { ptr, i32 } %31

32:                                               ; preds = %26, %25, %24, %23
  ret void
}

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 10
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 10
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !64

17:                                               ; preds = %10, %4, %2
  %18 = phi ptr [ null, %2 ], [ %0, %4 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %18)
  switch i32 %22, label %27 [
    i32 8, label %23
    i32 1, label %24
    i32 7, label %25
    i32 3, label %26
  ]

23:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef %1)
  br label %32

24:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef %1)
  br label %32

25:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef %1)
  br label %32

26:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %1)
  br label %32

27:                                               ; preds = %17
  %28 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %28, i32 noundef 3)
          to label %29 unwind label %30

29:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

30:                                               ; preds = %27
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %28) #6
  resume { ptr, i32 } %31

32:                                               ; preds = %26, %25, %24, %23
  ret void
}

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015doAppendSiblingINS_36XalanSourceTreeProcessingInstructionEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 10
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 10
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !64

17:                                               ; preds = %10, %4, %2
  %18 = phi ptr [ null, %2 ], [ %0, %4 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %18)
  switch i32 %22, label %27 [
    i32 8, label %23
    i32 1, label %24
    i32 7, label %25
    i32 3, label %26
  ]

23:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef %1)
  br label %32

24:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef %1)
  br label %32

25:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef %1)
  br label %32

26:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %1)
  br label %32

27:                                               ; preds = %17
  %28 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %28, i32 noundef 3)
          to label %29 unwind label %30

29:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

30:                                               ; preds = %27
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %28) #6
  resume { ptr, i32 } %31

32:                                               ; preds = %26, %25, %24, %23
  ret void
}

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction18setPreviousSiblingEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 10
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 10
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !64

17:                                               ; preds = %10, %4, %2
  %18 = phi ptr [ null, %2 ], [ %0, %4 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %18)
  switch i32 %22, label %27 [
    i32 8, label %23
    i32 1, label %24
    i32 7, label %25
    i32 3, label %26
  ]

23:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef %1)
  br label %32

24:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef %1)
  br label %32

25:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef %1)
  br label %32

26:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %1)
  br label %32

27:                                               ; preds = %17
  %28 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %28, i32 noundef 3)
          to label %29 unwind label %30

29:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #7
  unreachable

30:                                               ; preds = %27
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %28) #6
  resume { ptr, i32 } %31

32:                                               ; preds = %26, %25, %24, %23
  ret void
}

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction18setPreviousSiblingEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction18setPreviousSiblingEPS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction18setPreviousSiblingEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!35 = !{ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES4_, ptr @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPT_RPNS_9XalanNodeES5_, i64 832910}
!36 = !{ptr @_ZN11xalanc_1_1015doAppendSiblingINS_22XalanSourceTreeElementEEEvPT_RPNS_9XalanNodeES5_, ptr @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPNS_22XalanSourceTreeElementE, i64 832910}
!37 = !{ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_19XalanSourceTreeTextERPNS_9XalanNodeES4_, ptr @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeES5_, i64 832910}
!38 = !{ptr @_ZN11xalanc_1_1015doAppendSiblingINS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeES5_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPNS_19XalanSourceTreeTextE, i64 832910}
!39 = !{ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeElementE, ptr @_ZN11xalanc_1_1021doAppendToLastSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_, i64 832910}
!40 = !{ptr @_ZN11xalanc_1_1021doAppendToLastSiblingINS_22XalanSourceTreeElementEEEvPNS_9XalanNodeEPT_, ptr @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_22XalanSourceTreeElementE, i64 832910}
!41 = !{ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE, ptr @_ZN11xalanc_1_1021doAppendToLastSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_, i64 832910}
!42 = !{ptr @_ZN11xalanc_1_1021doAppendToLastSiblingINS_19XalanSourceTreeTextEEEvPNS_9XalanNodeEPT_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_19XalanSourceTreeTextE, i64 832910}
!43 = !{ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE, ptr @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_31XalanSourceTreeDocumentFragmentE, i64 33406}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"VP", i32 0, i64 1, i64 6698983096730517037, i64 1}
!50 = !{!"branch_weights", i32 1, i32 0}
!51 = !{!"VP", i32 0, i64 1, i64 5575636727286712827, i64 1}
!52 = !{!"branch_weights", i32 0, i32 0, i32 1, i32 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !48, i64 0}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!"function_entry_count", i64 832910}
!58 = !{!"VP", i32 0, i64 832910, i64 -2905376512939438276, i64 832910}
!59 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 832910}
!60 = !{!"branch_weights", i32 832910, i32 0}
!61 = !{!"branch_weights", i32 0, i32 832910}
!62 = !{!"VP", i32 0, i64 832910, i64 5575636727286712827, i64 832910}
!63 = !{!"branch_weights", i32 0, i32 0, i32 832910, i32 0, i32 0}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!68, !54, i64 32}
!68 = !{!"_ZTSN11xalanc_1_1022XalanSourceTreeElementE", !69, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !71, i64 64}
!69 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !70, i64 0}
!70 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!71 = !{!"long", !55, i64 0}
!72 = !{!"function_entry_count", i64 678604}
!73 = !{!"VP", i32 0, i64 678604, i64 8489367010633727026, i64 678604}
!74 = !{!"branch_weights", i32 678604, i32 0}
!75 = !{!"function_entry_count", i64 33406}
!76 = !{!"VP", i32 0, i64 33406, i64 8489367010633727026, i64 33406}
!77 = !{!"branch_weights", i32 0, i32 33406}
!78 = !{!"branch_weights", i32 33406, i32 0}
