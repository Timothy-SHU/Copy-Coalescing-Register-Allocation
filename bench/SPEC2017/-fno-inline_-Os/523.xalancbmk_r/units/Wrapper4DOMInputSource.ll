; ModuleID = 'Wrapper4DOMInputSource.cpp'
source_filename = "Wrapper4DOMInputSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::Wrapper4DOMInputSource" = type { %"class.xercesc_2_7::InputSource.base", i8, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xercesc_2_7::InputSource" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_711InputSource16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

@_ZTVN11xercesc_2_722Wrapper4DOMInputSourceE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722Wrapper4DOMInputSourceE, ptr @_ZN11xercesc_2_722Wrapper4DOMInputSourceD2Ev, ptr @_ZN11xercesc_2_722Wrapper4DOMInputSourceD0Ev, ptr @_ZNK11xercesc_2_722Wrapper4DOMInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_722Wrapper4DOMInputSource11getEncodingEv, ptr @_ZNK11xercesc_2_722Wrapper4DOMInputSource11getPublicIdEv, ptr @_ZNK11xercesc_2_722Wrapper4DOMInputSource11getSystemIdEv, ptr @_ZNK11xercesc_2_722Wrapper4DOMInputSource28getIssueFatalErrorIfNotFoundEv, ptr @_ZN11xercesc_2_722Wrapper4DOMInputSource11setEncodingEPKt, ptr @_ZN11xercesc_2_722Wrapper4DOMInputSource11setPublicIdEPKt, ptr @_ZN11xercesc_2_722Wrapper4DOMInputSource11setSystemIdEPKt, ptr @_ZN11xercesc_2_722Wrapper4DOMInputSource28setIssueFatalErrorIfNotFoundEb] }, align 8
@.str = private unnamed_addr constant [27 x i8] c"Wrapper4DOMInputSource.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_722Wrapper4DOMInputSourceE = dso_local constant [40 x i8] c"N11xercesc_2_722Wrapper4DOMInputSourceE\00", align 1
@_ZTIN11xercesc_2_711InputSourceE = external constant ptr
@_ZTIN11xercesc_2_722Wrapper4DOMInputSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722Wrapper4DOMInputSourceE, ptr @_ZTIN11xercesc_2_711InputSourceE }, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i1, ptr), ptr @_ZN11xercesc_2_722Wrapper4DOMInputSourceC2EPNS_14DOMInputSourceEbPNS_13MemoryManagerE
@_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_722Wrapper4DOMInputSourceD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC2EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %3) #4
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_722Wrapper4DOMInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 1, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !44
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  %11 = tail call noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #4
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 15, ptr noundef %11) #4
          to label %12 unwind label %13

12:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
          to label %20 unwind label %15

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #5
  br label %18

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %18

17:                                               ; preds = %4
  ret void

18:                                               ; preds = %15, %13
  %19 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  resume { ptr, i32 } %19

20:                                               ; preds = %12
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #2 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #4
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #4
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_722Wrapper4DOMInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 1, !tbaa !38, !range !47, !noundef !48
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %13

13:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722Wrapper4DOMInputSource28getIssueFatalErrorIfNotFoundEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #4
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722Wrapper4DOMInputSource11getEncodingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #4
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722Wrapper4DOMInputSource11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #4
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722Wrapper4DOMInputSource11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #4
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722Wrapper4DOMInputSource28setIssueFatalErrorIfNotFoundEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 11
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %1) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722Wrapper4DOMInputSource11setEncodingEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722Wrapper4DOMInputSource11setPublicIdEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722Wrapper4DOMInputSource11setSystemIdEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722Wrapper4DOMInputSource10makeStreamEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Wrapper4DOMInputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 10
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #4
  ret ptr %7
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #4
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #4
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #4
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind optsize }

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
!38 = !{!39, !43, i64 41}
!39 = !{!"_ZTSN11xercesc_2_722Wrapper4DOMInputSourceE", !40, i64 0, !43, i64 41, !41, i64 48}
!40 = !{!"_ZTSN11xercesc_2_711InputSourceE", !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !43, i64 40}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"bool", !42, i64 0}
!44 = !{!39, !41, i64 48}
!45 = !{!"function_entry_count", i64 4}
!46 = !{!40, !41, i64 8}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!50, !41, i64 40}
!50 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !51, i64 8, !41, i64 16, !52, i64 24, !41, i64 32, !41, i64 40}
!51 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
!52 = !{!"int", !42, i64 0}
