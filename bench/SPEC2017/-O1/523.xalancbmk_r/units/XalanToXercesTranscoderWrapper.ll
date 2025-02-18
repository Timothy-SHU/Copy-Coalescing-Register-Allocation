; ModuleID = 'XalanToXercesTranscoderWrapper.cpp'
source_filename = "XalanToXercesTranscoderWrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanToXercesTranscoderWrapper" = type { %"class.xalanc_1_10::XalanOutputTranscoder", ptr }
%"class.xalanc_1_10::XalanOutputTranscoder" = type { ptr, ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1030XalanToXercesTranscoderWrapperE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XalanToXercesTranscoderWrapperE, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD2Ev, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD0Ev, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper9transcodeEPKtjPhjRjS4_, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper9transcodeEPKhjPtjRjS4_Ph, ptr @_ZNK11xalanc_1_1030XalanToXercesTranscoderWrapper14canTranscodeToEj] }, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1030XalanToXercesTranscoderWrapperE = dso_local constant [48 x i8] c"N11xalanc_1_1030XalanToXercesTranscoderWrapperE\00", align 1
@_ZTIN11xalanc_1_1021XalanOutputTranscoderE = external constant ptr
@_ZTIN11xalanc_1_1030XalanToXercesTranscoderWrapperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XalanToXercesTranscoderWrapperE, ptr @_ZTIN11xalanc_1_1021XalanOutputTranscoderE }, align 8

@_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperC1ERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperC2ERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE
@_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperC2ERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1021XalanOutputTranscoderC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanToXercesTranscoderWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !42
  ret void
}

declare void @_ZN11xalanc_1_1021XalanOutputTranscoderC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %3 = load ptr, ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 24), !prof !48
  invoke void @_ZN11xalanc_1_1021XalanOutputTranscoderC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %7 unwind label %9, !prof !49

7:                                                ; preds = %2
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanToXercesTranscoderWrapperE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %6, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !42
  ret ptr %6

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = icmp eq ptr %6, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %6)
          to label %19 unwind label %16

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #8
  unreachable

19:                                               ; preds = %9, %12
  resume { ptr, i32 } %10
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !47 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanToXercesTranscoderWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !50

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %3) #9, !prof !51
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanToXercesTranscoderWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  br label %9

9:                                                ; preds = %1, %5
  tail call void @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper9transcodeEPKtjPhjRjS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %6) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 1)
          to label %14 unwind label %15, !prof !53

14:                                               ; preds = %7
  store i32 %13, ptr %6, align 4, !tbaa !54
  br label %23

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %17 = extractvalue { ptr, i32 } %16, 1
  %18 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #9
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = extractvalue { ptr, i32 } %16, 0
  %22 = tail call ptr @__cxa_begin_catch(ptr %21) #9
  store i32 0, ptr %5, align 4, !tbaa !54
  store i32 0, ptr %6, align 4, !tbaa !54
  tail call void @__cxa_end_catch()
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ 0, %14 ], [ 2, %20 ]
  ret i32 %24

25:                                               ; preds = %15
  resume { ptr, i32 } %16
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper9transcodeEPKhjPtjRjS4_Ph(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %6, ptr noundef %7) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef %7)
          to label %15 unwind label %16

15:                                               ; preds = %8
  store i32 %14, ptr %6, align 4, !tbaa !54
  br label %24

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %18 = extractvalue { ptr, i32 } %17, 1
  %19 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #9
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = extractvalue { ptr, i32 } %17, 0
  %23 = tail call ptr @__cxa_begin_catch(ptr %22) #9
  store i32 0, ptr %5, align 4, !tbaa !54
  store i32 0, ptr %6, align 4, !tbaa !54
  tail call void @__cxa_end_catch()
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ 0, %15 ], [ 2, %21 ]
  ret i32 %25

26:                                               ; preds = %16
  resume { ptr, i32 } %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XalanToXercesTranscoderWrapper14canTranscodeToEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %1)
  ret i1 %8
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !38 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE, ptr @_ZN11xalanc_1_1021XalanOutputTranscoderC2ERN11xercesc_2_713MemoryManagerE, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD2Ev, ptr @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !45, i64 16}
!43 = !{!"_ZTSN11xalanc_1_1030XalanToXercesTranscoderWrapperE", !44, i64 0, !45, i64 16}
!44 = !{!"_ZTSN11xalanc_1_1021XalanOutputTranscoderE", !45, i64 8}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"function_entry_count", i64 2}
!48 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!49 = !{!"branch_weights", i32 2, i32 0}
!50 = !{!"branch_weights", i32 0, i32 2}
!51 = !{!"VP", i32 0, i64 2, i64 5173589852935072985, i64 2}
!52 = !{!"function_entry_count", i64 122390}
!53 = !{!"VP", i32 0, i64 122390, i64 -2878617037566388596, i64 122390}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !46, i64 0}
