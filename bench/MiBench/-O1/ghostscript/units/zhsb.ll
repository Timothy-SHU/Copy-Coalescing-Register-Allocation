; ModuleID = 'zhsb.c'
source_filename = "zhsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon, %union.anon, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.3, %struct.ref_s, %struct.ref_s }
%union.anon = type { [4 x %struct.ref_s] }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.2 }
%struct.ref_cie_procs_s = type { %union.anon.0, %union.anon.1, %struct.ref_s }
%union.anon.0 = type { %struct.ref_s }
%union.anon.1 = type { %struct.ref_s }
%union.anon.2 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.3 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }

@zhsb_op_defs.op_defs_ = internal constant [3 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcurrenthsbcolor }, %struct.op_def { ptr @.str.1, ptr @zsethsbcolor }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [17 x i8] c"0currenthsbcolor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"3sethsbcolor\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zhsb_op_defs() local_unnamed_addr #0 {
  ret ptr @zhsb_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrenthsbcolor(ptr noundef %0) #1 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #4
  %3 = load ptr, ptr @igs, align 8, !tbaa !5
  %4 = call i32 @gs_currenthsbcolor(ptr noundef %3, ptr noundef nonnull %2) #4
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !9
  %7 = icmp ugt ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 3, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !15
  br label %11

9:                                                ; preds = %1
  store ptr %5, ptr @o_stack, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  call void @make_reals(ptr noundef nonnull %10, ptr noundef nonnull %2, i32 noundef 3) #4
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ -16, %8 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zsethsbcolor(ptr noundef %0) #1 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #4
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 4, !tbaa !17
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !17
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !17
  %14 = fpext float %13 to double
  %15 = call i32 @gs_sethsbcolor(ptr noundef %6, double noundef %8, double noundef %11, double noundef %14) #4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr @igs, align 8, !tbaa !5
  %19 = call ptr @gs_state_client_data(ptr noundef %18) #4
  %20 = getelementptr inbounds %struct.int_gstate_s, ptr %19, i64 0, i32 5
  store i16 3584, ptr %20, align 8, !tbaa !19
  %21 = load ptr, ptr @o_stack, align 8, !tbaa !16
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -3
  store ptr %22, ptr @o_stack, align 8, !tbaa !16
  br label %23

23:                                               ; preds = %1, %5, %17
  %24 = phi i32 [ 0, %17 ], [ %3, %1 ], [ %15, %5 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #4
  ret i32 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_currenthsbcolor(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_reals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_sethsbcolor(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !14, i64 40, !14, i64 44, !11, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !11, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !6, i64 120}
!11 = !{!"ref_s", !12, i64 0, !7, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!10, !14, i64 64}
!16 = !{!10, !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = !{!20, !13, i64 176}
!20 = !{!"int_gstate_s", !11, i64 0, !7, i64 16, !7, i64 80, !11, i64 144, !11, i64 160, !21, i64 176, !11, i64 272, !24, i64 288, !11, i64 368, !11, i64 384}
!21 = !{!"ref_colorspace_s", !11, i64 0, !22, i64 16}
!22 = !{!"ref_color_procs_s", !23, i64 0, !7, i64 48}
!23 = !{!"ref_cie_procs_s", !7, i64 0, !7, i64 16, !11, i64 32}
!24 = !{!"", !11, i64 0, !25, i64 16}
!25 = !{!"ref_cie_render_procs_s", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48}
