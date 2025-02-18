; ModuleID = 'specrand/specrand.c'
source_filename = "specrand/specrand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mt = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@mti = internal unnamed_addr global i32 625, align 4
@spec_genrand_int32.mag01 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2567483615], align 16

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @spec_srand(i32 noundef %0) local_unnamed_addr #0 !prof !37 {
  %2 = sext i32 %0 to i64
  tail call void @spec_init_genrand(i64 noundef %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @spec_init_genrand(i64 noundef %0) local_unnamed_addr #1 !prof !38 {
  %2 = and i64 %0, 4294967295
  store i64 %2, ptr @mt, align 16, !tbaa !39
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ %2, %1 ], [ %11, %3 ]
  %5 = phi i64 [ 1, %1 ], [ %12, %3 ]
  %6 = lshr i64 %4, 30
  %7 = xor i64 %6, %4
  %8 = mul nuw nsw i64 %7, 1812433253
  %9 = add nuw i64 %8, %5
  %10 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %5
  %11 = and i64 %9, 4294967295
  store i64 %11, ptr %10, align 8, !tbaa !39
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 624
  br i1 %13, label %14, label %3, !prof !43, !llvm.loop !44

14:                                               ; preds = %3
  store i32 624, ptr @mti, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @spec_rand() local_unnamed_addr #2 !prof !49 {
  %1 = tail call i64 @spec_genrand_int32()
  %2 = uitofp i64 %1 to double
  %3 = fmul double %2, 0x3DF0000000000000
  ret double %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @spec_genrand_int32() local_unnamed_addr #1 !prof !49 {
  %1 = load i32, ptr @mti, align 4, !tbaa !47
  %2 = icmp sgt i32 %1, 623
  br i1 %2, label %3, label %72, !prof !50

3:                                                ; preds = %0
  %4 = icmp eq i32 %1, 625
  br i1 %4, label %5, label %18, !prof !51

5:                                                ; preds = %3
  store i64 5489, ptr @mt, align 16, !tbaa !39
  br label %6

6:                                                ; preds = %5, %6
  %7 = phi i64 [ 5489, %5 ], [ %14, %6 ]
  %8 = phi i64 [ 1, %5 ], [ %15, %6 ]
  %9 = lshr i64 %7, 30
  %10 = xor i64 %9, %7
  %11 = mul nuw nsw i64 %10, 1812433253
  %12 = add nuw i64 %11, %8
  %13 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %8
  %14 = and i64 %12, 4294967295
  store i64 %14, ptr %13, align 8, !tbaa !39
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, 624
  br i1 %16, label %17, label %6, !llvm.loop !44

17:                                               ; preds = %6
  store i32 624, ptr @mti, align 4, !tbaa !47
  br label %18

18:                                               ; preds = %17, %3
  br label %19

19:                                               ; preds = %18, %19
  %20 = phi i64 [ %24, %19 ], [ 0, %18 ]
  %21 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !39
  %23 = and i64 %22, 2147483648
  %24 = add nuw nsw i64 %20, 1
  %25 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !39
  %27 = and i64 %26, 2147483646
  %28 = or disjoint i64 %27, %23
  %29 = add nuw nsw i64 %20, 397
  %30 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !39
  %32 = lshr exact i64 %28, 1
  %33 = and i64 %26, 1
  %34 = getelementptr inbounds [2 x i64], ptr @spec_genrand_int32.mag01, i64 0, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !39
  %36 = xor i64 %35, %31
  %37 = xor i64 %36, %32
  store i64 %37, ptr %21, align 8, !tbaa !39
  %38 = icmp eq i64 %24, 227
  br i1 %38, label %39, label %19, !prof !52, !llvm.loop !53

39:                                               ; preds = %19, %39
  %40 = phi i64 [ %44, %39 ], [ 227, %19 ]
  %41 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !39
  %43 = and i64 %42, 2147483648
  %44 = add nuw nsw i64 %40, 1
  %45 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !39
  %47 = and i64 %46, 2147483646
  %48 = or disjoint i64 %47, %43
  %49 = add nsw i64 %40, -227
  %50 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !39
  %52 = lshr exact i64 %48, 1
  %53 = and i64 %46, 1
  %54 = getelementptr inbounds [2 x i64], ptr @spec_genrand_int32.mag01, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !39
  %56 = xor i64 %55, %51
  %57 = xor i64 %56, %52
  store i64 %57, ptr %41, align 8, !tbaa !39
  %58 = icmp eq i64 %44, 623
  br i1 %58, label %59, label %39, !prof !54, !llvm.loop !55

59:                                               ; preds = %39
  %60 = load i64, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 623), align 8, !tbaa !39
  %61 = and i64 %60, 2147483648
  %62 = load i64, ptr @mt, align 16, !tbaa !39
  %63 = and i64 %62, 2147483646
  %64 = or disjoint i64 %63, %61
  %65 = load i64, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 396), align 16, !tbaa !39
  %66 = lshr exact i64 %64, 1
  %67 = and i64 %62, 1
  %68 = getelementptr inbounds [2 x i64], ptr @spec_genrand_int32.mag01, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !39
  %70 = xor i64 %69, %65
  %71 = xor i64 %70, %66
  store i64 %71, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 623), align 8, !tbaa !39
  store i32 0, ptr @mti, align 4, !tbaa !47
  br label %72

72:                                               ; preds = %59, %0
  %73 = load i32, ptr @mti, align 4, !tbaa !47
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr @mti, align 4, !tbaa !47
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !39
  %78 = lshr i64 %77, 11
  %79 = xor i64 %78, %77
  %80 = shl i64 %79, 7
  %81 = and i64 %80, 2636928640
  %82 = xor i64 %81, %79
  %83 = shl i64 %82, 15
  %84 = and i64 %83, 4022730752
  %85 = xor i64 %84, %82
  %86 = lshr i64 %85, 18
  %87 = xor i64 %86, %85
  ret i64 %87
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @spec_lrand48() local_unnamed_addr #0 !prof !37 {
  %1 = tail call i64 @spec_genrand_int32()
  %2 = lshr i64 %1, 1
  ret i64 %2
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @spec_init_by_array(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !37 {
  store i64 19650218, ptr @mt, align 16, !tbaa !39
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 19650218, %2 ], [ %11, %3 ]
  %5 = phi i64 [ 1, %2 ], [ %12, %3 ]
  %6 = lshr i64 %4, 30
  %7 = xor i64 %6, %4
  %8 = mul nuw nsw i64 %7, 1812433253
  %9 = add nuw i64 %8, %5
  %10 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %5
  %11 = and i64 %9, 4294967295
  store i64 %11, ptr %10, align 8, !tbaa !39
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 624
  br i1 %13, label %14, label %3, !llvm.loop !44

14:                                               ; preds = %3
  store i32 624, ptr @mti, align 4, !tbaa !47
  %15 = tail call i32 @llvm.smax.i32(i32 %1, i32 624)
  br label %16

16:                                               ; preds = %14, %42
  %17 = phi i32 [ %15, %14 ], [ %46, %42 ]
  %18 = phi i32 [ 0, %14 ], [ %45, %42 ]
  %19 = phi i32 [ 1, %14 ], [ %43, %42 ]
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !39
  %23 = add nsw i32 %19, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !39
  %27 = lshr i64 %26, 30
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1664525
  %30 = xor i64 %29, %22
  %31 = sext i32 %18 to i64
  %32 = getelementptr inbounds i64, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !39
  %34 = add i64 %33, %31
  %35 = add i64 %34, %30
  %36 = and i64 %35, 4294967295
  store i64 %36, ptr %21, align 8, !tbaa !39
  %37 = add nsw i32 %19, 1
  %38 = add nsw i32 %18, 1
  %39 = icmp sgt i32 %19, 622
  br i1 %39, label %40, label %42

40:                                               ; preds = %16
  %41 = load i64, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 623), align 8, !tbaa !39
  store i64 %41, ptr @mt, align 16, !tbaa !39
  br label %42

42:                                               ; preds = %40, %16
  %43 = phi i32 [ 1, %40 ], [ %37, %16 ]
  %44 = icmp slt i32 %38, %1
  %45 = select i1 %44, i32 %38, i32 0
  %46 = add nsw i32 %17, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %16, !llvm.loop !56

48:                                               ; preds = %42, %68
  %49 = phi i32 [ %70, %68 ], [ 623, %42 ]
  %50 = phi i32 [ %69, %68 ], [ %43, %42 ]
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !39
  %54 = add nsw i32 %50, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !39
  %58 = lshr i64 %57, 30
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1566083941
  %61 = xor i64 %60, %53
  %62 = sub i64 %61, %51
  %63 = and i64 %62, 4294967295
  store i64 %63, ptr %52, align 8, !tbaa !39
  %64 = add nsw i32 %50, 1
  %65 = icmp sgt i32 %50, 622
  br i1 %65, label %66, label %68

66:                                               ; preds = %48
  %67 = load i64, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 623), align 8, !tbaa !39
  store i64 %67, ptr @mt, align 16, !tbaa !39
  br label %68

68:                                               ; preds = %48, %66
  %69 = phi i32 [ 1, %66 ], [ %64, %48 ]
  %70 = add nsw i32 %49, -1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %48, !llvm.loop !57

72:                                               ; preds = %68
  store i64 2147483648, ptr @mt, align 16, !tbaa !39
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @spec_genrand_int31() local_unnamed_addr #0 !prof !37 {
  %1 = tail call i64 @spec_genrand_int32()
  %2 = lshr i64 %1, 1
  ret i64 %2
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @spec_genrand_real1() local_unnamed_addr #0 !prof !37 {
  %1 = tail call i64 @spec_genrand_int32()
  %2 = uitofp i64 %1 to double
  %3 = fmul double %2, 0x3DF0000000100000
  ret double %3
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @spec_genrand_real2() local_unnamed_addr #0 !prof !37 {
  %1 = tail call i64 @spec_genrand_int32()
  %2 = uitofp i64 %1 to double
  %3 = fmul double %2, 0x3DF0000000000000
  ret double %3
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @spec_genrand_real3() local_unnamed_addr #0 !prof !37 {
  %1 = tail call i64 @spec_genrand_int32()
  %2 = uitofp i64 %1 to double
  %3 = fadd double %2, 5.000000e-01
  %4 = fmul double %3, 0x3DF0000000000000
  ret double %4
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @spec_genrand_res53() local_unnamed_addr #0 !prof !37 {
  %1 = tail call i64 @spec_genrand_int32()
  %2 = lshr i64 %1, 5
  %3 = tail call i64 @spec_genrand_int32()
  %4 = lshr i64 %3, 6
  %5 = uitofp i64 %2 to double
  %6 = uitofp i64 %4 to double
  %7 = tail call double @llvm.fmuladd.f64(double %5, double 0x4190000000000000, double %6)
  %8 = fmul double %7, 0x3CA0000000000000
  ret double %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @spec_rand, ptr @spec_genrand_int32, i64 543034}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"branch_weights", i32 1, i32 622}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !41, i64 0}
!49 = !{!"function_entry_count", i64 543034}
!50 = !{!"branch_weights", i32 871, i32 542163}
!51 = !{!"branch_weights", i32 0, i32 871}
!52 = !{!"branch_weights", i32 871, i32 196846}
!53 = distinct !{!53, !45, !46}
!54 = !{!"branch_weights", i32 870, i32 344046}
!55 = distinct !{!55, !45, !46}
!56 = distinct !{!56, !45, !46}
!57 = distinct !{!57, !45, !46}
