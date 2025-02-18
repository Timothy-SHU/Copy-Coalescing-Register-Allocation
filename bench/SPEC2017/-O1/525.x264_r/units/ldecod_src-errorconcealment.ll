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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @set_ec_flag(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %16 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
    i32 3, label %9
    i32 4, label %12
    i32 5, label %14
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143
  store i32 1, ptr %4, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %3
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 1
  store i32 1, ptr %6, align 4, !tbaa !34
  br label %7

7:                                                ; preds = %2, %5
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 2
  store i32 1, ptr %8, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %2, %7
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 3
  store i32 1, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 5
  store i32 1, ptr %11, align 4, !tbaa !34
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 4
  store i32 1, ptr %13, align 8, !tbaa !34
  br label %16

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 5
  store i32 1, ptr %15, align 4, !tbaa !34
  br label %16

16:                                               ; preds = %2, %14, %12, %9
  %17 = phi i32 [ %1, %2 ], [ 11, %14 ], [ 6, %12 ], [ 11, %9 ]
  switch i32 %17, label %42 [
    i32 6, label %18
    i32 7, label %20
    i32 8, label %22
    i32 9, label %24
    i32 10, label %26
    i32 11, label %28
    i32 12, label %30
    i32 13, label %32
    i32 14, label %34
    i32 15, label %36
    i32 16, label %38
    i32 17, label %40
  ]

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 6
  store i32 1, ptr %19, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %16, %18
  %21 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 7
  store i32 1, ptr %21, align 4, !tbaa !34
  br label %22

22:                                               ; preds = %16, %20
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 8
  store i32 1, ptr %23, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %16, %22
  %25 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 9
  store i32 1, ptr %25, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %16, %24
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 10
  store i32 1, ptr %27, align 8, !tbaa !34
  br label %42

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 11
  store i32 1, ptr %29, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %16, %28
  %31 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 12
  store i32 1, ptr %31, align 8, !tbaa !34
  br label %32

32:                                               ; preds = %16, %30
  %33 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 13
  store i32 1, ptr %33, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %16, %32
  %35 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 14
  store i32 1, ptr %35, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %16, %34
  %37 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 15
  store i32 1, ptr %37, align 4, !tbaa !34
  br label %42

38:                                               ; preds = %16
  %39 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 16
  store i32 1, ptr %39, align 8, !tbaa !34
  br label %42

40:                                               ; preds = %16
  %41 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 17
  store i32 1, ptr %41, align 4, !tbaa !34
  br label %42

42:                                               ; preds = %16, %40, %38, %36, %26
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @reset_ec_flags(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i64 856528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %2, i8 0, i64 80, i1 false), !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @get_concealed_element(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %1, align 8, !tbaa !38
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 143, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !34
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
  store i32 %13, ptr %14, align 4, !tbaa !41
  %15 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 4
  store i32 0, ptr %15, align 8, !tbaa !42
  br label %16

16:                                               ; preds = %8, %10, %2
  %17 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 1, %10 ]
  ret i32 %17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"syntaxelement", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !40, i64 32, !40, i64 40}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!39, !35, i64 12}
!42 = !{!39, !35, i64 16}
