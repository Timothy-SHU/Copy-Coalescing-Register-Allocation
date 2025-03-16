; ModuleID = 'spcxd.c'
source_filename = "spcxd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }

@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_PCXD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_stream_state, ptr null, ptr @s_PCXD_process, i32 2, i32 63, ptr null, ptr null, ptr null }, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_PCXD_process(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = ptrtoint ptr %11 to i64
  br label %13

13:                                               ; preds = %40, %4
  %14 = phi ptr [ %7, %4 ], [ %41, %40 ]
  %15 = phi ptr [ %5, %4 ], [ %42, %40 ]
  %16 = phi i32 [ 0, %4 ], [ %43, %40 ]
  %17 = icmp ult ptr %15, %9
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !14
  %21 = zext i8 %20 to i64
  %22 = icmp ult i8 %20, -64
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = icmp ult ptr %14, %11
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %20, ptr %26, align 1, !tbaa !14
  br label %40

27:                                               ; preds = %18
  %28 = icmp ult ptr %19, %9
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = add nuw nsw i64 %21, 4294967104
  %31 = and i64 %30, 4294967295
  %32 = ptrtoint ptr %14 to i64
  %33 = sub i64 %12, %32
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, ptr %14, i64 1
  %37 = getelementptr inbounds i8, ptr %15, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %36, i8 %38, i64 %31, i1 false)
  %39 = getelementptr inbounds i8, ptr %14, i64 %31
  br label %40

40:                                               ; preds = %25, %35, %29, %27, %23
  %41 = phi ptr [ %14, %23 ], [ %14, %27 ], [ %14, %29 ], [ %26, %25 ], [ %39, %35 ]
  %42 = phi ptr [ %15, %23 ], [ %15, %27 ], [ %15, %29 ], [ %19, %25 ], [ %37, %35 ]
  %43 = phi i32 [ 1, %23 ], [ %16, %27 ], [ 1, %29 ], [ %16, %25 ], [ %16, %35 ]
  %44 = phi i1 [ false, %23 ], [ false, %27 ], [ false, %29 ], [ true, %25 ], [ true, %35 ]
  br i1 %44, label %13, label %45

45:                                               ; preds = %40, %13
  %46 = phi ptr [ %41, %40 ], [ %14, %13 ]
  %47 = phi ptr [ %42, %40 ], [ %15, %13 ]
  %48 = phi i32 [ %43, %40 ], [ %16, %13 ]
  store ptr %47, ptr %1, align 8, !tbaa !5
  store ptr %46, ptr %6, align 8, !tbaa !10
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 8}
!11 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!12 = !{!6, !7, i64 8}
!13 = !{!11, !7, i64 16}
!14 = !{!8, !8, i64 0}
