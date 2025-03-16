; ModuleID = 'gxdcconv.c'
source_filename = "gxdcconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, ptr, i64, [256 x i16] }
%struct.rc_header_s = type { i64, ptr, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @color_rgb_to_gray(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = sext i16 %0 to i64
  %6 = mul nsw i64 %5, 30
  %7 = sext i16 %1 to i64
  %8 = mul nsw i64 %7, 59
  %9 = sext i16 %2 to i64
  %10 = mul nsw i64 %9, 11
  %11 = add nsw i64 %6, 50
  %12 = add nsw i64 %11, %8
  %13 = add nsw i64 %12, %10
  %14 = udiv i64 %13, 100
  %15 = trunc i64 %14 to i16
  ret i16 %15
}

; Function Attrs: nounwind uwtable
define dso_local void @color_rgb_to_cmyk(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = sub i16 32760, %0
  %7 = sub i16 32760, %1
  %8 = sub i16 32760, %2
  %9 = tail call i16 @llvm.smin.i16(i16 %6, i16 %7)
  %10 = tail call i16 @llvm.smin.i16(i16 %9, i16 %8)
  %11 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %12, i64 0, i32 3
  %16 = tail call signext i16 @gx_color_frac_map(i16 noundef signext %10, ptr noundef nonnull %15) #5
  br label %17

17:                                               ; preds = %5, %14
  %18 = phi i16 [ %16, %14 ], [ 0, %5 ]
  %19 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %20, i64 0, i32 3
  %24 = tail call signext i16 @gx_color_frac_map(i16 noundef signext %10, ptr noundef nonnull %23) #5
  %25 = sext i16 %24 to i32
  br label %26

26:                                               ; preds = %17, %22
  %27 = phi i32 [ %25, %22 ], [ 0, %17 ]
  %28 = icmp eq i32 %27, 32760
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds i16, ptr %4, i64 2
  store i16 0, ptr %30, align 2, !tbaa !19
  %31 = getelementptr inbounds i16, ptr %4, i64 1
  store i16 0, ptr %31, align 2, !tbaa !19
  store i16 0, ptr %4, align 2, !tbaa !19
  br label %68

32:                                               ; preds = %26
  %33 = sub nsw i32 32760, %27
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %34, 3.276000e+04
  %36 = sitofp i16 %0 to float
  %37 = fdiv float %36, %35
  %38 = fsub float 3.276000e+04, %37
  %39 = fcmp olt float %38, 0.000000e+00
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = fcmp oge float %38, 3.276000e+04
  %42 = select i1 %41, float 3.276000e+04, float %38
  %43 = fptosi float %42 to i16
  br label %44

44:                                               ; preds = %32, %40
  %45 = phi i16 [ %43, %40 ], [ 0, %32 ]
  store i16 %45, ptr %4, align 2, !tbaa !19
  %46 = sitofp i16 %1 to float
  %47 = fdiv float %46, %35
  %48 = fsub float 3.276000e+04, %47
  %49 = fcmp olt float %48, 0.000000e+00
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = fcmp oge float %48, 3.276000e+04
  %52 = select i1 %51, float 3.276000e+04, float %48
  %53 = fptosi float %52 to i16
  br label %54

54:                                               ; preds = %44, %50
  %55 = phi i16 [ %53, %50 ], [ 0, %44 ]
  %56 = getelementptr inbounds i16, ptr %4, i64 1
  store i16 %55, ptr %56, align 2, !tbaa !19
  %57 = sitofp i16 %2 to float
  %58 = fdiv float %57, %35
  %59 = fsub float 3.276000e+04, %58
  %60 = fcmp olt float %59, 0.000000e+00
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = fcmp oge float %59, 3.276000e+04
  %63 = select i1 %62, float 3.276000e+04, float %59
  %64 = fptosi float %63 to i16
  br label %65

65:                                               ; preds = %54, %61
  %66 = phi i16 [ %64, %61 ], [ 0, %54 ]
  %67 = getelementptr inbounds i16, ptr %4, i64 2
  store i16 %66, ptr %67, align 2, !tbaa !19
  br label %68

68:                                               ; preds = %65, %29
  %69 = getelementptr inbounds i16, ptr %4, i64 3
  store i16 %18, ptr %69, align 2, !tbaa !19
  ret void
}

declare signext i16 @gx_color_frac_map(i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @color_cmyk_to_gray(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  %6 = sext i16 %0 to i64
  %7 = mul nsw i64 %6, 30
  %8 = sext i16 %1 to i64
  %9 = mul nsw i64 %8, 59
  %10 = sext i16 %2 to i64
  %11 = mul nsw i64 %10, 11
  %12 = add nsw i64 %7, 50
  %13 = add nsw i64 %12, %9
  %14 = add nsw i64 %13, %11
  %15 = udiv i64 %14, 100
  %16 = trunc i64 %15 to i16
  %17 = sext i16 %16 to i32
  %18 = sext i16 %3 to i32
  %19 = sub nsw i32 32760, %18
  %20 = icmp slt i32 %19, %17
  %21 = add i16 %16, %3
  %22 = sub i16 32760, %21
  %23 = select i1 %20, i16 0, i16 %22
  ret i16 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @color_cmyk_to_rgb(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, ptr nocapture noundef readnone %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  switch i16 %3, label %16 [
    i16 0, label %7
    i16 32760, label %13
  ]

7:                                                ; preds = %6
  %8 = sub i16 32760, %0
  store i16 %8, ptr %5, align 2, !tbaa !19
  %9 = sub i16 32760, %1
  %10 = getelementptr inbounds i16, ptr %5, i64 1
  store i16 %9, ptr %10, align 2, !tbaa !19
  %11 = sub i16 32760, %2
  %12 = getelementptr inbounds i16, ptr %5, i64 2
  store i16 %11, ptr %12, align 2, !tbaa !19
  br label %48

13:                                               ; preds = %6
  %14 = getelementptr inbounds i16, ptr %5, i64 2
  store i16 0, ptr %14, align 2, !tbaa !19
  %15 = getelementptr inbounds i16, ptr %5, i64 1
  store i16 0, ptr %15, align 2, !tbaa !19
  store i16 0, ptr %5, align 2, !tbaa !19
  br label %48

16:                                               ; preds = %6
  %17 = sext i16 %3 to i64
  %18 = sub nsw i64 32760, %17
  %19 = sext i16 %0 to i64
  %20 = sub nsw i64 32760, %19
  %21 = mul nsw i64 %18, %20
  %22 = lshr i64 %21, 3
  %23 = lshr i64 %21, 15
  %24 = add nuw nsw i64 %23, 1
  %25 = add nuw nsw i64 %24, %22
  %26 = lshr i64 %25, 12
  %27 = trunc i64 %26 to i16
  store i16 %27, ptr %5, align 2, !tbaa !19
  %28 = sext i16 %1 to i64
  %29 = sub nsw i64 32760, %28
  %30 = mul nsw i64 %18, %29
  %31 = lshr i64 %30, 3
  %32 = lshr i64 %30, 15
  %33 = add nuw nsw i64 %32, 1
  %34 = add nuw nsw i64 %33, %31
  %35 = lshr i64 %34, 12
  %36 = trunc i64 %35 to i16
  %37 = getelementptr inbounds i16, ptr %5, i64 1
  store i16 %36, ptr %37, align 2, !tbaa !19
  %38 = sext i16 %2 to i64
  %39 = sub nsw i64 32760, %38
  %40 = mul nsw i64 %18, %39
  %41 = lshr i64 %40, 3
  %42 = lshr i64 %40, 15
  %43 = add nuw nsw i64 %42, 1
  %44 = add nuw nsw i64 %43, %41
  %45 = lshr i64 %44, 12
  %46 = trunc i64 %45 to i16
  %47 = getelementptr inbounds i16, ptr %5, i64 2
  store i16 %46, ptr %47, align 2, !tbaa !19
  br label %48

48:                                               ; preds = %16, %13, %7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 216}
!6 = !{!"gs_imager_state_s", !7, i64 0, !10, i64 8, !14, i64 80, !12, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !17, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gx_line_params_s", !11, i64 0, !12, i64 4, !12, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 32}
!11 = !{!"float", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!"gx_dash_params_s", !7, i64 0, !12, i64 8, !11, i64 12, !12, i64 16, !11, i64 20, !12, i64 24, !12, i64 28, !11, i64 32}
!14 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !15, i64 24, !15, i64 32, !12, i64 40}
!15 = !{!"long", !8, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!"gs_fixed_point_s", !15, i64 0, !15, i64 8}
!18 = !{!6, !7, i64 224}
!19 = !{!16, !16, i64 0}
