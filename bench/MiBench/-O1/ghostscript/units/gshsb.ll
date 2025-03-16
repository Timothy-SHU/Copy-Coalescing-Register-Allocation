; ModuleID = 'gshsb.c'
source_filename = "gshsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_sethsbcolor(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = fcmp olt double %2, 0.000000e+00
  %6 = fcmp ogt double %2, 1.000000e+00
  %7 = select i1 %6, double 1.000000e+00, double %2
  %8 = select i1 %5, double 0.000000e+00, double %7
  %9 = fcmp olt double %3, 0.000000e+00
  %10 = fcmp ogt double %3, 1.000000e+00
  %11 = select i1 %10, double 1.000000e+00, double %3
  %12 = select i1 %9, double 0.000000e+00, double %11
  %13 = fcmp oeq double %8, 0.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = fptrunc double %12 to float
  br label %65

16:                                               ; preds = %4
  %17 = fcmp olt double %1, 0.000000e+00
  %18 = fcmp ogt double %1, 1.000000e+00
  %19 = select i1 %18, double 1.000000e+00, double %1
  %20 = fmul double %19, 6.000000e+00
  %21 = select i1 %17, double 0.000000e+00, double %20
  %22 = fadd double %12, 0x3EF0010010010010
  %23 = fmul double %22, 3.276000e+04
  %24 = fptosi double %23 to i16
  %25 = sext i16 %24 to i64
  %26 = fadd double %8, 0x3EF0010010010010
  %27 = fmul double %26, 3.276000e+04
  %28 = fptosi double %27 to i16
  %29 = fptosi double %21 to i32
  %30 = sitofp i32 %29 to double
  %31 = fsub double %21, %30
  %32 = fadd double %31, 0x3EF0010010010010
  %33 = fmul double %32, 3.276000e+04
  %34 = fptosi double %33 to i16
  %35 = sext i16 %34 to i64
  %36 = sext i16 %28 to i64
  %37 = sub nsw i64 32760, %36
  %38 = mul nsw i64 %37, %25
  %39 = udiv i64 %38, 32760
  %40 = trunc i64 %39 to i16
  %41 = mul nsw i64 %35, %36
  %42 = udiv i64 %41, 32760
  %43 = sub nsw i64 32760, %42
  %44 = mul i64 %43, %25
  %45 = udiv i64 %44, 32760
  %46 = trunc i64 %45 to i16
  %47 = sub nsw i64 %39, %45
  %48 = trunc i64 %47 to i16
  %49 = add i16 %48, %24
  switch i32 %29, label %55 [
    i32 1, label %50
    i32 2, label %51
    i32 3, label %52
    i32 4, label %53
    i32 5, label %54
  ]

50:                                               ; preds = %16
  br label %55

51:                                               ; preds = %16
  br label %55

52:                                               ; preds = %16
  br label %55

53:                                               ; preds = %16
  br label %55

54:                                               ; preds = %16
  br label %55

55:                                               ; preds = %54, %53, %52, %51, %50, %16
  %56 = phi i16 [ %24, %54 ], [ %49, %53 ], [ %40, %52 ], [ %40, %51 ], [ %46, %50 ], [ %24, %16 ]
  %57 = phi i16 [ %40, %54 ], [ %40, %53 ], [ %46, %52 ], [ %24, %51 ], [ %24, %50 ], [ %49, %16 ]
  %58 = phi i16 [ %46, %54 ], [ %24, %53 ], [ %24, %52 ], [ %49, %51 ], [ %40, %50 ], [ %40, %16 ]
  %59 = sitofp i16 %56 to float
  %60 = fdiv float %59, 3.276000e+04
  %61 = sitofp i16 %57 to float
  %62 = fdiv float %61, 3.276000e+04
  %63 = sitofp i16 %58 to float
  %64 = fdiv float %63, 3.276000e+04
  br label %65

65:                                               ; preds = %14, %55
  %66 = phi float [ %15, %14 ], [ %64, %55 ]
  %67 = phi float [ %15, %14 ], [ %62, %55 ]
  %68 = phi float [ %15, %14 ], [ %60, %55 ]
  %69 = fpext float %68 to double
  %70 = fpext float %67 to double
  %71 = fpext float %66 to double
  %72 = tail call i32 @gs_setrgbcolor(ptr noundef %0, double noundef %69, double noundef %70, double noundef %71) #4
  ret i32 %72
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @gs_setrgbcolor(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_currenthsbcolor(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  %4 = call i32 @gs_currentrgbcolor(ptr noundef %0, ptr noundef nonnull %3) #4
  %5 = load float, ptr %3, align 4, !tbaa !5
  %6 = fpext float %5 to double
  %7 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = fpext float %11 to double
  %13 = fadd double %6, 0x3EF0010010010010
  %14 = fmul double %13, 3.276000e+04
  %15 = fptosi double %14 to i16
  %16 = fadd double %9, 0x3EF0010010010010
  %17 = fmul double %16, 3.276000e+04
  %18 = fptosi double %17 to i16
  %19 = fadd double %12, 0x3EF0010010010010
  %20 = fmul double %19, 3.276000e+04
  %21 = fptosi double %20 to i16
  %22 = sext i16 %15 to i32
  %23 = sext i16 %18 to i32
  %24 = icmp eq i16 %15, %18
  %25 = icmp eq i16 %18, %21
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  store float 0.000000e+00, ptr %1, align 4, !tbaa !5
  %28 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %28, align 4, !tbaa !5
  br label %71

29:                                               ; preds = %2
  %30 = call i16 @llvm.smax.i16(i16 %15, i16 %18)
  %31 = sext i16 %21 to i32
  %32 = call i16 @llvm.smax.i16(i16 %30, i16 %21)
  %33 = call i16 @llvm.smin.i16(i16 %15, i16 %18)
  %34 = call i16 @llvm.smin.i16(i16 %33, i16 %21)
  %35 = sub i16 %32, %34
  %36 = icmp eq i16 %32, %15
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = sub nsw i32 %23, %31
  %39 = mul nsw i32 %38, 32760
  %40 = sext i32 %39 to i64
  %41 = sext i16 %35 to i64
  %42 = sdiv i64 %40, %41
  br label %58

43:                                               ; preds = %29
  %44 = icmp eq i16 %32, %18
  %45 = sext i16 %35 to i64
  br i1 %44, label %46, label %52

46:                                               ; preds = %43
  %47 = sub nsw i32 %31, %22
  %48 = mul nsw i32 %47, 32760
  %49 = sext i32 %48 to i64
  %50 = sdiv i64 %49, %45
  %51 = add nsw i64 %50, 65520
  br label %58

52:                                               ; preds = %43
  %53 = sub nsw i32 %22, %23
  %54 = mul nsw i32 %53, 32760
  %55 = sext i32 %54 to i64
  %56 = sdiv i64 %55, %45
  %57 = add nsw i64 %56, 131040
  br label %58

58:                                               ; preds = %52, %46, %37
  %59 = phi i64 [ %42, %37 ], [ %51, %46 ], [ %57, %52 ]
  %60 = icmp slt i64 %59, 0
  %61 = add nsw i64 %59, 196560
  %62 = select i1 %60, i64 %61, i64 %59
  %63 = sitofp i64 %62 to double
  %64 = fdiv double %63, 1.965600e+05
  %65 = fptrunc double %64 to float
  store float %65, ptr %1, align 4, !tbaa !5
  %66 = sitofp i16 %35 to float
  %67 = sitofp i16 %32 to float
  %68 = fdiv float %66, %67
  %69 = getelementptr inbounds float, ptr %1, i64 1
  store float %68, ptr %69, align 4, !tbaa !5
  %70 = fdiv float %67, 3.276000e+04
  br label %71

71:                                               ; preds = %27, %58
  %72 = phi float [ %5, %27 ], [ %70, %58 ]
  %73 = getelementptr inbounds float, ptr %1, i64 2
  store float %72, ptr %73, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret i32 0
}

declare i32 @gs_currentrgbcolor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
