; ModuleID = 'specrand/specrand.c'
source_filename = "specrand/specrand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mt = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@mti = internal unnamed_addr global i32 625, align 4
@spec_genrand_int32.mag01 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2567483615], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @spec_srand(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  tail call void @spec_init_genrand(i64 noundef %2) #6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @spec_init_genrand(i64 noundef %0) local_unnamed_addr #1 {
  %2 = and i64 %0, 4294967295
  store i64 %2, ptr @mt, align 16, !tbaa !6
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
  store i64 %11, ptr %10, align 8, !tbaa !6
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 624
  br i1 %13, label %14, label %3, !llvm.loop !10

14:                                               ; preds = %3
  store i32 624, ptr @mti, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @spec_rand() local_unnamed_addr #2 {
  %1 = tail call i64 @spec_genrand_int32() #6
  %2 = uitofp i64 %1 to double
  %3 = fmul double %2, 0x3DF0000000000000
  ret double %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local i64 @spec_genrand_int32() local_unnamed_addr #3 {
  %1 = load i32, ptr @mti, align 4, !tbaa !12
  %2 = icmp sgt i32 %1, 623
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !6
  %7 = add nsw i32 %1, 1
  br label %68

8:                                                ; preds = %0
  %9 = icmp eq i32 %1, 625
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @spec_init_genrand(i64 noundef 5489) #6
  br label %11

11:                                               ; preds = %10, %8
  %12 = load i64, ptr @mt, align 16, !tbaa !6
  br label %15

13:                                               ; preds = %15
  %14 = load i64, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 227), align 8, !tbaa !6
  br label %35

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %12, %11 ], [ %22, %15 ]
  %17 = phi i64 [ 0, %11 ], [ %20, %15 ]
  %18 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %17
  %19 = and i64 %16, 2147483648
  %20 = add nuw nsw i64 %17, 1
  %21 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !6
  %23 = and i64 %22, 2147483646
  %24 = or disjoint i64 %23, %19
  %25 = add nuw nsw i64 %17, 397
  %26 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !6
  %28 = lshr exact i64 %24, 1
  %29 = and i64 %22, 1
  %30 = getelementptr inbounds [2 x i64], ptr @spec_genrand_int32.mag01, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !6
  %32 = xor i64 %31, %27
  %33 = xor i64 %32, %28
  store i64 %33, ptr %18, align 8, !tbaa !6
  %34 = icmp eq i64 %20, 227
  br i1 %34, label %13, label %15, !llvm.loop !14

35:                                               ; preds = %13, %35
  %36 = phi i64 [ %14, %13 ], [ %42, %35 ]
  %37 = phi i64 [ 227, %13 ], [ %40, %35 ]
  %38 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %37
  %39 = and i64 %36, 2147483648
  %40 = add nuw nsw i64 %37, 1
  %41 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !6
  %43 = and i64 %42, 2147483646
  %44 = or disjoint i64 %43, %39
  %45 = add nsw i64 %37, -227
  %46 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !6
  %48 = lshr exact i64 %44, 1
  %49 = and i64 %42, 1
  %50 = getelementptr inbounds [2 x i64], ptr @spec_genrand_int32.mag01, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !6
  %52 = xor i64 %51, %47
  %53 = xor i64 %52, %48
  store i64 %53, ptr %38, align 8, !tbaa !6
  %54 = icmp eq i64 %40, 623
  br i1 %54, label %55, label %35, !llvm.loop !15

55:                                               ; preds = %35
  %56 = load i64, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 623), align 8, !tbaa !6
  %57 = and i64 %56, 2147483648
  %58 = load i64, ptr @mt, align 16, !tbaa !6
  %59 = and i64 %58, 2147483646
  %60 = or disjoint i64 %59, %57
  %61 = load i64, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 396), align 16, !tbaa !6
  %62 = lshr exact i64 %60, 1
  %63 = and i64 %58, 1
  %64 = getelementptr inbounds [2 x i64], ptr @spec_genrand_int32.mag01, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !6
  %66 = xor i64 %65, %61
  %67 = xor i64 %66, %62
  store i64 %67, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 623), align 8, !tbaa !6
  br label %68

68:                                               ; preds = %3, %55
  %69 = phi i64 [ %58, %55 ], [ %6, %3 ]
  %70 = phi i32 [ 1, %55 ], [ %7, %3 ]
  store i32 %70, ptr @mti, align 4, !tbaa !12
  %71 = lshr i64 %69, 11
  %72 = xor i64 %71, %69
  %73 = shl i64 %72, 7
  %74 = and i64 %73, 2636928640
  %75 = xor i64 %74, %72
  %76 = shl i64 %75, 15
  %77 = and i64 %76, 4022730752
  %78 = xor i64 %77, %75
  %79 = lshr i64 %78, 18
  %80 = xor i64 %79, %78
  ret i64 %80
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @spec_lrand48() local_unnamed_addr #2 {
  %1 = tail call i64 @spec_genrand_int32() #6
  %2 = lshr i64 %1, 1
  ret i64 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @spec_init_by_array(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  tail call void @spec_init_genrand(i64 noundef 19650218) #6
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 624)
  br label %4

4:                                                ; preds = %2, %30
  %5 = phi i32 [ %3, %2 ], [ %34, %30 ]
  %6 = phi i32 [ 0, %2 ], [ %33, %30 ]
  %7 = phi i32 [ 1, %2 ], [ %31, %30 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !6
  %11 = add nsw i32 %7, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !6
  %15 = lshr i64 %14, 30
  %16 = xor i64 %15, %14
  %17 = mul i64 %16, 1664525
  %18 = xor i64 %17, %10
  %19 = sext i32 %6 to i64
  %20 = getelementptr inbounds i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !6
  %22 = add i64 %21, %19
  %23 = add i64 %22, %18
  %24 = and i64 %23, 4294967295
  store i64 %24, ptr %9, align 8, !tbaa !6
  %25 = add nsw i32 %7, 1
  %26 = add nsw i32 %6, 1
  %27 = icmp sgt i32 %7, 622
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i64, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 623), align 8, !tbaa !6
  store i64 %29, ptr @mt, align 16, !tbaa !6
  br label %30

30:                                               ; preds = %28, %4
  %31 = phi i32 [ 1, %28 ], [ %25, %4 ]
  %32 = icmp slt i32 %26, %1
  %33 = select i1 %32, i32 %26, i32 0
  %34 = add nsw i32 %5, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %4, !llvm.loop !16

36:                                               ; preds = %30, %56
  %37 = phi i32 [ %58, %56 ], [ 623, %30 ]
  %38 = phi i32 [ %57, %56 ], [ %31, %30 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !6
  %42 = add nsw i32 %38, -1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [624 x i64], ptr @mt, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !6
  %46 = lshr i64 %45, 30
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, 1566083941
  %49 = xor i64 %48, %41
  %50 = sub i64 %49, %39
  %51 = and i64 %50, 4294967295
  store i64 %51, ptr %40, align 8, !tbaa !6
  %52 = add nsw i32 %38, 1
  %53 = icmp sgt i32 %38, 622
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i64, ptr getelementptr inbounds ([624 x i64], ptr @mt, i64 0, i64 623), align 8, !tbaa !6
  store i64 %55, ptr @mt, align 16, !tbaa !6
  br label %56

56:                                               ; preds = %36, %54
  %57 = phi i32 [ 1, %54 ], [ %52, %36 ]
  %58 = add nsw i32 %37, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %36, !llvm.loop !17

60:                                               ; preds = %56
  store i64 2147483648, ptr @mt, align 16, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @spec_genrand_int31() local_unnamed_addr #2 {
  %1 = tail call i64 @spec_genrand_int32() #6
  %2 = lshr i64 %1, 1
  ret i64 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @spec_genrand_real1() local_unnamed_addr #2 {
  %1 = tail call i64 @spec_genrand_int32() #6
  %2 = uitofp i64 %1 to double
  %3 = fmul double %2, 0x3DF0000000100000
  ret double %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @spec_genrand_real2() local_unnamed_addr #2 {
  %1 = tail call i64 @spec_genrand_int32() #6
  %2 = uitofp i64 %1 to double
  %3 = fmul double %2, 0x3DF0000000000000
  ret double %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @spec_genrand_real3() local_unnamed_addr #2 {
  %1 = tail call i64 @spec_genrand_int32() #6
  %2 = uitofp i64 %1 to double
  %3 = fadd double %2, 5.000000e-01
  %4 = fmul double %3, 0x3DF0000000000000
  ret double %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @spec_genrand_res53() local_unnamed_addr #2 {
  %1 = tail call i64 @spec_genrand_int32() #6
  %2 = lshr i64 %1, 5
  %3 = tail call i64 @spec_genrand_int32() #6
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

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
