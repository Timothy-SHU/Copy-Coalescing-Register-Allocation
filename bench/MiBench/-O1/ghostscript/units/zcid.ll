; ModuleID = 'zcid.c'
source_filename = "zcid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }

@zcid_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zbuildfont9 }, %struct.op_def { ptr @.str.1, ptr @zbuildfont10 }, %struct.op_def { ptr @.str.2, ptr @zbuildfont11 }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [13 x i8] c"2.buildfont9\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"2.buildfont10\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"2.buildfont11\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%Type9BuildGlyph\00", align 1
@st_gs_font_base = external constant %struct.gs_memory_struct_type_s, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"%Type11BuildGlyph\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zcid_op_defs() local_unnamed_addr #0 {
  ret ptr @zcid_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont9(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.build_proc_refs_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #4
  %4 = call i32 @build_proc_name_refs(ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @.str.3) #4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = call i32 @check_type_failed(ptr noundef %0) #4
  br label %18

12:                                               ; preds = %6
  %13 = call i32 @build_gs_simple_font(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 9, ptr noundef nonnull @st_gs_font_base, ptr noundef nonnull %3, i32 noundef 7) #4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !tbaa !8
  %17 = call i32 @define_gs_font(ptr noundef %16) #4
  br label %18

18:                                               ; preds = %10, %12, %15
  %19 = phi i32 [ %17, %15 ], [ %11, %10 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  br label %20

20:                                               ; preds = %1, %18
  %21 = phi i32 [ %19, %18 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont10(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.build_proc_refs_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #4
  %4 = call i32 @build_gs_font_procs(ptr noundef %0, ptr noundef nonnull %3) #4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  store i16 3584, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = call i32 @check_type_failed(ptr noundef %0) #4
  br label %18

12:                                               ; preds = %6
  %13 = call i32 @build_gs_simple_font(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10, ptr noundef nonnull @st_gs_font_base, ptr noundef nonnull %3, i32 noundef 7) #4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !tbaa !8
  %17 = call i32 @define_gs_font(ptr noundef %16) #4
  br label %18

18:                                               ; preds = %10, %12, %15
  %19 = phi i32 [ %17, %15 ], [ %11, %10 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  br label %20

20:                                               ; preds = %1, %18
  %21 = phi i32 [ %19, %18 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont11(ptr noundef %0) #1 {
  %2 = tail call i32 @build_gs_TrueType_font(ptr noundef %0, i32 noundef 11, ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 15) #4
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @build_proc_name_refs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @build_gs_simple_font(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @define_gs_font(ptr noundef) local_unnamed_addr #3

declare i32 @build_gs_font_procs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @build_gs_TrueType_font(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !14, i64 0}
!11 = !{!"build_proc_refs_s", !12, i64 0, !12, i64 16}
!12 = !{!"ref_s", !13, i64 0, !6, i64 8}
!13 = !{!"tas_s", !14, i64 0, !14, i64 2}
!14 = !{!"short", !6, i64 0}
