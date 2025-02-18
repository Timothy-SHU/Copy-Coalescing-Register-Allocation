; ModuleID = 'XalanOutputStreamPrintWriter.cpp'
source_filename = "XalanOutputStreamPrintWriter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanOutputStream" = type { ptr, i32, ptr, i32, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanOutputStreamPrintWriter" = type <{ %"class.xalanc_1_10::PrintWriter", ptr, %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8] }>
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

@_ZTVN11xalanc_1_1028XalanOutputStreamPrintWriterE = dso_local unnamed_addr constant { [30 x ptr] } { [30 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028XalanOutputStreamPrintWriterE, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD2Ev, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD0Ev, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5closeEv, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5flushEv, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter9getStreamEv, ptr @_ZNK11xalanc_1_1028XalanOutputStreamPrintWriter9getStreamEv, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5writeEPKcmm, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5writeEPKtjj, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5writeEt, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5writeERKNS_14XalanDOMStringEjj, ptr @_ZNK11xalanc_1_1028XalanOutputStreamPrintWriter10checkErrorEv, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEb, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEc, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEPKcm, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEPKtj, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEd, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEi, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEl, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEv, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEb, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEc, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEPKcm, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEPKtj, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEd, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEi, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEl, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnERKNS_14XalanDOMStringE] }, align 8
@_ZN11xalanc_1_1011PrintWriter12s_trueStringE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1011PrintWriter13s_falseStringE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1011PrintWriter15s_newlineStringE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1028XalanOutputStreamPrintWriterE = dso_local constant [46 x i8] c"N11xalanc_1_1028XalanOutputStreamPrintWriterE\00", align 1
@_ZTIN11xalanc_1_1011PrintWriterE = external constant ptr
@_ZTIN11xalanc_1_1028XalanOutputStreamPrintWriterE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028XalanOutputStreamPrintWriterE, ptr @_ZTIN11xalanc_1_1011PrintWriterE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC1ERNS_17XalanOutputStreamEb = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC2ERNS_17XalanOutputStreamEb
@_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC2ERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @_ZN11xalanc_1_1011PrintWriterC2EbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanOutputStreamPrintWriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !60
  %7 = load ptr, ptr %4, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %9 unwind label %11, !prof !61

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 3
  store i8 0, ptr %10, align 8, !tbaa !62
  ret void

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011PrintWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %12
}

declare void @_ZN11xalanc_1_1011PrintWriterC2EbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011PrintWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter6createERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 80), !prof !69
  invoke void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC2ERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(73) %8, ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext %1)
          to label %9 unwind label %10, !prof !61

9:                                                ; preds = %2
  ret ptr %8

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = icmp eq ptr %8, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8, !tbaa !58
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %8)
          to label %20 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #17
  unreachable

20:                                               ; preds = %10, %13
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanOutputStreamPrintWriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  invoke void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %3)
          to label %4 unwind label %10, !prof !61

4:                                                ; preds = %1
  %5 = load ptr, ptr %3, align 8, !tbaa !58
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(144) %3)
          to label %8 unwind label %10, !prof !71

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  tail call void @_ZN11xalanc_1_1011PrintWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %4, %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !72 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #4 align 2 !prof !72 {
  tail call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(73) %0) #16
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter14flushWideCharsEv(ptr nocapture noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !62, !range !73, !noundef !74
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %7)
  store i8 0, ptr %2, align 8, !tbaa !62
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

declare void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1028XalanOutputStreamPrintWriter10checkErrorEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !72 {
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5closeEv(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #0 align 2 !prof !72 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5flushEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(73) %0) unnamed_addr #0 align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %3)
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %3), !prof !71
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter9getStreamEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(73) %0) unnamed_addr #8 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XalanOutputStreamPrintWriter9getStreamEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(73) %0) unnamed_addr #8 align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5writeEPKcmm(ptr nocapture noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 !prof !72 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !62, !range !73, !noundef !74
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %10)
  store i8 0, ptr %5, align 8, !tbaa !62
  br label %11

11:                                               ; preds = %4, %8
  %12 = icmp eq i64 %3, 4294967295
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds i8, ptr %1, i64 %2
  %17 = trunc i64 %3 to i32
  %18 = load ptr, ptr %15, align 8, !tbaa !58
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(144) %15, ptr noundef %16, i32 noundef %17)
  br label %36

21:                                               ; preds = %11
  %22 = icmp eq i64 %2, 0
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  br i1 %22, label %25, label %30

25:                                               ; preds = %21
  %26 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %1)
  %27 = load ptr, ptr %24, align 8, !tbaa !58
  %28 = getelementptr inbounds ptr, ptr %27, i64 4
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(144) %24, ptr noundef %1, i32 noundef %26)
  br label %36

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %1, i64 %2
  %32 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %31)
  %33 = load ptr, ptr %24, align 8, !tbaa !58
  %34 = getelementptr inbounds ptr, ptr %33, i64 4
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(144) %24, ptr noundef nonnull %31, i32 noundef %32)
  br label %36

36:                                               ; preds = %25, %30, %13
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5writeEPKtjj(ptr nocapture noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 align 2 !prof !76 {
  %5 = icmp eq i32 %3, -1
  br i1 %5, label %6, label %35, !prof !77

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  br i1 %7, label %10, label %21

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %1, %6 ]
  %12 = load i16, ptr %11, align 2, !tbaa !78
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds i16, ptr %11, i64 1
  br i1 %13, label %15, label %10, !llvm.loop !80

15:                                               ; preds = %10
  %16 = ptrtoint ptr %11 to i64
  %17 = ptrtoint ptr %1 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef %1, i32 noundef %20)
  br label %40

21:                                               ; preds = %6
  %22 = zext i32 %2 to i64
  %23 = getelementptr inbounds i16, ptr %1, i64 %22
  br label %24

24:                                               ; preds = %24, %21
  %25 = phi ptr [ %23, %21 ], [ %28, %24 ]
  %26 = load i16, ptr %25, align 2, !tbaa !78
  %27 = icmp eq i16 %26, 0
  %28 = getelementptr inbounds i16, ptr %25, i64 1
  br i1 %27, label %29, label %24, !llvm.loop !80

29:                                               ; preds = %24
  %30 = ptrtoint ptr %25 to i64
  %31 = ptrtoint ptr %23 to i64
  %32 = sub i64 %30, %31
  %33 = lshr exact i64 %32, 1
  %34 = trunc i64 %33 to i32
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull %23, i32 noundef %34)
  br label %40

35:                                               ; preds = %4
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  %38 = zext i32 %2 to i64
  %39 = getelementptr inbounds i16, ptr %1, i64 %38
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %37, ptr noundef %39, i32 noundef %3)
  br label %40

40:                                               ; preds = %15, %29, %35
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 3
  store i8 1, ptr %41, align 8, !tbaa !62
  ret void
}

declare void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5writeEt(ptr nocapture noundef nonnull align 8 dereferenceable(73) %0, i16 noundef zeroext %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3)
  store i16 %1, ptr %3, align 2, !tbaa !78
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %5, i64 0, i32 4, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !83
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !84
  %10 = zext i32 %9 to i64
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %5)
  br label %13

13:                                               ; preds = %2, %12
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %5, i64 0, i32 4
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 2 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3)
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !62
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5writeERKNS_14XalanDOMStringEjj(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 !prof !72 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = load ptr, ptr %0, align 8, !tbaa !58
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %10, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEb(ptr noundef nonnull align 8 dereferenceable(73) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds ptr, ptr %3, i64 14
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %1, ptr @_ZN11xalanc_1_1011PrintWriter12s_trueStringE, ptr @_ZN11xalanc_1_1011PrintWriter13s_falseStringE
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %6, i32 noundef -1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEc(ptr noundef nonnull align 8 dereferenceable(73) %0, i8 noundef signext %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = sext i8 %1 to i16
  %4 = load ptr, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(73) %0, i16 noundef zeroext %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEPKcm(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !72 {
  %4 = load ptr, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i64 noundef 0, i64 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEPKtj(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !72 {
  %4 = load ptr, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds ptr, ptr %4, i64 7
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEd(ptr noundef nonnull align 8 dereferenceable(73) %0, double noundef %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8, !tbaa !83
  %8 = sub i64 %7, %4
  store i64 %8, ptr %3, align 8, !tbaa !83
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2, i32 1
  store i32 0, ptr %11, align 8, !tbaa !87
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
  %13 = load ptr, ptr %0, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 18
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(36) %10)
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEi(ptr noundef nonnull align 8 dereferenceable(73) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8, !tbaa !83
  %8 = sub i64 %7, %4
  store i64 %8, ptr %3, align 8, !tbaa !83
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2, i32 1
  store i32 0, ptr %11, align 8, !tbaa !87
  %12 = sext i32 %1 to i64
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %12, ptr noundef nonnull align 8 dereferenceable(36) %10)
  %14 = load ptr, ptr %0, align 8, !tbaa !58
  %15 = getelementptr inbounds ptr, ptr %14, i64 18
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(36) %10)
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printEl(ptr noundef nonnull align 8 dereferenceable(73) %0, i64 noundef %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8, !tbaa !83
  %8 = sub i64 %7, %4
  store i64 %8, ptr %3, align 8, !tbaa !83
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStreamPrintWriter", ptr %0, i64 0, i32 2, i32 1
  store i32 0, ptr %11, align 8, !tbaa !87
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
  %13 = load ptr, ptr %0, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 18
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(36) %10)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5printERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !87
  %11 = load ptr, ptr %0, align 8, !tbaa !58
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %8, i32 noundef 0, i32 noundef %10)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEv(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #0 align 2 !prof !72 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @_ZN11xalanc_1_1011PrintWriter15s_newlineStringE, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !78
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !llvm.loop !80

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = sub i64 %8, ptrtoint (ptr @_ZN11xalanc_1_1011PrintWriter15s_newlineStringE to i64)
  %10 = lshr exact i64 %9, 1
  %11 = trunc i64 %10 to i32
  %12 = load ptr, ptr %0, align 8, !tbaa !58
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull @_ZN11xalanc_1_1011PrintWriter15s_newlineStringE, i32 noundef 0, i32 noundef %11)
  %15 = load ptr, ptr %0, align 8, !tbaa !58
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEb(ptr noundef nonnull align 8 dereferenceable(73) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds ptr, ptr %3, i64 11
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(73) %0, i1 noundef zeroext %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEc(ptr noundef nonnull align 8 dereferenceable(73) %0, i8 noundef signext %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(73) %0, i8 noundef signext %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEPKcm(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !72 {
  %4 = load ptr, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds ptr, ptr %4, i64 13
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i64 noundef %2)
  %7 = load ptr, ptr %0, align 8, !tbaa !58
  %8 = getelementptr inbounds ptr, ptr %7, i64 19
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEPKtj(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !72 {
  %4 = load ptr, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds ptr, ptr %4, i64 14
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i32 noundef %2)
  %7 = load ptr, ptr %0, align 8, !tbaa !58
  %8 = getelementptr inbounds ptr, ptr %7, i64 19
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEd(ptr noundef nonnull align 8 dereferenceable(73) %0, double noundef %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds ptr, ptr %3, i64 15
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(73) %0, double noundef %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEi(ptr noundef nonnull align 8 dereferenceable(73) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(73) %0, i32 noundef %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnEl(ptr noundef nonnull align 8 dereferenceable(73) %0, i64 noundef %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds ptr, ptr %3, i64 17
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(73) %0, i64 noundef %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter7printlnERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !90

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !92

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !89
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !94

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !78
  store i16 %13, ptr %12, align 2, !tbaa !78
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !83
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !52
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !52
  %24 = load i64, ptr %4, align 8, !tbaa !83
  %25 = load i64, ptr %6, align 8, !tbaa !89
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !91
  %28 = load ptr, ptr %3, align 8, !tbaa !52
  store ptr %28, ptr %0, align 8, !tbaa !52
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !83
  store i64 %30, ptr %4, align 8, !tbaa !83
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !89
  store i64 %32, ptr %6, align 8, !tbaa !89
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !91
  store ptr %34, ptr %26, align 8, !tbaa !91
  store ptr %23, ptr %3, align 8, !tbaa !52
  store i64 %24, ptr %29, align 8, !tbaa !83
  store i64 %25, ptr %31, align 8, !tbaa !89
  store ptr %27, ptr %33, align 8, !tbaa !91
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !58
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !89
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !91
  %52 = load ptr, ptr %3, align 8, !tbaa !52
  %53 = load ptr, ptr %52, align 8, !tbaa !58
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !83
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !96

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !52
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !83
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !89
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !58
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !97
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !91
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = load i64, ptr %9, align 8, !tbaa !83
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !98

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !52
  %28 = load i64, ptr %6, align 8, !tbaa !83
  %29 = load i64, ptr %7, align 8, !tbaa !89
  %30 = load ptr, ptr %8, align 8, !tbaa !91
  %31 = load ptr, ptr %5, align 8, !tbaa !52
  store ptr %31, ptr %0, align 8, !tbaa !52
  %32 = load i64, ptr %14, align 8, !tbaa !83
  store i64 %32, ptr %6, align 8, !tbaa !83
  %33 = load i64, ptr %15, align 8, !tbaa !89
  store i64 %33, ptr %7, align 8, !tbaa !89
  %34 = load ptr, ptr %21, align 8, !tbaa !91
  store ptr %34, ptr %8, align 8, !tbaa !91
  store ptr %27, ptr %5, align 8, !tbaa !52
  store i64 %28, ptr %14, align 8, !tbaa !83
  store i64 %29, ptr %15, align 8, !tbaa !89
  store ptr %30, ptr %21, align 8, !tbaa !91
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !98

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !58
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !89
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !91
  %50 = load ptr, ptr %5, align 8, !tbaa !52
  %51 = load ptr, ptr %50, align 8, !tbaa !58
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !99

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !58
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !100
  store ptr %65, ptr %8, align 8, !tbaa !91
  store i64 %3, ptr %7, align 8, !tbaa !89
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !102

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !83
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !89
  br i1 %18, label %21, label %39, !prof !103

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !104

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !105

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !91
  %28 = load i64, ptr %12, align 8, !tbaa !83
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !78
  store i16 %34, ptr %32, align 2, !tbaa !78
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !106, !llvm.loop !107

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !108

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !52
  store ptr %42, ptr %5, align 8, !tbaa !52
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !83
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !89
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !58
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !109
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !91
  %51 = load i64, ptr %43, align 8, !tbaa !83
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !91
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !110

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !91
  %56 = load i64, ptr %43, align 8, !tbaa !83
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !110

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !91
  %60 = load i64, ptr %43, align 8, !tbaa !83
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !91
  %63 = load i64, ptr %12, align 8, !tbaa !83
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !110

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !52
  %67 = load i64, ptr %12, align 8, !tbaa !83
  %68 = load i64, ptr %19, align 8, !tbaa !89
  %69 = load ptr, ptr %15, align 8, !tbaa !91
  %70 = load ptr, ptr %5, align 8, !tbaa !52
  store ptr %70, ptr %0, align 8, !tbaa !52
  %71 = load i64, ptr %43, align 8, !tbaa !83
  store i64 %71, ptr %12, align 8, !tbaa !83
  %72 = load i64, ptr %44, align 8, !tbaa !89
  store i64 %72, ptr %19, align 8, !tbaa !89
  %73 = load ptr, ptr %50, align 8, !tbaa !91
  store ptr %73, ptr %15, align 8, !tbaa !91
  store ptr %66, ptr %5, align 8, !tbaa !52
  store i64 %67, ptr %43, align 8, !tbaa !83
  store i64 %68, ptr %44, align 8, !tbaa !89
  store ptr %69, ptr %50, align 8, !tbaa !91
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !111

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !58
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !112

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !89
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !91
  %89 = load ptr, ptr %5, align 8, !tbaa !52
  %90 = load ptr, ptr %89, align 8, !tbaa !58
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !113

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !114

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !114

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !115, !llvm.loop !116

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !117, !llvm.loop !118

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !119
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
  br i1 %123, label %124, label %120, !llvm.loop !120

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
  store i64 %36, ptr %12, align 8, !tbaa !83
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !96

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !83
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !89
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !122
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !91
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  %20 = load i64, ptr %5, align 8, !tbaa !83
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !98

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !52
  %24 = load i64, ptr %10, align 8, !tbaa !83
  %25 = load i64, ptr %11, align 8, !tbaa !89
  %26 = load ptr, ptr %17, align 8, !tbaa !91
  store ptr %4, ptr %3, align 8, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !89
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !91
  %33 = load ptr, ptr %3, align 8, !tbaa !52
  %34 = load ptr, ptr %33, align 8, !tbaa !58
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !99

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !58
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !123
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !52
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !89
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !91
  store ptr %53, ptr %0, align 8, !tbaa !52
  store i64 %52, ptr %5, align 8, !tbaa !83
  store i64 %51, ptr %55, align 8, !tbaa !89
  store ptr %50, ptr %57, align 8, !tbaa !91
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !124

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !58
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !125

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC2ERNS_17XalanOutputStreamEb, ptr @_ZN11xalanc_1_1011PrintWriterC2EbRN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC2ERNS_17XalanOutputStreamEb, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter6createERNS_17XalanOutputStreamEb, ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC2ERNS_17XalanOutputStreamEb, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD2Ev, ptr @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD2Ev, ptr @_ZN11xalanc_1_1011PrintWriterD2Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5flushEv, ptr @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1028XalanOutputStreamPrintWriter5writeEPKtjj, ptr @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj, i64 122390}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 1}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !54, i64 0, !57, i64 8, !57, i64 16, !54, i64 24}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"long", !55, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !56, i64 0}
!60 = !{!54, !54, i64 0}
!61 = !{!"branch_weights", i32 1, i32 0}
!62 = !{!63, !66, i64 72}
!63 = !{!"_ZTSN11xalanc_1_1028XalanOutputStreamPrintWriterE", !64, i64 0, !54, i64 24, !67, i64 32, !66, i64 72}
!64 = !{!"_ZTSN11xalanc_1_1011PrintWriterE", !65, i64 0, !66, i64 8, !54, i64 16}
!65 = !{!"_ZTSN11xalanc_1_106WriterE"}
!66 = !{!"bool", !55, i64 0}
!67 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !53, i64 0, !68, i64 32}
!68 = !{!"int", !55, i64 0}
!69 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!70 = !{!63, !54, i64 24}
!71 = !{!"VP", i32 0, i64 1, i64 -872330375705376676, i64 1}
!72 = !{!"function_entry_count", i64 0}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!"function_entry_count", i64 3}
!76 = !{!"function_entry_count", i64 122390}
!77 = !{!"branch_weights", i32 0, i32 122390}
!78 = !{!79, !79, i64 0}
!79 = !{!"short", !55, i64 0}
!80 = distinct !{!80, !81, !82}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!53, !57, i64 8}
!84 = !{!85, !68, i64 24}
!85 = !{!"_ZTSN11xalanc_1_1017XalanOutputStreamE", !68, i64 8, !54, i64 16, !68, i64 24, !53, i64 32, !67, i64 64, !66, i64 104, !66, i64 105, !86, i64 112}
!86 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !54, i64 0, !57, i64 8, !57, i64 16, !54, i64 24}
!87 = !{!67, !68, i64 32}
!88 = !{!"function_entry_count", i64 42470003}
!89 = !{!53, !57, i64 16}
!90 = !{!"branch_weights", i32 52000, i32 42418003}
!91 = !{!53, !54, i64 24}
!92 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!93 = !{!"function_entry_count", i64 124150652}
!94 = !{!"branch_weights", i32 124150652, i32 0}
!95 = !{!"function_entry_count", i64 22}
!96 = !{!"branch_weights", i32 64551590, i32 18}
!97 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!98 = !{!"branch_weights", i32 18, i32 0}
!99 = !{!"branch_weights", i32 4, i32 64551586}
!100 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!101 = !{!"function_entry_count", i64 155828046}
!102 = !{!"branch_weights", i32 0, i32 155828046}
!103 = !{!"branch_weights", i32 133170777, i32 22657269}
!104 = !{!"branch_weights", i32 20, i32 133170757}
!105 = !{!"branch_weights", i32 1, i32 19024395}
!106 = !{!"branch_weights", i32 19024395, i32 -26420601}
!107 = distinct !{!107, !81, !82}
!108 = !{!"branch_weights", i32 20748786, i32 1908483}
!109 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!110 = !{!"branch_weights", i32 20748786, i32 0}
!111 = !{!"branch_weights", i32 0, i32 20748786}
!112 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!113 = !{!"branch_weights", i32 0, i32 1908483}
!114 = !{!"branch_weights", i32 1, i32 1908482}
!115 = !{!"branch_weights", i32 1908482, i32 49797853}
!116 = distinct !{!116, !81, !82}
!117 = !{!"branch_weights", i32 1908482, i32 1}
!118 = distinct !{!118, !81, !82}
!119 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!120 = distinct !{!120, !81, !82}
!121 = !{!"function_entry_count", i64 64551586}
!122 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!123 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!124 = !{!"branch_weights", i32 42418193, i32 22133393}
!125 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
