; ModuleID = 'ldecod_src/errorconcealment.c'
source_filename = "ldecod_src/errorconcealment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@switch.table.get_concealed_element = private unnamed_addr constant [18 x i32] [i32 31, i32 1, i32 1, i32 1, i32 1, i32 1, i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @set_ec_flag(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %39 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
    i32 3, label %9
    i32 4, label %11
    i32 5, label %23
    i32 6, label %13
    i32 7, label %15
    i32 8, label %17
    i32 9, label %19
    i32 10, label %21
    i32 11, label %25
    i32 12, label %27
    i32 13, label %29
    i32 14, label %31
    i32 15, label %33
    i32 16, label %35
    i32 17, label %37
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143
  store i32 1, ptr %4, align 8, !tbaa !6
  br label %5

5:                                                ; preds = %2, %3
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 1
  store i32 1, ptr %6, align 4, !tbaa !6
  br label %7

7:                                                ; preds = %2, %5
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 2
  store i32 1, ptr %8, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %2, %7
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 3
  store i32 1, ptr %10, align 4, !tbaa !6
  br label %23

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 4
  store i32 1, ptr %12, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %2, %11
  %14 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 6
  store i32 1, ptr %14, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %2, %13
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 7
  store i32 1, ptr %16, align 4, !tbaa !6
  br label %17

17:                                               ; preds = %2, %15
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 8
  store i32 1, ptr %18, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %2, %17
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 9
  store i32 1, ptr %20, align 4, !tbaa !6
  br label %21

21:                                               ; preds = %2, %19
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 10
  store i32 1, ptr %22, align 8, !tbaa !6
  br label %39

23:                                               ; preds = %2, %9
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 5
  store i32 1, ptr %24, align 4, !tbaa !6
  br label %25

25:                                               ; preds = %23, %2
  %26 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 11
  store i32 1, ptr %26, align 4, !tbaa !6
  br label %27

27:                                               ; preds = %2, %25
  %28 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 12
  store i32 1, ptr %28, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %2, %27
  %30 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 13
  store i32 1, ptr %30, align 4, !tbaa !6
  br label %31

31:                                               ; preds = %2, %29
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 14
  store i32 1, ptr %32, align 8, !tbaa !6
  br label %33

33:                                               ; preds = %2, %31
  %34 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 15
  store i32 1, ptr %34, align 4, !tbaa !6
  br label %39

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 16
  store i32 1, ptr %36, align 8, !tbaa !6
  br label %39

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 17
  store i32 1, ptr %38, align 4, !tbaa !6
  br label %39

39:                                               ; preds = %2, %37, %35, %33, %21
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @reset_ec_flags(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i64 856528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %2, i8 0, i64 80, i1 false), !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @get_concealed_element(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %1, align 8, !tbaa !10
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = icmp ult i32 %3, 18
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = zext nneg i32 %3 to i64
  %12 = getelementptr inbounds [18 x i32], ptr @switch.table.get_concealed_element, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 3
  store i32 %13, ptr %14, align 4, !tbaa !13
  %15 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 4
  store i32 0, ptr %15, align 8, !tbaa !14
  br label %16

16:                                               ; preds = %8, %10, %2
  %17 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 1, %10 ]
  ret i32 %17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"syntaxelement", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !12, i64 40}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!11, !7, i64 12}
!14 = !{!11, !7, i64 16}
