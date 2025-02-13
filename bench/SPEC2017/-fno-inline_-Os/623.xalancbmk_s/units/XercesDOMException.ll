; ModuleID = 'XercesDOMException.cpp'
source_filename = "XercesDOMException.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMException" = type <{ ptr, i32, [4 x i8], ptr, ptr, i8, [7 x i8] }>

@_ZTVN11xalanc_1_1018XercesDOMExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1018XercesDOMExceptionE, ptr @_ZN11xalanc_1_1018XercesDOMExceptionD2Ev, ptr @_ZN11xalanc_1_1018XercesDOMExceptionD0Ev, ptr @_ZNK11xalanc_1_1017XalanDOMException16getExceptionCodeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1018XercesDOMExceptionE = dso_local constant [36 x i8] c"N11xalanc_1_1018XercesDOMExceptionE\00", align 1
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTIN11xalanc_1_1018XercesDOMExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1018XercesDOMExceptionE, ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE }, align 8
@switch.table._ZN11xalanc_1_10L18translateErrorCodeIN11xercesc_2_712DOMExceptionEEENS_17XalanDOMException13ExceptionCodeET_ = private unnamed_addr constant [15 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4

@_ZN11xalanc_1_1018XercesDOMExceptionC1ENS_17XalanDOMException13ExceptionCodeE = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN11xalanc_1_1018XercesDOMExceptionC2ENS_17XalanDOMException13ExceptionCodeE
@_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1018XercesDOMExceptionC2ERKN11xercesc_2_712DOMExceptionE
@_ZN11xalanc_1_1018XercesDOMExceptionC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1018XercesDOMExceptionC2ERKS0_
@_ZN11xalanc_1_1018XercesDOMExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018XercesDOMExceptionD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XercesDOMExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1018XercesDOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #6
  tail call void @_ZdlPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1017XalanDOMException16getExceptionCodeEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XercesDOMExceptionC2ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !35 {
  tail call void @_ZN11xalanc_1_1017XalanDOMExceptionC2ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1) #8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1018XercesDOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC2ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XercesDOMExceptionC2ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMException", align 8
  call void @_ZN11xercesc_2_712DOMExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(33) %3, ptr noundef nonnull align 8 dereferenceable(33) %1) #8
  %4 = call fastcc noundef i32 @_ZN11xalanc_1_10L18translateErrorCodeIN11xercesc_2_712DOMExceptionEEENS_17XalanDOMException13ExceptionCodeET_(ptr noundef nonnull %3) #8, !range !39
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC2ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %4) #8
          to label %5 unwind label %6

5:                                                ; preds = %2
  call void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33) %3) #6
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1018XercesDOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33) %3) #6
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZN11xalanc_1_10L18translateErrorCodeIN11xercesc_2_712DOMExceptionEEENS_17XalanDOMException13ExceptionCodeET_(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !35 !PGOFuncName !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 15
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [15 x i32], ptr @switch.table._ZN11xalanc_1_10L18translateErrorCodeIN11xercesc_2_712DOMExceptionEEENS_17XalanDOMException13ExceptionCodeET_, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 201, %1 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XercesDOMExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #3 align 2 !prof !35 {
  tail call void @_ZN11xalanc_1_1017XalanDOMExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1018XercesDOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XercesDOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xalanc_1_1017XalanDOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { builtin nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{i32 1, i32 202}
!40 = !{!"XercesDOMException.cpp:_ZN11xalanc_1_10L18translateErrorCodeIN11xercesc_2_712DOMExceptionEEENS_17XalanDOMException13ExceptionCodeET_"}
!41 = !{!42, !43, i64 8}
!42 = !{!"_ZTSN11xercesc_2_712DOMExceptionE", !43, i64 8, !45, i64 16, !45, i64 24, !46, i64 32}
!43 = !{!"_ZTSN11xercesc_2_712DOMException13ExceptionCodeE", !44, i64 0}
!44 = !{!"omnipotent char", !38, i64 0}
!45 = !{!"any pointer", !44, i64 0}
!46 = !{!"bool", !44, i64 0}
