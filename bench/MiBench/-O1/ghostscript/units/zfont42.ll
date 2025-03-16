; ModuleID = 'zfont42.c'
source_filename = "zfont42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.op_def = type { ptr, ptr }
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_font_type42_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32, %struct.gs_type42_data_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_type42_data_s = type { ptr, ptr, ptr, i64, i32, i32, i32, i64, i32, i64 }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f1 }
%struct._f1 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s }

@.str = private unnamed_addr constant [6 x i8] c"sfnts\00", align 1
@st_gs_font_type42 = external constant %struct.gs_memory_struct_type_s, align 8
@zfont42_op_defs.op_defs_ = internal constant [2 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr @zbuildfont42 }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"2.buildfont42\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%Type42BuildChar\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%Type42BuildGlyph\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @build_gs_TrueType_font(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.build_proc_refs_s, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.ref_s, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %10 = call i32 @build_proc_name_refs(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = call i32 @check_type_failed(ptr noundef %0) #5
  br label %45

18:                                               ; preds = %12
  %19 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %7) #5
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %45, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 8, !tbaa !8
  %23 = call i32 @array_get(ptr noundef %22, i64 noundef 0, ptr noundef nonnull %8) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %8, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = icmp eq i8 %27, 18
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = call i32 @build_gs_primitive_font(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %1, ptr noundef nonnull @st_gs_font_type42, ptr noundef nonnull %6, i32 noundef %4) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load ptr, ptr %9, align 8, !tbaa !8
  %34 = getelementptr inbounds %struct.gs_font_type42_s, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !10
  %36 = getelementptr inbounds %struct.font_data_s, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %7, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !24
  %38 = getelementptr inbounds %struct.gs_font_type42_s, ptr %33, i64 0, i32 22
  store ptr @z42_string_proc, ptr %38, align 8, !tbaa !29
  %39 = getelementptr inbounds %struct.gs_font_type42_s, ptr %33, i64 0, i32 22, i32 1
  store ptr %35, ptr %39, align 8, !tbaa !30
  %40 = call i32 @gs_type42_font_init(ptr noundef %33) #5
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load ptr, ptr %9, align 8, !tbaa !8
  %44 = call i32 @define_gs_font(ptr noundef %43) #5
  br label %45

45:                                               ; preds = %32, %29, %25, %21, %18, %5, %42, %16
  %46 = phi i32 [ %44, %42 ], [ %17, %16 ], [ %10, %5 ], [ -10, %18 ], [ %23, %21 ], [ -20, %25 ], [ %30, %29 ], [ %40, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #5
  ret i32 %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @build_proc_name_refs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @build_gs_primitive_font(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal i32 @z42_string_proc(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.ref_s, align 8
  %6 = getelementptr inbounds %struct.gs_font_type42_s, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.font_data_s, ptr %7, i64 0, i32 5
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = getelementptr inbounds %struct.tas_s, ptr %5, i64 0, i32 1
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  br label %13

13:                                               ; preds = %35, %4
  %14 = phi i64 [ %1, %4 ], [ %36, %35 ]
  %15 = phi i32 [ 0, %4 ], [ %39, %35 ]
  %16 = phi i32 [ undef, %4 ], [ %37, %35 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %17 = zext i32 %15 to i64
  %18 = call i32 @array_get(ptr noundef nonnull %8, i64 noundef %17, ptr noundef nonnull %5) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = load i8, ptr %9, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 18
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i16, ptr %10, align 2, !tbaa !31
  %25 = zext i16 %24 to i64
  %26 = icmp ult i64 %14, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = add nuw nsw i64 %14, %11
  %29 = icmp ugt i64 %28, %25
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %12, align 8, !tbaa !5
  %32 = getelementptr inbounds i8, ptr %31, i64 %14
  store ptr %32, ptr %3, align 8, !tbaa !8
  br label %35

33:                                               ; preds = %23
  %34 = sub i64 %14, %25
  br label %35

35:                                               ; preds = %27, %20, %13, %33, %30
  %36 = phi i64 [ %14, %30 ], [ %34, %33 ], [ %14, %13 ], [ %14, %20 ], [ %14, %27 ]
  %37 = phi i32 [ 0, %30 ], [ %16, %33 ], [ %18, %13 ], [ -20, %20 ], [ -15, %27 ]
  %38 = phi i1 [ false, %30 ], [ true, %33 ], [ false, %13 ], [ false, %20 ], [ false, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  %39 = add i32 %15, 1
  br i1 %38, label %13, label %40, !llvm.loop !34

40:                                               ; preds = %35
  ret i32 %37
}

declare i32 @gs_type42_font_init(ptr noundef) local_unnamed_addr #2

declare i32 @define_gs_font(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfont42_op_defs() local_unnamed_addr #4 {
  ret ptr @zfont42_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont42(ptr noundef %0) #0 {
  %2 = tail call i32 @build_gs_TrueType_font(ptr noundef %0, i32 noundef 42, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 0)
  ret i32 %2
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !9, i64 40}
!11 = !{!"gs_font_type42_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !12, i64 48, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96, !13, i64 100, !15, i64 104, !17, i64 176, !17, i64 228, !18, i64 280, !21, i64 312, !14, i64 328, !14, i64 332, !23, i64 336}
!12 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!13 = !{!"float", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!"gs_font_procs_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !16, i64 32, !9, i64 48, !9, i64 56, !9, i64 64}
!16 = !{!"gx_xfont_callbacks_s", !9, i64 0, !9, i64 8}
!17 = !{!"gs_font_name_s", !6, i64 0, !14, i64 48}
!18 = !{!"gs_rect_s", !19, i64 0, !19, i64 16}
!19 = !{!"gs_point_s", !20, i64 0, !20, i64 8}
!20 = !{!"double", !6, i64 0}
!21 = !{!"gs_uid_s", !22, i64 0, !9, i64 8}
!22 = !{!"long", !6, i64 0}
!23 = !{!"gs_type42_data_s", !9, i64 0, !9, i64 8, !9, i64 16, !22, i64 24, !14, i64 32, !14, i64 36, !14, i64 40, !22, i64 48, !14, i64 56, !22, i64 64}
!24 = !{i64 0, i64 2, !25, i64 2, i64 2, !25, i64 8, i64 8, !27, i64 8, i64 2, !25, i64 8, i64 4, !28, i64 8, i64 8, !27, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8}
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !6, i64 0}
!27 = !{!22, !22, i64 0}
!28 = !{!13, !13, i64 0}
!29 = !{!11, !9, i64 336}
!30 = !{!11, !9, i64 344}
!31 = !{!32, !26, i64 2}
!32 = !{!"ref_s", !33, i64 0, !6, i64 8}
!33 = !{!"tas_s", !26, i64 0, !26, i64 2}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
