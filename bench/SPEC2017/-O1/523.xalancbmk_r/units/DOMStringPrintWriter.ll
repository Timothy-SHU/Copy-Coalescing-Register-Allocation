; ModuleID = 'DOMStringPrintWriter.cpp'
source_filename = "DOMStringPrintWriter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::DOMStringPrintWriter" = type { %"class.xalanc_1_10::PrintWriter", ptr }
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1020DOMStringPrintWriterE = dso_local unnamed_addr constant { [30 x ptr] } { [30 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020DOMStringPrintWriterE, ptr @_ZN11xalanc_1_1020DOMStringPrintWriterD2Ev, ptr @_ZN11xalanc_1_1020DOMStringPrintWriterD0Ev, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5closeEv, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5flushEv, ptr @_ZN11xalanc_1_106Writer9getStreamEv, ptr @_ZNK11xalanc_1_106Writer9getStreamEv, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5writeEPKcmm, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5writeEPKtjj, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5writeEt, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5writeERKNS_14XalanDOMStringEjj, ptr @_ZNK11xalanc_1_1020DOMStringPrintWriter10checkErrorEv, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5printEb, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5printEc, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5printEPKcm, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5printEPKtj, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5printEd, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5printEi, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5printEl, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5printERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEv, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEb, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEc, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEPKcm, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEPKtj, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEd, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEi, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEl, ptr @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnERKNS_14XalanDOMStringE] }, align 8
@_ZN11xalanc_1_1011PrintWriter12s_trueStringE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1011PrintWriter13s_falseStringE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1011PrintWriter15s_newlineStringE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1020DOMStringPrintWriterE = dso_local constant [38 x i8] c"N11xalanc_1_1020DOMStringPrintWriterE\00", align 1
@_ZTIN11xalanc_1_1011PrintWriterE = external constant ptr
@_ZTIN11xalanc_1_1020DOMStringPrintWriterE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020DOMStringPrintWriterE, ptr @_ZTIN11xalanc_1_1011PrintWriterE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1020DOMStringPrintWriterC2ERNS_14XalanDOMStringE
@_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020DOMStringPrintWriterD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriterC2ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !39 {
  %3 = load ptr, ptr %1, align 8, !tbaa !40
  tail call void @_ZN11xalanc_1_1011PrintWriterC2EbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %3)
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1020DOMStringPrintWriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xalanc_1_10::DOMStringPrintWriter", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !48
  ret void
}

declare void @_ZN11xalanc_1_1011PrintWriterC2EbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011PrintWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !39 {
  tail call void @_ZN11xalanc_1_1011PrintWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !53 {
  tail call void @_ZN11xalanc_1_1011PrintWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020DOMStringPrintWriter10checkErrorEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !53 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5closeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !53 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5flushEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !54 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5writeEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %6 = getelementptr inbounds %"class.xalanc_1_10::DOMStringPrintWriter", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %8)
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %9 unwind label %32

9:                                                ; preds = %4
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, i32 noundef -1)
          to label %11 unwind label %32

11:                                               ; preds = %9
  %12 = trunc i64 %2 to i32
  %13 = trunc i64 %3 to i32
  %14 = load ptr, ptr %0, align 8, !tbaa !46
  %15 = getelementptr inbounds ptr, ptr %14, i64 9
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %12, i32 noundef %13)
          to label %17 unwind label %32

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !55
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = load ptr, ptr %5, align 8, !tbaa !40
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %23)
          to label %31 unwind label %28

28:                                               ; preds = %21
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #12
  unreachable

31:                                               ; preds = %17, %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  ret void

32:                                               ; preds = %9, %4, %11
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !55
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = load ptr, ptr %5, align 8, !tbaa !40
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef %39)
          to label %47 unwind label %44

44:                                               ; preds = %37
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #12
  unreachable

47:                                               ; preds = %32, %37
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5writeEPKtjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 align 2 !prof !54 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::DOMStringPrintWriter", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds i16, ptr %1, i64 %7
  %9 = icmp eq i32 %3, -1
  br i1 %9, label %10, label %12, !prof !57

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %8)
  br label %12

12:                                               ; preds = %4, %10
  %13 = phi i32 [ %11, %10 ], [ %3, %4 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %8, i32 noundef %13)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5writeEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i16 noundef zeroext %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::DOMStringPrintWriter", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 1, i16 noundef zeroext %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5writeERKNS_14XalanDOMStringEjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 !prof !53 {
  %5 = icmp eq i32 %2, 0
  %6 = icmp eq i32 %3, -1
  %7 = and i1 %5, %6
  %8 = getelementptr inbounds %"class.xalanc_1_10::DOMStringPrintWriter", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !58
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  br i1 %7, label %16, label %20

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !59
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %15, i32 noundef %18)
  br label %24

20:                                               ; preds = %4
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds i16, ptr %15, i64 %21
  %23 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %22, i32 noundef %3)
  br label %24

24:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5printEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 14
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %1, ptr @_ZN11xalanc_1_1011PrintWriter12s_trueStringE, ptr @_ZN11xalanc_1_1011PrintWriter13s_falseStringE
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %6, i32 noundef -1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5printEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = sext i8 %1 to i16
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(32) %0, i16 noundef zeroext %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5printEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !53 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef 0, i64 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5printEPKtj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !53 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 7
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5printEd(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, double noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::DOMStringPrintWriter", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %8 unwind label %33

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !58
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %15, i32 noundef %17)
          to label %19 unwind label %33

19:                                               ; preds = %8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !55
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 8, !tbaa !56
  %25 = load ptr, ptr %3, align 8, !tbaa !40
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %24)
          to label %32 unwind label %29

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  call void @__clang_call_terminate(ptr %31) #12
  unreachable

32:                                               ; preds = %19, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret void

33:                                               ; preds = %8, %2
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !55
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  %41 = load ptr, ptr %3, align 8, !tbaa !40
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %38
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #12
  unreachable

48:                                               ; preds = %33, %38
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  resume { ptr, i32 } %34
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5printEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::DOMStringPrintWriter", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %7 = sext i32 %1 to i64
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %9 unwind label %34

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !tbaa !48
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !58
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !59
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef %16, i32 noundef %18)
          to label %20 unwind label %34

20:                                               ; preds = %9
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !55
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %14, align 8, !tbaa !56
  %26 = load ptr, ptr %3, align 8, !tbaa !40
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %25)
          to label %33 unwind label %30

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  call void @__clang_call_terminate(ptr %32) #12
  unreachable

33:                                               ; preds = %20, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret void

34:                                               ; preds = %9, %2
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !55
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = load ptr, ptr %3, align 8, !tbaa !40
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %41)
          to label %49 unwind label %46

46:                                               ; preds = %39
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #12
  unreachable

49:                                               ; preds = %34, %39
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  resume { ptr, i32 } %35
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5printEl(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::DOMStringPrintWriter", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %8 unwind label %33

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !58
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %15, i32 noundef %17)
          to label %19 unwind label %33

19:                                               ; preds = %8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !55
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 8, !tbaa !56
  %25 = load ptr, ptr %3, align 8, !tbaa !40
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %24)
          to label %32 unwind label %29

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  call void @__clang_call_terminate(ptr %31) #12
  unreachable

32:                                               ; preds = %19, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret void

33:                                               ; preds = %8, %2
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !55
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  %41 = load ptr, ptr %3, align 8, !tbaa !40
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %38
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #12
  unreachable

48:                                               ; preds = %33, %38
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  resume { ptr, i32 } %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter5printERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::DOMStringPrintWriter", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !58
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !59
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %10, i32 noundef %12)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::DOMStringPrintWriter", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1011PrintWriter15s_newlineStringE)
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull @_ZN11xalanc_1_1011PrintWriter15s_newlineStringE, i32 noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 11
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !53 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 13
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2)
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 19
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEPKtj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !53 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 14
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2)
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 19
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEd(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 15
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 17
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_106Writer9getStreamEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_106Writer9getStreamEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !53 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn nounwind }

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
!35 = !{ptr @_ZN11xalanc_1_1020DOMStringPrintWriterC2ERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011PrintWriterC2EbRN11xercesc_2_713MemoryManagerE, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1020DOMStringPrintWriterD2Ev, ptr @_ZN11xalanc_1_1011PrintWriterD2Ev, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1020DOMStringPrintWriter5writeEPKtjj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 40062}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 2}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !42, i64 0, !45, i64 8, !45, i64 16, !42, i64 24}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"long", !43, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !44, i64 0}
!48 = !{!49, !42, i64 24}
!49 = !{!"_ZTSN11xalanc_1_1020DOMStringPrintWriterE", !50, i64 0, !42, i64 24}
!50 = !{!"_ZTSN11xalanc_1_1011PrintWriterE", !51, i64 0, !52, i64 8, !42, i64 16}
!51 = !{!"_ZTSN11xalanc_1_106WriterE"}
!52 = !{!"bool", !43, i64 0}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!"function_entry_count", i64 40062}
!55 = !{!41, !45, i64 16}
!56 = !{!41, !42, i64 24}
!57 = !{!"branch_weights", i32 0, i32 40062}
!58 = !{!41, !45, i64 8}
!59 = !{!60, !61, i64 32}
!60 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !41, i64 0, !61, i64 32}
!61 = !{!"int", !43, i64 0}
