; ModuleID = 'simulator/speedometer.cc'
source_filename = "simulator/speedometer.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.Speedometer = type { i8, i64, %class.SimTime, %class.SimTime, %struct.timeval, double, double, double }
%class.SimTime = type { i64 }
%struct.timeval = type { i64, i64 }

$_ZN7SimTimeaSEd = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN7SimTime9invfscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_speedometer.cc, ptr null }]

@_ZN11SpeedometerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11SpeedometerC2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11SpeedometerC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 !prof !38 {
  %2 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 2
  store i8 0, ptr %0, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11Speedometer5startE7SimTime(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 align 2 !prof !38 {
  %3 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 1
  store i64 0, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = load i64, ptr %1, align 8, !tbaa !49
  store i64 %6, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11Speedometer8addEventE7SimTime(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 align 2 !prof !50 {
  %3 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !48
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !48
  %6 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %1, align 8, !tbaa !49
  store i64 %7, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN11Speedometer27getMillisSinceIntervalStartEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(72) %0) local_unnamed_addr #6 align 2 !prof !51 {
  ret i64 0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11Speedometer16beginNewIntervalEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #7 align 2 !prof !52 {
  %2 = alloca %class.SimTime, align 8
  %3 = alloca %class.SimTime, align 8
  %4 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 4, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !54
  %8 = sub nsw i64 0, %7
  %9 = icmp sgt i64 %7, 0
  %10 = sub i64 1000000, %7
  %11 = ashr i64 %8, 63
  %12 = sub i64 %11, %5
  %13 = select i1 %9, i64 %10, i64 %8, !prof !55
  %14 = mul nsw i64 %12, 1000
  %15 = sdiv i64 %13, 1000
  %16 = add nsw i64 %14, %15
  %17 = icmp ult i64 %16, 10
  br i1 %17, label %22, label %18, !prof !56

18:                                               ; preds = %1
  %19 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !48
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %1
  %23 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  br label %61

24:                                               ; preds = %18
  %25 = uitofp i64 %16 to double
  %26 = fdiv double %25, 1.000000e+03
  %27 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 2
  %28 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14, !noalias !57
  %29 = load i64, ptr %27, align 8, !tbaa !49, !noalias !57
  store i64 %29, ptr %2, align 8, !tbaa !49, !noalias !57
  %30 = load i64, ptr %28, align 8, !tbaa !49, !noalias !57
  %31 = xor i64 %30, %29
  %32 = icmp slt i64 %31, 0
  %33 = sub nsw i64 %29, %30
  store i64 %33, ptr %2, align 8, !tbaa !49, !noalias !57
  %34 = xor i64 %33, %30
  %35 = icmp sgt i64 %34, -1
  %36 = select i1 %32, i1 %35, i1 false
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  call void @_ZN7SimTime19overflowSubtractingERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %28), !noalias !57
  br label %38

38:                                               ; preds = %24, %37
  %39 = load i64, ptr %2, align 8, !tbaa !49, !noalias !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14, !noalias !57
  %40 = load i64, ptr %19, align 8, !tbaa !48
  %41 = sitofp i64 %40 to double
  %42 = fdiv double %41, %26
  %43 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 5
  store double %42, ptr %43, align 8, !tbaa !60
  %44 = sitofp i64 %39 to double
  %45 = load double, ptr @_ZN7SimTime9invfscaleE, align 8, !tbaa !61
  %46 = fmul double %45, %44
  %47 = fdiv double %46, %26
  %48 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 7
  store double %47, ptr %48, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
  %50 = load i64, ptr %3, align 8, !tbaa !49
  %51 = icmp eq i64 %39, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %38
  %53 = load i64, ptr %19, align 8, !tbaa !48
  %54 = sitofp i64 %53 to double
  %55 = load double, ptr @_ZN7SimTime9invfscaleE, align 8, !tbaa !61
  %56 = fmul double %55, %44
  %57 = fdiv double %54, %56
  br label %58

58:                                               ; preds = %38, %52
  %59 = phi double [ %57, %52 ], [ 0.000000e+00, %38 ]
  %60 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 6
  store double %59, ptr %60, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %61

61:                                               ; preds = %58, %22
  %62 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 1
  store i64 0, ptr %62, align 8, !tbaa !48
  %63 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 2
  %64 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %65 = load i64, ptr %63, align 8, !tbaa !49
  store i64 %65, ptr %64, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN11Speedometer15getEventsPerSecEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #9 align 2 !prof !52 {
  %2 = load i8, ptr %0, align 8, !tbaa !39, !range !64, !noundef !65
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 5
  %5 = load double, ptr %4, align 8
  %6 = select i1 %3, double 0.000000e+00, double %5, !prof !55
  ret double %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN11Speedometer18getEventsPerSimSecEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #9 align 2 !prof !51 {
  %2 = load i8, ptr %0, align 8, !tbaa !39, !range !64, !noundef !65
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 6
  %5 = load double, ptr %4, align 8
  %6 = select i1 %3, double 0.000000e+00, double %5
  ret double %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN11Speedometer15getSimSecPerSecEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #9 align 2 !prof !51 {
  %2 = load i8, ptr %0, align 8, !tbaa !39, !range !64, !noundef !65
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 7
  %5 = load double, ptr %4, align 8
  %6 = select i1 %3, double 0.000000e+00, double %5
  ret double %6
}

declare void @_ZN7SimTime19overflowSubtractingERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #10 comdat align 2 !prof !66 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !67
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !69

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1)
  br label %6

6:                                                ; preds = %2, %5
  %7 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !61
  %8 = fmul double %7, %1
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43DFFFFFFFFFEDC8
  br i1 %10, label %11, label %12, !prof !69

11:                                               ; preds = %6
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %8)
  br label %12

12:                                               ; preds = %6, %11
  %13 = fptosi double %8 to i64
  store i64 %13, ptr %0, align 8, !tbaa !49
  ret ptr %0
}

declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_speedometer.cc() #12 section ".text.startup" !prof !38 !PGOFuncName !70 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #14
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_GLOBAL__sub_I_speedometer.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_speedometer.cc, ptr @__cxa_atexit, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTS11Speedometer", !41, i64 0, !44, i64 8, !45, i64 16, !45, i64 24, !46, i64 32, !47, i64 48, !47, i64 56, !47, i64 64}
!41 = !{!"bool", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"long", !42, i64 0}
!45 = !{!"_ZTS7SimTime", !44, i64 0}
!46 = !{!"_ZTS7timeval", !44, i64 0, !44, i64 8}
!47 = !{!"double", !42, i64 0}
!48 = !{!40, !44, i64 8}
!49 = !{!45, !44, i64 0}
!50 = !{!"function_entry_count", i64 467312602}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!"function_entry_count", i64 2}
!53 = !{!46, !44, i64 0}
!54 = !{!46, !44, i64 8}
!55 = !{!"branch_weights", i32 0, i32 2}
!56 = !{!"branch_weights", i32 2, i32 0}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZmiRK7SimTimeS1_: argument 0"}
!59 = distinct !{!59, !"_ZmiRK7SimTimeS1_"}
!60 = !{!40, !47, i64 48}
!61 = !{!47, !47, i64 0}
!62 = !{!40, !47, i64 64}
!63 = !{!40, !47, i64 56}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!"function_entry_count", i64 980215783}
!67 = !{!68, !68, i64 0}
!68 = !{!"int", !42, i64 0}
!69 = !{!"branch_weights", i32 0, i32 980215783}
!70 = !{!"simulator/speedometer.cc;_GLOBAL__sub_I_speedometer.cc"}
