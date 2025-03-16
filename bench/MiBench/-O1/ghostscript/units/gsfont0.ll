; ModuleID = 'gsfont0.c'
source_filename = "gsfont0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_font_type0_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, ptr, i32, ptr, i32, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"gs_font_type0\00", align 1
@st_gs_font_type0 = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 352, ptr @.str, ptr null, ptr null, ptr @font_type0_enum_ptrs, ptr @font_type0_reloc_ptrs, ptr @gs_font_finalize }, align 8
@st_gs_font = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_gs_font_ptr_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"gs_type0_adjust_font(FDepVector)\00", align 1

; Function Attrs: nounwind uwtable
define internal ptr @font_type0_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  switch i32 %2, label %5 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %15
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_gs_font, i64 0, i32 4), align 8, !tbaa !5
  %7 = add i32 %2, -3
  %8 = tail call ptr %6(ptr noundef %0, i32 noundef %1, i32 noundef %7, ptr noundef %3) #3
  br label %24

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gs_font_type0_s, ptr %0, i64 0, i32 18, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  store ptr %11, ptr %3, align 8, !tbaa !20
  br label %24

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gs_font_type0_s, ptr %0, i64 0, i32 18, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  store ptr %14, ptr %3, align 8, !tbaa !20
  br label %24

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.gs_font_type0_s, ptr %0, i64 0, i32 18
  %17 = load i32, ptr %16, align 8, !tbaa !22
  switch i32 %17, label %23 [
    i32 6, label %18
    i32 9, label %20
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.gs_font_type0_s, ptr %0, i64 0, i32 18, i32 4
  store ptr %19, ptr %3, align 8, !tbaa !20
  br label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gs_font_type0_s, ptr %0, i64 0, i32 18, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  store ptr %22, ptr %3, align 8, !tbaa !20
  br label %24

23:                                               ; preds = %15
  store ptr null, ptr %3, align 8, !tbaa !20
  br label %24

24:                                               ; preds = %5, %9, %12, %18, %20, %23
  %25 = phi ptr [ %8, %5 ], [ @ptr_struct_procs, %23 ], [ @ptr_struct_procs, %20 ], [ @ptr_const_string_procs, %18 ], [ @ptr_struct_procs, %12 ], [ @ptr_struct_procs, %9 ]
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define internal void @font_type0_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_gs_font, i64 0, i32 5), align 8, !tbaa !24
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3
  %5 = getelementptr inbounds %struct.gs_font_type0_s, ptr %0, i64 0, i32 18
  %6 = getelementptr inbounds %struct.gs_font_type0_s, ptr %0, i64 0, i32 18, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #3
  store ptr %8, ptr %6, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.gs_font_type0_s, ptr %0, i64 0, i32 18, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %10, ptr noundef %2) #3
  store ptr %11, ptr %9, align 8, !tbaa !21
  %12 = load i32, ptr %5, align 8, !tbaa !22
  switch i32 %12, label %19 [
    i32 6, label %13
    i32 9, label %15
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.gs_font_type0_s, ptr %0, i64 0, i32 18, i32 4
  tail call void @gs_reloc_const_string(ptr noundef nonnull %14, ptr noundef %2) #3
  br label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.gs_font_type0_s, ptr %0, i64 0, i32 18, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %17, ptr noundef %2) #3
  store ptr %18, ptr %16, align 8, !tbaa !23
  br label %19

19:                                               ; preds = %3, %15, %13
  ret void
}

declare void @gs_font_finalize(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_type0_define_font(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 6
  %4 = load float, ptr %3, align 4, !tbaa !25
  %5 = fcmp oeq float %4, 1.000000e+00
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 6, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !26
  %9 = fcmp oeq float %8, 1.000000e+00
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 6, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !27
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 6, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !28
  %17 = fcmp oeq float %16, 0.000000e+00
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 6, i32 4
  %20 = load float, ptr %19, align 4, !tbaa !29
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 6, i32 5
  %24 = load float, ptr %23, align 4, !tbaa !30
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %80, label %26

26:                                               ; preds = %22, %18, %14, %10, %6, %2
  %27 = getelementptr inbounds %struct.gs_font_type0_s, ptr %1, i64 0, i32 18, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.gs_font_type0_s, ptr %1, i64 0, i32 18, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !31
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %26
  %33 = zext i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %41
  %35 = phi i64 [ 0, %32 ], [ %42, %41 ]
  %36 = getelementptr inbounds ptr, ptr %28, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !20
  %38 = getelementptr inbounds %struct.gs_font_s, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = add nuw nsw i64 %35, 1
  %43 = icmp eq i64 %42, %33
  br i1 %43, label %46, label %34, !llvm.loop !34

44:                                               ; preds = %34
  %45 = trunc i64 %35 to i32
  br label %46

46:                                               ; preds = %44, %41, %26
  %47 = phi i32 [ 0, %26 ], [ %45, %44 ], [ %30, %41 ]
  %48 = icmp eq i32 %47, %30
  br i1 %48, label %80, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.gs_font_type0_s, ptr %1, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !36
  %52 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !37
  %54 = tail call ptr %53(ptr noundef %51, i32 noundef %30, ptr noundef nonnull @st_gs_font_ptr_element, ptr noundef nonnull @.str.1) #3
  %55 = icmp eq ptr %54, null
  br i1 %55, label %80, label %56

56:                                               ; preds = %49
  %57 = zext i32 %30 to i64
  %58 = shl nuw nsw i64 %57, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %54, ptr align 8 %28, i64 %58, i1 false)
  %59 = icmp ult i32 %47, %30
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = zext i32 %47 to i64
  br label %62

62:                                               ; preds = %75, %60
  %63 = phi i64 [ %61, %60 ], [ %77, %75 ]
  %64 = phi i32 [ undef, %60 ], [ %76, %75 ]
  %65 = getelementptr inbounds ptr, ptr %28, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !20
  %67 = getelementptr inbounds %struct.gs_font_s, ptr %66, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = getelementptr inbounds ptr, ptr %54, i64 %63
  %72 = tail call i32 @gs_makefont(ptr noundef %0, ptr noundef %66, ptr noundef nonnull %3, ptr noundef nonnull %71) #3
  %73 = icmp sgt i32 %72, -1
  %74 = select i1 %73, i32 %64, i32 %72
  br i1 %73, label %75, label %80

75:                                               ; preds = %70, %62
  %76 = phi i32 [ %74, %70 ], [ %64, %62 ]
  %77 = add nuw nsw i64 %63, 1
  %78 = icmp eq i64 %77, %57
  br i1 %78, label %79, label %62, !llvm.loop !40

79:                                               ; preds = %75, %56
  store ptr %54, ptr %27, align 8, !tbaa !21
  br label %80

80:                                               ; preds = %70, %79, %49, %46, %22
  %81 = phi i32 [ 0, %22 ], [ 0, %79 ], [ 0, %46 ], [ -25, %49 ], [ %74, %70 ]
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_type0_make_font(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.gs_font_type0_s, ptr %5, i64 0, i32 18, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.gs_font_type0_s, ptr %5, i64 0, i32 18, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !31
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %4
  %12 = zext i32 %9 to i64
  br label %13

13:                                               ; preds = %11, %20
  %14 = phi i64 [ 0, %11 ], [ %21, %20 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.gs_font_s, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = add nuw nsw i64 %14, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %25, label %13, !llvm.loop !34

23:                                               ; preds = %13
  %24 = trunc i64 %14 to i32
  br label %25

25:                                               ; preds = %23, %20, %4
  %26 = phi i32 [ 0, %4 ], [ %24, %23 ], [ %9, %20 ]
  %27 = icmp eq i32 %26, %9
  br i1 %27, label %59, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.gs_font_type0_s, ptr %5, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !36
  %31 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !37
  %33 = tail call ptr %32(ptr noundef %30, i32 noundef %9, ptr noundef nonnull @st_gs_font_ptr_element, ptr noundef nonnull @.str.1) #3
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %28
  %36 = zext i32 %9 to i64
  %37 = shl nuw nsw i64 %36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %33, ptr align 8 %7, i64 %37, i1 false)
  %38 = icmp ult i32 %26, %9
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = zext i32 %26 to i64
  br label %41

41:                                               ; preds = %54, %39
  %42 = phi i64 [ %40, %39 ], [ %56, %54 ]
  %43 = phi i32 [ undef, %39 ], [ %55, %54 ]
  %44 = getelementptr inbounds ptr, ptr %7, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !20
  %46 = getelementptr inbounds %struct.gs_font_s, ptr %45, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = getelementptr inbounds ptr, ptr %33, i64 %42
  %51 = tail call i32 @gs_makefont(ptr noundef %0, ptr noundef %45, ptr noundef %2, ptr noundef nonnull %50) #3
  %52 = icmp sgt i32 %51, -1
  %53 = select i1 %52, i32 %43, i32 %51
  br i1 %52, label %54, label %59

54:                                               ; preds = %49, %41
  %55 = phi i32 [ %53, %49 ], [ %43, %41 ]
  %56 = add nuw nsw i64 %42, 1
  %57 = icmp eq i64 %56, %36
  br i1 %57, label %58, label %41, !llvm.loop !40

58:                                               ; preds = %54, %35
  store ptr %33, ptr %6, align 8, !tbaa !21
  br label %59

59:                                               ; preds = %49, %25, %28, %58
  %60 = phi i32 [ 0, %58 ], [ 0, %25 ], [ -25, %28 ], [ %53, %49 ]
  ret i32 %60
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @gs_makefont(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 32}
!6 = !{!"gs_memory_struct_type_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!12, !10, i64 312}
!12 = !{!"gs_font_type0_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !13, i64 48, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !14, i64 100, !15, i64 104, !17, i64 176, !17, i64 228, !18, i64 280}
!13 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!14 = !{!"float", !8, i64 0}
!15 = !{!"gs_font_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !16, i64 32, !10, i64 48, !10, i64 56, !10, i64 64}
!16 = !{!"gx_xfont_callbacks_s", !10, i64 0, !10, i64 8}
!17 = !{!"gs_font_name_s", !8, i64 0, !7, i64 48}
!18 = !{!"gs_type0_data_s", !7, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !19, i64 8, !7, i64 24, !7, i64 28, !10, i64 32, !7, i64 40, !10, i64 48, !7, i64 56, !10, i64 64}
!19 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!20 = !{!10, !10, i64 0}
!21 = !{!12, !10, i64 328}
!22 = !{!12, !7, i64 280}
!23 = !{!12, !10, i64 344}
!24 = !{!6, !10, i64 40}
!25 = !{!13, !14, i64 0}
!26 = !{!13, !14, i64 12}
!27 = !{!13, !14, i64 4}
!28 = !{!13, !14, i64 8}
!29 = !{!13, !14, i64 16}
!30 = !{!13, !14, i64 20}
!31 = !{!12, !7, i64 336}
!32 = !{!33, !7, i64 72}
!33 = !{!"gs_font_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !13, i64 48, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !14, i64 100, !15, i64 104, !17, i64 176, !17, i64 228}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!12, !10, i64 16}
!37 = !{!38, !10, i64 48}
!38 = !{!"gs_memory_s", !39, i64 0}
!39 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!40 = distinct !{!40, !35}
