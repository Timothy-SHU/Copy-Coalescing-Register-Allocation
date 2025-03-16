; ModuleID = 'seexec.c'
source_filename = "seexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_exE_state_s = type { ptr, ptr, ptr, i16 }
%struct.stream_exD_state_s = type { ptr, ptr, ptr, i16, ptr, i32, i32, i32, i64, i32 }
%struct.stream_PFBD_state_s = type { ptr, ptr, ptr, i32, i32, i64 }

@st_exE_state = internal constant %struct.gs_memory_struct_type_s { i32 32, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_exE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_exE_state, ptr null, ptr @s_exE_process, i32 1, i32 2, ptr null, ptr null, ptr null }, align 8
@st_exD_state = internal constant %struct.gs_memory_struct_type_s { i32 72, ptr @.str.1, ptr null, ptr null, ptr @exd_enum_ptrs, ptr @exd_reloc_ptrs, ptr null }, align 8
@s_exD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_exD_state, ptr @s_exD_init, ptr @s_exD_process, i32 8, i32 200, ptr null, ptr @s_exD_set_defaults, ptr null }, align 8
@.str = private unnamed_addr constant [18 x i8] c"eexecEncode state\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"eexecDecode state\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@scan_char_array = external local_unnamed_addr constant [260 x i8], align 16

; Function Attrs: nounwind uwtable
define internal i32 @s_exE_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %7 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp ugt i32 %13, %19
  %21 = tail call i32 @llvm.umin.i32(i32 %13, i32 %19)
  %22 = zext i1 %20 to i32
  %23 = getelementptr inbounds i8, ptr %7, i64 1
  %24 = getelementptr inbounds i8, ptr %5, i64 1
  %25 = getelementptr inbounds %struct.stream_exE_state_s, ptr %0, i64 0, i32 3
  %26 = tail call i32 @gs_type1_encrypt(ptr noundef nonnull %23, ptr noundef nonnull %24, i32 noundef %21, ptr noundef nonnull %25) #5
  %27 = load ptr, ptr %1, align 8, !tbaa !5
  %28 = zext i32 %21 to i64
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  store ptr %29, ptr %1, align 8, !tbaa !5
  %30 = load ptr, ptr %6, align 8, !tbaa !10
  %31 = getelementptr inbounds i8, ptr %30, i64 %28
  store ptr %31, ptr %6, align 8, !tbaa !10
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @s_exD_init(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 7
  store i32 -1, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 5
  store i32 -1, ptr %3, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 8
  store i64 9223372036854775807, ptr %4, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !21
  %7 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 9
  store i32 %6, ptr %7, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_exD_process(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = ptrtoint ptr %11 to i64
  %13 = ptrtoint ptr %5 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %7 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp slt i32 %21, %15
  %23 = tail call i32 @llvm.smin.i32(i32 %21, i32 %15)
  %24 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !19
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %4
  %28 = icmp sgt i32 %15, 7
  br i1 %28, label %29, label %101

29:                                               ; preds = %27
  store i32 0, ptr %24, align 8, !tbaa !19
  br label %33

30:                                               ; preds = %33
  %31 = add nuw nsw i64 %34, 1
  %32 = icmp eq i64 %31, 9
  br i1 %32, label %51, label %33, !llvm.loop !23

33:                                               ; preds = %29, %30
  %34 = phi i64 [ 1, %29 ], [ %31, %30 ]
  %35 = getelementptr inbounds i8, ptr %5, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !25
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !25
  %40 = icmp ult i8 %39, 16
  %41 = icmp eq i8 %39, 102
  %42 = or i1 %40, %41
  br i1 %42, label %30, label %43

43:                                               ; preds = %33
  store i32 1, ptr %24, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !26
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.stream_PFBD_state_s, ptr %45, i64 0, i32 5
  %49 = load i64, ptr %48, align 8, !tbaa !27
  %50 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 8
  store i64 %49, ptr %50, align 8, !tbaa !20
  br label %51

51:                                               ; preds = %30, %43, %47, %4
  %52 = load i32, ptr %24, align 8, !tbaa !19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %51
  %55 = sext i32 %23 to i64
  %56 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 8
  %57 = load i64, ptr %56, align 8, !tbaa !20
  %58 = icmp sge i64 %57, %55
  %59 = trunc i64 %57 to i32
  %60 = select i1 %58, i1 %22, i1 false
  %61 = zext i1 %60 to i32
  %62 = select i1 %58, i32 %23, i32 %59
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %57, %63
  %65 = icmp eq i64 %57, %63
  %66 = select i1 %65, i64 9223372036854775807, i64 %64
  store i64 %66, ptr %56, align 8, !tbaa !20
  %67 = getelementptr inbounds i8, ptr %5, i64 %63
  store ptr %67, ptr %1, align 8, !tbaa !5
  br label %75

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 7
  %70 = tail call i32 @s_hex_process(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %69, i32 noundef 2) #5
  %71 = load ptr, ptr %6, align 8, !tbaa !10
  %72 = ptrtoint ptr %71 to i64
  %73 = sub i64 %72, %19
  %74 = trunc i64 %73 to i32
  br label %75

75:                                               ; preds = %68, %54
  %76 = phi ptr [ %5, %54 ], [ %7, %68 ]
  %77 = phi i32 [ %61, %54 ], [ %70, %68 ]
  %78 = phi i32 [ %62, %54 ], [ %74, %68 ]
  %79 = icmp sge i32 %9, %78
  %80 = icmp ne i32 %9, 0
  %81 = and i1 %80, %79
  %82 = getelementptr inbounds i8, ptr %7, i64 1
  %83 = getelementptr inbounds i8, ptr %76, i64 1
  %84 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 3
  br i1 %81, label %85, label %89

85:                                               ; preds = %75
  %86 = tail call i32 @gs_type1_decrypt(ptr noundef nonnull %82, ptr noundef nonnull %83, i32 noundef %78, ptr noundef nonnull %84) #5
  %87 = load i32, ptr %8, align 8, !tbaa !22
  %88 = sub nsw i32 %87, %78
  br label %96

89:                                               ; preds = %75
  %90 = tail call i32 @gs_type1_decrypt(ptr noundef nonnull %82, ptr noundef nonnull %83, i32 noundef %9, ptr noundef nonnull %84) #5
  %91 = sub nsw i32 %78, %9
  %92 = sext i32 %9 to i64
  %93 = getelementptr inbounds i8, ptr %83, i64 %92
  %94 = tail call i32 @gs_type1_decrypt(ptr noundef nonnull %82, ptr noundef nonnull %93, i32 noundef %91, ptr noundef nonnull %84) #5
  %95 = sext i32 %91 to i64
  br label %96

96:                                               ; preds = %89, %85
  %97 = phi i32 [ 0, %89 ], [ %88, %85 ]
  %98 = phi i32 [ %77, %89 ], [ 0, %85 ]
  %99 = phi i64 [ %95, %89 ], [ 0, %85 ]
  store i32 %97, ptr %8, align 8, !tbaa !22
  %100 = getelementptr inbounds i8, ptr %7, i64 %99
  store ptr %100, ptr %6, align 8, !tbaa !10
  br label %101

101:                                              ; preds = %27, %96
  %102 = phi i32 [ %98, %96 ], [ 0, %27 ]
  ret i32 %102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @s_exD_set_defaults(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 6
  store i32 4, ptr %2, align 4, !tbaa !21
  ret void
}

declare i32 @gs_type1_encrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @exd_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  store ptr %8, ptr %3, align 8, !tbaa !29
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @exd_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stream_exD_state_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #5
  store ptr %6, ptr %4, align 8, !tbaa !26
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @s_hex_process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_type1_decrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!14 = !{!15, !17, i64 48}
!15 = !{!"stream_exD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !16, i64 24, !7, i64 32, !17, i64 40, !17, i64 44, !17, i64 48, !18, i64 56, !17, i64 64}
!16 = !{!"short", !8, i64 0}
!17 = !{!"int", !8, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!15, !17, i64 40}
!20 = !{!15, !18, i64 56}
!21 = !{!15, !17, i64 44}
!22 = !{!15, !17, i64 64}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!8, !8, i64 0}
!26 = !{!15, !7, i64 32}
!27 = !{!28, !18, i64 32}
!28 = !{!"stream_PFBD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !17, i64 24, !17, i64 28, !18, i64 32}
!29 = !{!7, !7, i64 0}
